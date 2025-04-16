import "../../bootstrap";
import "../../axiosUser";

import { createApp } from "vue";
import Router from "../../routes.js";
import { createStore } from "vuex";
import store from "../../storeUser.js";
// import { createI18n } from "vue-i18n";

import App from "./layout/App.vue";
// import en from "../../../locales/en.json";
// import ar from "../../../locales/ar.json";

// const i18n = createI18n({
//     locale: "ar", // Default language
//     fallbackLocale: "ar",
//     messages: { ar, en },
// });
const app = createApp(App);

import HeaderWebsite from "./layout/Header.vue";
import FooterWebsite from "./layout/Footer.vue";

app.component("headerWebsite", HeaderWebsite);
app.component("footerWebsite", FooterWebsite);

// app.use(i18n);
app.use(Router);
app.use(store);

app.mount("#app");