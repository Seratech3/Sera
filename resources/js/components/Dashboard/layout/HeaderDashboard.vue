<template>
    <div id="kt_header" class="header">
        <!--begin::Container-->
        <div class="container-fluid d-flex flex-stack">
            <!--begin::Brand-->
            <div class="d-flex align-items-center me-5">
                <!--begin::Aside toggle-->
                <div
                    class="d-lg-none btn btn-icon btn-active-color-white w-30px h-30px ms-n2 me-3"
                    id="kt_aside_toggle"
                >
                    <i class="ki-duotone ki-abstract-14 fs-2">
                        <span class="path1"></span>
                        <span class="path2"></span>
                    </i>
                </div>
                <!--end::Aside  toggle-->
                <!--begin::Logo-->

                <router-link :to="`/${locale}/dashboard`">
                    <img
                        alt="Logo"
                        :src="setting ? setting.logo : 'Loading...'"
                        class="h-25px h-lg-30px"
                    />
                </router-link>

                <!--end::Logo-->
                <!--begin::Nav-->

                <!--end::Nav-->
            </div>
            <!--end::Brand-->
            <!--begin::Topbar-->
            <div class="d-flex align-items-center flex-shrink-0">
                <!--begin::Search-->
                <div
                    id="kt_header_search"
                    class="header-search d-flex align-items-stretch"
                    data-kt-search-keypress="true"
                    data-kt-search-min-length="2"
                    data-kt-search-enter="enter"
                    data-kt-search-layout="menu"
                    data-kt-menu-trigger="auto"
                    data-kt-menu-overflow="false"
                    data-kt-menu-permanent="true"
                    data-kt-menu-placement="bottom-end"
                >
                    <!--begin::Search toggle-->
                    <div
                        class="d-flex align-items-center"
                        data-kt-search-element="toggle"
                        id="kt_header_search_toggle"
                    ></div>
                    <!--end::Search toggle-->
                    <!--begin::Menu-->
                    <div
                        data-kt-search-element="content"
                        class="menu menu-sub menu-sub-dropdown p-7 w-325px w-md-375px"
                    >
                        <!--begin::Wrapper-->

                        <!--end::Wrapper-->
                        <!--begin::Preferences-->

                        <!--end::Preferences-->
                        <!--begin::Preferences-->
                        <form
                            data-kt-search-element="preferences"
                            class="pt-1 d-none"
                        >
                            <!--begin::Heading-->
                            <h3 class="fw-semibold text-gray-900 mb-7">
                                Search Preferences
                            </h3>
                            <!--end::Heading-->
                            <!--begin::Input group-->
                            <div class="pb-4 border-bottom">
                                <label
                                    class="form-check form-switch form-switch-sm form-check-custom form-check-solid flex-stack"
                                >
                                    <span
                                        class="form-check-label text-gray-700 fs-6 fw-semibold ms-0 me-2"
                                        >Projects</span
                                    >
                                    <input
                                        class="form-check-input"
                                        type="checkbox"
                                        value="1"
                                        checked="checked"
                                    />
                                </label>
                            </div>
                            <!--end::Input group-->
                            <!--begin::Input group-->
                            <div class="py-4 border-bottom">
                                <label
                                    class="form-check form-switch form-switch-sm form-check-custom form-check-solid flex-stack"
                                >
                                    <span
                                        class="form-check-label text-gray-700 fs-6 fw-semibold ms-0 me-2"
                                        >Targets</span
                                    >
                                    <input
                                        class="form-check-input"
                                        type="checkbox"
                                        value="1"
                                        checked="checked"
                                    />
                                </label>
                            </div>
                            <!--end::Input group-->
                            <!--begin::Input group-->
                            <div class="py-4 border-bottom">
                                <label
                                    class="form-check form-switch form-switch-sm form-check-custom form-check-solid flex-stack"
                                >
                                    <span
                                        class="form-check-label text-gray-700 fs-6 fw-semibold ms-0 me-2"
                                        >Affiliate Programs</span
                                    >
                                    <input
                                        class="form-check-input"
                                        type="checkbox"
                                        value="1"
                                    />
                                </label>
                            </div>
                            <!--end::Input group-->
                            <!--begin::Input group-->
                            <div class="py-4 border-bottom">
                                <label
                                    class="form-check form-switch form-switch-sm form-check-custom form-check-solid flex-stack"
                                >
                                    <span
                                        class="form-check-label text-gray-700 fs-6 fw-semibold ms-0 me-2"
                                        >Referrals</span
                                    >
                                    <input
                                        class="form-check-input"
                                        type="checkbox"
                                        value="1"
                                        checked="checked"
                                    />
                                </label>
                            </div>
                            <!--end::Input group-->
                            <!--begin::Input group-->
                            <div class="py-4 border-bottom">
                                <label
                                    class="form-check form-switch form-switch-sm form-check-custom form-check-solid flex-stack"
                                >
                                    <span
                                        class="form-check-label text-gray-700 fs-6 fw-semibold ms-0 me-2"
                                        >Users</span
                                    >
                                    <input
                                        class="form-check-input"
                                        type="checkbox"
                                        value="1"
                                    />
                                </label>
                            </div>
                            <!--end::Input group-->
                            <!--begin::Actions-->
                            <div class="d-flex justify-content-end pt-7">
                                <button
                                    type="reset"
                                    class="btn btn-sm btn-light fw-bold btn-active-light-primary me-2"
                                    data-kt-search-element="preferences-dismiss"
                                >
                                    Cancel
                                </button>
                                <button
                                    type="submit"
                                    class="btn btn-sm fw-bold btn-primary"
                                >
                                    Save Changes
                                </button>
                            </div>
                            <!--end::Actions-->
                        </form>
                        <!--end::Preferences-->
                    </div>
                    <!--end::Menu-->
                </div>
                <!--end::Search-->

                <!--begin::Chat-->
                <div class="d-flex align-items-center ms-1">
                    <!--begin::Menu wrapper-->
                    <div
                        class="btn btn-icon btn-color-white bg-hover-white bg-hover-opacity-10 w-30px h-30px h-40px w-40px position-relative"
                        id="kt_drawer_chat_toggle"
                    >
                        <i class="ki-duotone ki-message-text-2 fs-1">
                            <span class="path1"></span>
                            <span class="path2"></span>
                            <span class="path3"></span>
                        </i>
                        <!--begin::Animation notification-->
                        <span
                            class="bullet bullet-dot bg-success h-6px w-6px position-absolute translate-middle top-0 start-50 animation-blink"
                        ></span>
                        <!--begin::Animation notification-->
                    </div>
                    <!--end::Menu wrapper-->
                </div>
                <!--end::Chat-->

                <!--begin::Theme mode-->
                <div class="d-flex align-items-center ms-1">
                    <!--begin::Menu toggle-->
                    <a
                        href="#"
                        class="btn btn-icon btn-color-white bg-hover-white bg-hover-opacity-10 w-30px h-30px h-40px w-40px"
                        data-kt-menu-trigger="{default:'click', lg: 'hover'}"
                        data-kt-menu-attach="parent"
                        data-kt-menu-placement="bottom-end"
                    >
                        <i
                            class="ki-duotone ki-night-day theme-light-show fs-1"
                        >
                            <span class="path1"></span>
                            <span class="path2"></span>
                            <span class="path3"></span>
                            <span class="path4"></span>
                            <span class="path5"></span>
                            <span class="path6"></span>
                            <span class="path7"></span>
                            <span class="path8"></span>
                            <span class="path9"></span>
                            <span class="path10"></span>
                        </i>
                        <i class="ki-duotone ki-moon theme-dark-show fs-1">
                            <span class="path1"></span>
                            <span class="path2"></span>
                        </i>
                    </a>
                    <!--begin::Menu toggle-->
                    <!--begin::Menu-->
                    <div
                        class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-title-gray-700 menu-icon-gray-500 menu-active-bg menu-state-color fw-semibold py-4 fs-base w-150px"
                        data-kt-menu="true"
                        data-kt-element="theme-mode-menu"
                    >
                        <!--begin::Menu item-->
                        <div class="menu-item px-3 my-0">
                            <a
                                href="#"
                                class="menu-link px-3 py-2"
                                data-kt-element="mode"
                                data-kt-value="light"
                            >
                                <span class="menu-icon" data-kt-element="icon">
                                    <i class="ki-duotone ki-night-day fs-2">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                        <span class="path3"></span>
                                        <span class="path4"></span>
                                        <span class="path5"></span>
                                        <span class="path6"></span>
                                        <span class="path7"></span>
                                        <span class="path8"></span>
                                        <span class="path9"></span>
                                        <span class="path10"></span>
                                    </i>
                                </span>
                                <span class="menu-title">Light</span>
                            </a>
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu item-->
                        <div class="menu-item px-3 my-0">
                            <a
                                href="#"
                                class="menu-link px-3 py-2"
                                data-kt-element="mode"
                                data-kt-value="dark"
                            >
                                <span class="menu-icon" data-kt-element="icon">
                                    <i class="ki-duotone ki-moon fs-2">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                    </i>
                                </span>
                                <span class="menu-title">Dark</span>
                            </a>
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu item-->
                        <div class="menu-item px-3 my-0">
                            <a
                                href="#"
                                class="menu-link px-3 py-2"
                                data-kt-element="mode"
                                data-kt-value="system"
                            >
                                <span class="menu-icon" data-kt-element="icon">
                                    <i class="ki-duotone ki-screen fs-2">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                        <span class="path3"></span>
                                        <span class="path4"></span>
                                    </i>
                                </span>
                                <span class="menu-title">System</span>
                            </a>
                        </div>
                        <!--end::Menu item-->
                    </div>
                    <!--end::Menu-->
                </div>
                <!--end::Theme mode-->
                <!--begin::User-->
                <div
                    class="d-flex align-items-center ms-1"
                    id="kt_header_user_menu_toggle"
                >
                    <!--begin::User info-->
                    <div
                        class="btn btn-flex align-items-center bg-hover-white bg-hover-opacity-10 py-2 px-2 px-md-3"
                        data-kt-menu-trigger="click"
                        data-kt-menu-attach="parent"
                        data-kt-menu-placement="bottom-end"
                    >
                        <!--begin::Name-->
                        <div
                            class="d-none d-md-flex flex-column align-items-end justify-content-center me-2 me-md-4"
                        >
                            <span
                                class="text-muted fs-8 fw-semibold lh-1 mb-1"
                                >{{ user ? user.name : "Loading..." }}</span
                            >
                            <span class="text-white fs-8 fw-bold lh-1">{{
                                user ? user.email : "Loading..."
                            }}</span>
                        </div>

                        <!--end::Name-->
                        <!--begin::Symbol-->
                        <div class="symbol symbol-30px symbol-md-40px">
                            <img
                                :src="user ? user.logo : 'Loading...'"
                                alt="image"
                            />
                        </div>
                        <!--end::Symbol-->
                    </div>
                    <!--end::User info-->
                    <!--begin::User account menu-->
                    <div
                        class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg menu-state-color fw-semibold py-4 fs-6 w-275px"
                        data-kt-menu="true"
                    >
                        <!--begin::Menu item-->
                        <div class="menu-item px-3">
                            <div
                                class="menu-content d-flex align-items-center px-3"
                            >
                                <!--begin::Avatar-->
                                <div class="symbol symbol-50px me-5">
                                    <img
                                        alt="Logo"
                                        :src="user ? user.logo : 'Loading...'"
                                    />
                                </div>
                                <!--end::Avatar-->
                                <!--begin::Username-->
                                <div class="d-flex flex-column">
                                    <div
                                        class="fw-bold d-flex align-items-center fs-5"
                                        v-if="user && user.company_id == null"
                                    >
                                        Pro
                                        <span
                                            class="badge badge-light-success fw-bold fs-8 px-2 py-1 ms-2"
                                            >{{
                                                user ? user.name : "Loading..."
                                            }}</span
                                        >
                                    </div>
                                    <a
                                        href="#"
                                        class="fw-semibold text-muted text-hover-primary fs-7"
                                        >{{
                                            user ? user.email : "Loading..."
                                        }}</a
                                    >
                                </div>
                                <!--end::Username-->
                            </div>
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu separator-->
                        <div class="separator my-2"></div>
                        <!--end::Menu separator-->
                        <!--begin::Menu item-->
                        <div class="menu-item px-5">
                            <a
                                href="#"
                                class="menu-link px-5"
                                @click="openMyAccount(user.id)"
                                >My Profile</a
                            >
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu item-->
                        <div class="menu-item px-5">
                            <a
                                href="apps/projects/list.html"
                                class="menu-link px-5"
                            >
                                <span class="menu-text">My Projects</span>
                                <span class="menu-badge">
                                    <span
                                        class="badge badge-light-danger badge-circle fw-bold fs-7"
                                        >3</span
                                    >
                                </span>
                            </a>
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu item-->
                        <div
                            class="menu-item px-5"
                            data-kt-menu-trigger="{default: 'click', lg: 'hover'}"
                            data-kt-menu-placement="left-start"
                            data-kt-menu-offset="-15px, 0"
                        >
                            <a href="#" class="menu-link px-5">
                                <span class="menu-title">My Subscription</span>
                                <span class="menu-arrow"></span>
                            </a>
                            <!--begin::Menu sub-->
                            <div
                                class="menu-sub menu-sub-dropdown w-175px py-4"
                            >
                                <!--begin::Menu item-->
                                <div class="menu-item px-3">
                                    <a
                                        href="account/referrals.html"
                                        class="menu-link px-5"
                                        >Referrals</a
                                    >
                                </div>
                                <!--end::Menu item-->
                                <!--begin::Menu item-->
                                <div class="menu-item px-3">
                                    <a
                                        href="account/billing.html"
                                        class="menu-link px-5"
                                        >Billing</a
                                    >
                                </div>
                                <!--end::Menu item-->
                                <!--begin::Menu item-->
                                <div class="menu-item px-3">
                                    <a
                                        href="account/statements.html"
                                        class="menu-link px-5"
                                        >Payments</a
                                    >
                                </div>
                                <!--end::Menu item-->
                                <!--begin::Menu item-->
                                <div class="menu-item px-3">
                                    <a
                                        href="account/statements.html"
                                        class="menu-link d-flex flex-stack px-5"
                                        >Statements
                                        <span
                                            class="ms-2 lh-0"
                                            data-bs-toggle="tooltip"
                                            title="View your statements"
                                        >
                                            <i
                                                class="ki-duotone ki-information-5 fs-5"
                                            >
                                                <span class="path1"></span>
                                                <span class="path2"></span>
                                                <span class="path3"></span>
                                            </i> </span
                                    ></a>
                                </div>
                                <!--end::Menu item-->
                                <!--begin::Menu separator-->
                                <div class="separator my-2"></div>
                                <!--end::Menu separator-->
                                <!--begin::Menu item-->
                                <div class="menu-item px-3">
                                    <div class="menu-content px-3">
                                        <label
                                            class="form-check form-switch form-check-custom form-check-solid"
                                        >
                                            <input
                                                class="form-check-input w-30px h-20px"
                                                type="checkbox"
                                                value="1"
                                                checked="checked"
                                                name="notifications"
                                            />
                                            <span
                                                class="form-check-label text-muted fs-7"
                                                >Notifications</span
                                            >
                                        </label>
                                    </div>
                                </div>
                                <!--end::Menu item-->
                            </div>
                            <!--end::Menu sub-->
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu item-->
                        <div class="menu-item px-5">
                            <a
                                href="account/statements.html"
                                class="menu-link px-5"
                                >My Statements</a
                            >
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu separator-->
                        <div class="separator my-2"></div>
                        <!--end::Menu separator-->
                        <!--begin::Menu item-->
                        <div
                            class="menu-item px-5"
                            data-kt-menu-trigger="{default: 'click', lg: 'hover'}"
                            data-kt-menu-placement="left-start"
                            data-kt-menu-offset="-15px, 0"
                        >
                            <a href="#" class="menu-link px-5">
                                <span class="menu-title position-relative"
                                    >Language
                                    <span
                                        class="fs-8 rounded bg-light px-3 py-2 position-absolute translate-middle-y top-50 end-0"
                                        >English
                                        <img
                                            class="w-15px h-15px rounded-1 ms-2"
                                            :src="'../assets/media/flags/united-states.svg'"
                                            alt="" /></span
                                ></span>
                            </a>
                            <!--begin::Menu sub-->
                            <div
                                class="menu-sub menu-sub-dropdown w-175px py-4"
                            >
                                <!--begin::Menu item-->
                                <div class="menu-item px-3">
                                    <a
                                        href="account/settings.html"
                                        class="menu-link d-flex px-5 active"
                                    >
                                        <span class="symbol symbol-20px me-4">
                                            <img
                                                class="rounded-1"
                                                :src="'../assets/media/flags/united-states.svg'"
                                                alt=""
                                            /> </span
                                        >English</a
                                    >
                                </div>
                                <!--end::Menu item-->
                                <!--begin::Menu item-->
                                <div class="menu-item px-3">
                                    <a
                                        href="account/settings.html"
                                        class="menu-link d-flex px-5"
                                    >
                                        <span class="symbol symbol-20px me-4">
                                            <img
                                                class="rounded-1"
                                                :src="'../assets/media/flags/spain.svg'"
                                                alt=""
                                            /> </span
                                        >Spanish</a
                                    >
                                </div>
                                <!--end::Menu item-->
                                <!--begin::Menu item-->
                                <div class="menu-item px-3">
                                    <a
                                        href="account/settings.html"
                                        class="menu-link d-flex px-5"
                                    >
                                        <span class="symbol symbol-20px me-4">
                                            <img
                                                class="rounded-1"
                                                :src="'../assets/media/flags/germany.svg'"
                                                alt=""
                                            /> </span
                                        >German</a
                                    >
                                </div>
                                <!--end::Menu item-->
                                <!--begin::Menu item-->
                                <div class="menu-item px-3">
                                    <a
                                        href="account/settings.html"
                                        class="menu-link d-flex px-5"
                                    >
                                        <span class="symbol symbol-20px me-4">
                                            <img
                                                class="rounded-1"
                                                :src="'../assets/media/flags/japan.svg'"
                                                alt=""
                                            /> </span
                                        >Japanese</a
                                    >
                                </div>
                                <!--end::Menu item-->
                                <!--begin::Menu item-->
                                <div class="menu-item px-3">
                                    <a
                                        href="account/settings.html"
                                        class="menu-link d-flex px-5"
                                    >
                                        <span class="symbol symbol-20px me-4">
                                            <img
                                                class="rounded-1"
                                                :src="'../assets/media/flags/france.svg'"
                                                alt=""
                                            /> </span
                                        >French</a
                                    >
                                </div>
                                <!--end::Menu item-->
                            </div>
                            <!--end::Menu sub-->
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu item-->
                        <div class="menu-item px-5 my-1">
                            <a
                                href="account/settings.html"
                                class="menu-link px-5"
                                >Account Settings</a
                            >
                        </div>
                        <!--end::Menu item-->
                        <!--begin::Menu item-->
                        <div class="menu-item px-5">
                            <a @click="logout" href="#" class="menu-link px-5"
                                >Sign Out</a
                            >
                        </div>
                        <!--end::Menu item-->
                    </div>
                    <!--end::User account menu-->
                </div>
                <!--end::User -->
            </div>
            <!--end::Topbar-->
        </div>
        <!--end::Container-->
    </div>
</template>

<script>
import { mapActions, mapState } from "vuex";
import { onUnmounted } from "vue";

export default {
    name: "Header",

    setup() {
        onUnmounted(() => {
            localStorage.removeItem("profile"); // حذف المفتاح
            // أو لجعل القيمة فارغة
            // localStorage.setItem('profile', '');
        });
    },

    data() {
        return {};
    },

    computed: {
        setting() {
            return this.$store.getters.getSetting;
        },

        user() {
            return this.$store.getters.getUser;
        },

        locale() {
            return this.$route.params.locale;
        },
    },

    mounted() {
        this.$store.dispatch("fetchSetting");
        this.$store.dispatch("fetchUser");
    },

    watch: {},

    methods: {
        logout() {
            localStorage.removeItem("authToken");
            let url = window.location.origin;
            window.open(url + "/" + this.locale + "/admin/login", "_self");
        },

        openMyAccount(ID) {
            if (this.$route.name == "admins") {
                localStorage.setItem("profile", ID);
                window.location.reload();
            }
            let url = window.location.origin;
            localStorage.setItem("profile", ID);
            this.$router.push(
                "/" + this.locale + "/dashboard/user_management/admins"
            );
        },
    },
};
</script>
