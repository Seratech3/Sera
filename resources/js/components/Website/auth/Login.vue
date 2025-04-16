<template>
    <div>
        <div class="d-flex flex-column flex-root h-100vh">
            <!--begin::Authentication - Sign-in -->
            <div class="d-flex flex-column flex-lg-row flex-column-fluid">
                <!--begin::Body-->
                <div
                    class="d-flex flex-column flex-lg-row-fluid w-lg-50 p-10 order-2 order-lg-1"
                >

                <router-link :to="`/${locale}`" style="margin: auto;">
                                  <img
                                        alt="Logo"
                                        src="/assets/media/svg/brand-logos/logo.png"
                                        class="logo-default h-25px h-lg-30px"
                                    />
                                   
                                </router-link>
                    <!--begin::Form-->
                    <div
                        class="d-flex flex-center flex-column flex-lg-row-fluid"
                    >
                        <!--begin::Wrapper-->
                        <div class="w-lg-500px p-10">
                            <!--begin::Form-->
                            <form
                                class="form w-100"
                                novalidate="novalidate"
                                id="kt_sign_in_form"
                                @submit.prevent="login"
                            >
                                <!--begin::Heading-->
                                <div class="text-center mb-11">
                                    <!--begin::Title--> 
                                    <h1 class="text-gray-900 fw-bolder mb-3">
                                        {{t.signin}}
                                    </h1>

                                    <!-- <div class="text-gray-500 fw-semibold fs-6">
                                        Your Social Campaigns
                                    </div> -->

                                    <!--end::Title-->
                                    <!--begin::Subtitle-->
                                    <!-- <div class="text-gray-500 fw-semibold fs-6">Your Social Campaigns</div> -->
                                    <!--end::Subtitle=-->
                                </div>
                                <!--begin::Heading-->
                                <!--begin::Login options-->

                                <!-- <div class="row g-3 mb-9">
                                    <div class="col-md-6">
                                        <a
                                            href="#"
                                            class="btn btn-flex btn-outline btn-text-gray-700 btn-active-color-primary bg-state-light flex-center text-nowrap w-100"
                                        >
                                            <img
                                                alt="Logo"
                                                :src="'../assets/media/svg/brand-logos/google-icon.svg'"
                                                class="h-15px me-3"
                                            />Sign in with Google</a
                                        >
                                    </div>

                                    <div class="col-md-6">
                                        <a
                                            href="#"
                                            class="btn btn-flex btn-outline btn-text-gray-700 btn-active-color-primary bg-state-light flex-center text-nowrap w-100"
                                        >
                                            <img
                                                alt="Logo"
                                                :src="'../assets/media/svg/brand-logos/facebook-3.svg'"
                                                class="theme-light-show h-15px me-3"
                                            />
                                            Sign in with Facebook
                                        </a>
                                    </div>
                                </div>

                                <div class="separator separator-content my-14">
                                    <span
                                        class="w-125px text-gray-500 fw-semibold fs-7"
                                        >Or with email</span
                                    >
                                </div> -->
                                <!--end::Separator-->
                                <!--begin::Input group=-->
                                <div class="fv-row mb-8">
                                    <!--begin::Email-->
                                    <input
                                        type="text"
                                        placeholder="{{t.email}}"
                                        v-model="formData.email"
                                        name="email"
                                        autocomplete="off"
                                        class="form-control bg-transparent"
                                    />
                                    <!--end::Email-->
                                </div>
                                <!--end::Input group=-->
                                <div class="fv-row mb-3">
                                    <!--begin::Password-->
                                    <input
                                        type="password"
                                        placeholder="{{t.password}}"
                                        v-model="formData.password"
                                        name="password"
                                        autocomplete="off"
                                        class="form-control bg-transparent"
                                    />
                                    <!--end::Password-->
                                </div>
                                <!--end::Input group=-->
                                <!--begin::Wrapper-->
                                <div
                                    class="d-flex flex-wrap gap-3 fs-base fw-semibold mb-8"
                                >
                                    <div></div>
                                    <!--begin::Link-->
                                    <a
                                        href="authentication/layouts/corporate/reset-password.html"
                                        class="text-gray-900"
                                        >{{t.forget_password }}
                                    </a>
                                    <!--end::Link-->
                                </div>
                                <!--end::Wrapper-->
                                <!--begin::Submit button-->
                                <div class="d-grid mb-10">
                                    <button
                                        type="submit"
                                        id="kt_sign_in_submit"
                                        class="btn btn-primary"
                                    >
                                        <!--begin::Indicator label-->
                                        <span class="indicator-label">
                                            {{t.signin}}</span
                                        >
                                        <!--end::Indicator label-->
                                        <!--begin::Indicator progress-->
                                        <span class="indicator-progress">
                                            {{ t.Please_wait }}

                                            <span
                                                class="spinner-border spinner-border-sm align-middle ms-2"
                                            ></span
                                        ></span>
                                        <!--end::Indicator progress-->
                                    </button>
                                </div>
                                <!--end::Submit button-->
                                <!--begin::Sign up-->
                                <div
                                    class="text-gray-900 text-center fw-semibold fs-6"
                                >
                                    {{t.Dont_have_an_account_yet}}

                                    <router-link
                                        :to="`/${locale}/signUp`"
                                        class="link-primary"
                                        >{{t.signup}}</router-link
                                    >
                                </div>

                                <div class="text-gray-900 text-center fw-semibold fs-6">

                                    <router-link
                                        :to="`/${locale}`"
                                        class="link-primary"
                                        >{{t.home}}</router-link
                                    >
                                </div>



                                <!--end::Sign up-->
                            </form>
                            <!--end::Form-->
                        </div> 
                        <!--end::Wrapper-->
                    </div>
                    <!--end::Form-->
                    <!--begin::Footer-->

                    <!--end::Footer-->
                </div>
                <!--end::Body-->
                <!--begin::Aside-->
                <div
                    class="position-relative d-flex flex-lg-row-fluid w-lg-50 bgi-size-cover bgi-position-center order-1 order-lg-2"
                    style="
                        background-image: url(../assets/media/misc/auth-bg.png);
                    "
                >
                    <!--begin::Content-->
                    <div
                        class="d-flex flex-column flex-center py-7 py-lg-15 px-5 px-md-15 w-100"
                    >
                        <div class="upBackground"></div>
                        <div class="downBackground"></div>
                        <!--begin::Logo-->
                        <!-- <router-link :to="`/${locale}`" class="mb-0 mb-lg-12"> -->
                        <!-- <span class="w-125px text-gray-500 fw-semibold fs-7" > Welcome To {{ setting ? setting.name : 'Loading...' }}</span> -->

                        <!-- <img
                                alt="Logo"
                                :src="'../assets/media/svg/brand-logos/logo.png'"
                                class="h-60px h-lg-75px"
                            />
                        </router-link> -->

                        <!--end::Logo-->
                        <!--begin::Image-->
                        <!-- <img
                            class="d-none d-lg-block mx-auto w-275px w-md-50 w-xl-500px mb-10 mb-lg-20"
                            :src="'../assets/media/misc/auth-screens.png'"
                            alt=""
                        /> -->

                        <!--end::Image-->
                        <!--begin::Title-->
                        <!-- <h1
                            class="d-none d-lg-block text-white fs-2qx fw-bolder text-center mb-7"
                        >
                            Fast, Efficient and Productive
                        </h1> -->
                        <!--end::Title-->
                        <!--begin::Text-->
                        <!-- <div
                            class="d-none d-lg-block text-white fs-base text-center"
                        >
                            In this kind of post,
                            <a
                                href="#"
                                class="opacity-75-hover text-warning fw-bold me-1"
                                >the blogger</a
                            >introduces a person they’ve interviewed <br />and
                            provides some background information about
                            <a
                                href="#"
                                class="opacity-75-hover text-warning fw-bold me-1"
                                >the interviewee</a
                            >and their <br />work following this is a transcript
                            of the interview.
                        </div> -->
                        <!--end::Text-->
                    </div>
                    <!--end::Content-->
                </div>
                <!--end::Aside-->
            </div>
            <!--end::Authentication - Sign-in-->
        </div>
    </div>
