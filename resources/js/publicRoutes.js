import Landing from '@/components/Website/pages/Landing.vue';
import Login from '@/components/Website/auth/Login.vue';
import Register from '@/components/Website/auth/Register.vue';
import AuthLayout from '@/components/Website/auth/AuthLayout.vue';
import LoginAdmin from '@/components/Website/adminAuth/login.vue';
import AboutUs from '@/components/Website/pages/AboutUs.vue';
import FAQ from '@/components/Website/pages/FAQ.vue';
import Contact from '@/components/Website/pages/Contact.vue';

import userDashboard from '@/components/Website/dashboard/Dashboard.vue';
import userCV from '@/components/Website/dashboard/userCV.vue';
import Create from '@/components/Website/dashboard/Create.vue';



export default [
  
  { path: '/:locale/', name: "home", component: Landing ,  meta: { isHomePage: true } },
  {
    path: '/:locale/login',
    component: AuthLayout,
    children: [{ path: '', component: Login, meta: { hideHeaderFooter: true  } }],
  },

  {
    path: '/:locale/signUp',
    component: AuthLayout,
    children: [{ path: '', component: Register, meta: { hideHeaderFooter: true } }],
  },

  {
    path: '/:locale/admin/login',
    component: AuthLayout,
    name: 'AdminLogin',
    children: [{ path: '', component: LoginAdmin, meta: { hideHeaderFooter: true } }],
  },


  { path: '/:locale/about-us', component: AboutUs , meta: { isMenu: false } },
  { path: '/:locale/faq', component: FAQ , meta: { isMenu: false } },
  { path: '/:locale/contact-us', component: Contact , meta: { isMenu: false } },



  {
    path: '/:locale/app/info',
    component: userDashboard,
    meta: { requiresAuth: true , isMenu: true },
  },


  {
    path: '/:locale/app/templates',
    component: userCV,
    meta: { requiresAuth: true , isMenu: true },
  },


  {
    path: '/:locale/app/create-template',
    component: Create,
    meta: { requiresAuth: true , isMenu: true },
  },



];
