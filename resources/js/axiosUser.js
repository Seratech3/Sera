import axios from 'axios';
import router from './routes';
import store from './storeUser';




let locale = localStorage.getItem('locale') || 'en';

axios.defaults.baseURL = `http://127.0.0.1:8000/${locale}/user/`;

axios.defaults.headers.common['Accept-Language'] = locale;

const api = axios.create({
    baseURL: `http://127.0.0.1:8000/${locale}/user/`,
    headers: {
        'Accept-Language': locale,
    }
});

function setLanguage(newLocale) {
    locale = newLocale;
    localStorage.setItem('locale', newLocale);

    axios.defaults.headers.common['Accept-Language'] = newLocale;
    api.defaults.headers['Accept-Language'] = newLocale;

    const newBaseURL = `http://127.0.0.1:8000/${newLocale}/user/`;
    axios.defaults.baseURL = newBaseURL;
    api.defaults.baseURL = newBaseURL;
}


const authApi = (config = {}) => {
    const token = localStorage.getItem('authToken'); 
    if (token) {
        config.headers = {
            ...config.headers,
            Authorization: `Bearer ${token}`,
            'Accept-Language': locale,
        };
    } else {
        config.headers = {
            ...config.headers,
            'Accept-Language': locale, 
        };
    }
    return api(config);
};

api.interceptors.response.use(
    (response) => response,
    (error) => {
        if (error.response && error.response.status === 401) {
            const currentPath = router.currentRoute.value.path;
            if (currentPath.includes('/app')) {
                router.push({ path: `/login` }); 
            } else {
                router.push({ path: `/${locale}/login` }); 
            }
        }
        return Promise.reject(error);
    }
);





export { api, authApi, setLanguage };