</template>

<script>
import axios from "axios";

export default {
    data() {
        return {
            errors: [],
            t: window.translations,
            formData: {
                email: null,
                password: null,
            },
        };
    },

    mounted() {
        this.$store.dispatch("fetchSetting");
    },

    computed: {
        setting() {
            return this.$store.getters.getSetting;
        },

        locale() {
            return this.$route.params.locale;
        },
    },

    methods: {
        async login() {
            try {
                let url = window.location.origin;
                const response = await axios.post(
                    url + "/web/login",
                    this.formData
                );

                if (response.data.code == 200) {
                    localStorage.setItem(
                        "authToken",
                        response.data.items.token
                    );
                    localStorage.setItem("token", response.data.items.token);
                    // window.open(url + "/app/info", "_self");
                    this.$router.push('/'+ this.$route.params.locale +'/app/info'); 

                } else {
                    Swal.fire({
                        text: response.data.message,
                        icon: "error",
                        buttonsStyling: false,
                        confirmButtonText: "Ok, got it!",
                        customClass: {
                            confirmButton: "btn btn-primary",
                        },
                    });
                }

                // this.$router.push('/'+ this.$route.params.locale +'/dashboard').then(() => {
                //     window.location.reload(); // إعادة تحميل الصفحة
                // });
                // this.$router.push('/'+ this.$route.params.locale +'/dashboard');  // تأكد من المسار الصحيح
            } catch (error) {

                Swal.fire({
                        text: 'Please Check Data Credintial .',
                        icon: "info",
                        buttonsStyling: false,
                        confirmButtonText: "Ok, got it!",
                        customClass: {
                            confirmButton: "btn btn-primary",
                        },
                    });
                
            }
        },
    },
};
</script>
