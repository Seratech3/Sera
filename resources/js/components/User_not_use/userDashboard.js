import "../../bootstrap";
import "../../axiosUser";

import { createApp } from "vue";
import Router from "../../routes.js";
import { createStore } from "vuex";
import store from "../../storeUser.js";
// import Select2 from 'vue3-select2-component';

import { createI18n } from "vue-i18n";

import AppDashboard from "./layout/UserDashboard.vue";
import en from "../../../locales/en.json";
import ar from "../../../locales/ar.json";

const i18n = createI18n({
    locale: "ar", // Default language
    fallbackLocale: "ar",
    messages: { ar, en },
});
const dashboardApp = createApp(AppDashboard);

import HeaderDashboard from "./layout/HeaderDashboard.vue";
import FooterDashboard from "./layout/FooterDashboard.vue";

dashboardApp.component("HeaderDashboard", HeaderDashboard);
dashboardApp.component("FooterDashboard", FooterDashboard);

dashboardApp.use(Router);
dashboardApp.use(store);
dashboardApp.use(i18n);
// app.component('Select2', Select2)

dashboardApp.mount("#dashboard-user");

