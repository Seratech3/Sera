<template>
    <div>
        <div class="d-flex flex-column flex-root">
            <!--begin::Authentication - Sign-in -->
            <div class="d-flex flex-column flex-lg-row flex-column-fluid">
                <!--begin::Body-->
                <div
                    class="d-flex flex-column flex-lg-row-fluid w-lg-50 p-10 order-2 order-lg-1"
                >
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
                                        Sign In
                                    </h1>

                                    <router-link
                                        :to="`/${locale}`"
                                        class="mb-0 mb-lg-12"
                                    >
                                        <img
                                            alt="Logo"
                                            :src="
                                                setting
                                                    ? setting.logo
                                                    : 'Loading...'
                                            "
                                            class="h-60px h-lg-75px"
                                        />
                                    </router-link>

                                    <!--end::Title-->
                                    <!--begin::Subtitle-->
                                    <!--end::Subtitle=-->
                                </div>
                                <!--begin::Heading-->

                                <!--begin::Separator-->

                                <!--end::Separator-->
                                <!--begin::Input group=-->
                                <div class="fv-row mb-8">
                                    <!--begin::Email-->
                                    <input
                                        type="text"
                                        placeholder="Email"
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
                                        placeholder="Password"
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
                                    class="d-flex flex-stack flex-wrap gap-3 fs-base fw-semibold mb-8"
                                >
                                    <div></div>
                                    <!--begin::Link-->
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
                                        <span class="indicator-label"
                                            >Sign In</span
                                        >
                                        <!--end::Indicator label-->
                                        <!--begin::Indicator progress-->
                                        <span class="indicator-progress"
                                            >Please wait...
                                            <span
                                                class="spinner-border spinner-border-sm align-middle ms-2"
                                            ></span
                                        ></span>
                                        <!--end::Indicator progress-->
                                    </button>
                                </div>
                                <!--end::Submit button-->
                                <!--begin::Sign up-->

                                <!--end::Sign up-->
                            </form>
                            <!--end::Form-->
                        </div>
                        <!--end::Wrapper-->
                    </div>
                    <!--end::Form-->
                    <!--begin::Footer-->
                </div>
                <!--end::Body-->
                <!--begin::Aside-->
                <div
                    class="d-flex flex-lg-row-fluid w-lg-50 bgi-size-cover bgi-position-center order-1 order-lg-2"
                    style="
                        background-image: url(../../assets/media/misc/auth-bg.png);
                    "
                >
                    <!--begin::Content-->
                    <div
                        class="d-flex flex-column flex-center py-7 py-lg-15 px-5 px-md-15 w-100"
                    >
                        <!--begin::Logo-->

                        <!--end::Logo-->
                        <!--begin::Image-->
                        <img
                            class="d-none d-lg-block mx-auto w-275px w-md-50 w-xl-500px mb-10 mb-lg-20"
                            :src="'../../assets/media/misc/auth-screens.png'"
                            alt=""
                        />
                        <!--end::Image-->
                        <!--begin::Title-->
                        <h1
                            class="d-none d-lg-block text-white fs-2qx fw-bolder text-center mb-7"
                        >
                            Fast, Efficient and Productive
                        </h1>
                        <!--end::Title-->
                        <!--begin::Text-->
                        <div
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
                        </div>
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
import { mapActions, mapState } from "vuex";

export default {
    data() {
        return {
            errors: [],
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
                    url + "/web/admin/login",
                    this.formData
                );

                if (response.data.code == 200) {
                    localStorage.setItem("token", response.data.items.token);
                    localStorage.setItem(
                        "authToken",
                        response.data.items.token
                    );

                    window.open(url + "/dashboard", "_self");
                } else {
                    this.swalFunction("error", response.data.message);
                }

                // this.$router.push('/'+ this.$route.params.locale +'/dashboard').then(() => {
                //     window.location.reload(); // إعادة تحميل الصفحة
                // });
                // this.$router.push('/'+ this.$route.params.locale +'/dashboard');  // تأكد من المسار الصحيح
            } catch (error) {
                this.swalFunction("error", error);
            }
        },

        swalFunction(type, text) {
            Swal.fire({
                text: text,
                icon: type,
                buttonsStyling: false,
                confirmButtonText: "Ok, got it!",
                customClass: {
                    confirmButton: "btn btn-primary",
                },
            });
        },
    },
};
</script>
