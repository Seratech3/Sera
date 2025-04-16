import axios from 'axios';
import router from './routes';

// إعداد قاعدة URL
axios.defaults.baseURL = 'http://127.0.0.1:8000/web/';

// إعداد رمز التفويض
const token = localStorage.getItem('authToken');
if (token) {
  axios.defaults.headers.common['authorization'] = `Bearer ${token}`;
} else {
  console.warn('Authorization token is missing.');
}

// إعداد اللغة
const locale = localStorage.getItem('locale') || 'en';
axios.defaults.headers.common['Accept-Language'] = locale;

// اعتراض استجابات Axios
axios.interceptors.response.use(
  (response) => {
    return response; // تمرير الاستجابة الأصلية
  },
  (error) => {
    if (error.response && error.response.status === 401) {
      // الحصول على المسار الحالي
      const currentPath = router.currentRoute.value.path;

      // التحقق مما إذا كان الرابط يحتوي على "/admin"
      if (currentPath.includes('/dashboard') ) {
        router.push({ path: `/admin/login` }); // إعادة التوجيه إلى رابط المسؤول
      } else {
        router.push({ path: `/${locale}/login` }); // إعادة التوجيه إلى رابط المستخدم العادي
      }
    }
    return Promise.reject(error); // تمرير الخطأ للمعالجة
  }
);

export default axios;
