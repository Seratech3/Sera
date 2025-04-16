import { createStore } from 'vuex';
import { api, authApi } from './axiosUser'; 
import router from './routes';


const store = createStore({
    state: {
        setting: null,
        user: null,
        languages: [],
        currentLanguage: 'en', 
        translations: {}, // إضافة حالة لتخزين الترجمات
    },
    mutations: {
        setUser(state, user) {
            state.user = user;
        },

        setSetting(state, setting) {
            state.setting = setting;
        },

        setLanguages(state, languages) {
            state.languages = languages;
        },

        setCurrentLanguage(state, language) {
            state.currentLanguage = language;
        },

        setTranslations(state, translations) {
            state.translations = translations; // تعيين الترجمات
        },
    },
    actions: {
        fetchLanguages({ commit }) {
            return api.get('Languages/getAllItems')
                .then(response => {
                    commit('setLanguages', response.data.items);
                })
                .catch(error => {
                    console.log("❌ Error fetching languages:", error);
                });
        },

        fetchSetting({ commit }) {
            return api.get('Settings/getById')
                .then(response => {
                    commit('setSetting', response.data.items);
                })
                .catch(error => {
                    console.log("❌ Error fetching settings:", error);
                });
        },

     fetchUser({ commit }) {
            return authApi({
                method: 'get',
                url: 'UserAuth/getAuth',
                headers: {
                    Authorization: 'Bearer ' + localStorage.getItem('token')
                }
            })
            .then(response => {
                commit('setUser', response.data.items);
            })
            .catch(error => {
                console.log("❌ Error fetching User auth:", error);
                const locale = localStorage.getItem('locale') || 'en';
                router.push({ path: `/${locale}/login` });
            }); 
        },


        async loadTranslations({ commit, state }, locale = null) {

            const selectedLocale = locale ;

            let storedTranslations = localStorage.getItem(`translations_${selectedLocale}`);

            if (storedTranslations) {
                commit('setTranslations', JSON.parse(storedTranslations));
                return;
            }

            try {
                const response = await api.get("Languages/translations", {
                    params: { locale: selectedLocale }
                });

                const data = response.data;
                localStorage.setItem(`translations_${selectedLocale}`, JSON.stringify(data));
                commit('setTranslations', data);
            } catch (error) {
                console.log("❌ Error loading translations:", error);
            }
        },


        async changeLanguage({ dispatch, commit }, locale) {
            commit('setCurrentLanguage', locale);
            await dispatch('loadTranslations', locale); // تحميل الترجمات
            localStorage.setItem('locale', locale); // حفظ اللغة في localStorage
        },
    },
    getters: {
        getLanguages(state) {
            return state.languages;
        },
        getUser(state) {
            return state.user;
        },
        getSetting(state) {
            return state.setting;
        },
        isAuthenticated(state) {
            return !!state.user;
        },
        getCurrentLanguage(state) {
            return state.currentLanguage;
        },
        getTranslations(state) {
            return state.translations; // إرجاع الترجمات
        },
    },
});

export default store;
