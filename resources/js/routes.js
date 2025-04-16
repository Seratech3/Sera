import { createRouter, createWebHistory } from 'vue-router';
import adminRoutes from './adminRoutes';
// import userRoutes from './userRoutes';
import publicRoutes from './publicRoutes';

const routes = [
  {
    path: '/:locale',
    component: {
      template: '<router-view />',
    },
    children: [
      ...publicRoutes,
      ...adminRoutes,
      // ...userRoutes,
    ],
  },
  {
    path: '/',
    redirect: '/en' 
  }
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

router.beforeEach((to, from, next) => {
  const locale = to.params.locale || 'en';

  // التحقق من صلاحية اللغة
  if (!['en', 'ar'].includes(locale)) {
    return next('/en');
  }

  localStorage.setItem('locale', locale);
  axios.defaults.headers.common['Accept-Language'] = locale;

  const isAuthenticated = localStorage.getItem('authToken');

  if (to.meta.requiresAuth && !isAuthenticated) {
    let url = window.location.origin;

    if (to.path.includes('/dashboard')) {
      window.open(`${url}/${locale}/admin/login`, "_self");
    } else if (to.path.includes('/app')) {
      window.open(`${url}/${locale}/login`, "_self");
    } else {
      next();
    }
  } else {
    next();
  }
});

export default router;
