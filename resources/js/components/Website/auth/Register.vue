<template>
    <div>
        <div class="d-flex flex-column flex-root h-100vh">
            <!--begin::Authentication - Sign-up -->
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
                            <form class="form w-100" @submit.prevent="Register">
                                <!--begin::Heading-->
                                <div class="text-center mb-11">
                                    <!--begin::Title-->
                                    <h1 class="text-gray-900 fw-bolder mb-3">
                                        {{ t.signup }}
                                    </h1>
                                    <!--end::Title-->
                                    <!--begin::Subtitle-->
                                    <!-- <div class="text-gray-500 fw-semibold fs-6">
                                        Your Social Campaigns
                                    </div> -->
                                    <!--end::Subtitle=-->
                                </div>
                                <!--begin::Heading-->
                                <!--begin::Login options-->
                                <div class="row g-3 mb-9">
                                    <!--begin::Col-->
                                    <!-- <div class="col-md-6"> -->
                                    <!--begin::Google link=-->
                                    <!-- <a
                                            href="#"
                                            class="btn btn-flex btn-outline btn-text-gray-700 btn-active-color-primary bg-state-light flex-center text-nowrap w-100"
                                        >
                                            <img
                                                alt="Logo"
                                                :src="'../assets/media/svg/brand-logos/google-icon.svg'"
                                                class="h-15px me-3"
                                            />Sign in with Google</a
                                        > -->
                                    <!--end::Google link=-->
                                    <!-- </div> -->
                                    <!--end::Col-->
                                    <!--begin::Col-->
                                    <!-- <div class="col-md-6">
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
                                    </div> -->
                                    <!--end::Col-->
                                </div>
                                <!--end::Login options-->
                                <!--begin::Separator-->
                                <!-- <div class="separator separator-content my-14">
                                    <span
                                        class="w-125px text-gray-500 fw-semibold fs-7"
                                        >Or with email</span
                                    >
                                </div> -->
                                <!--end::Separator-->
                                <div class="fv-row mb-8">
                                    <!--begin::Email-->
                                    <input
                                        inputmode="text"
                                        :placeholder="t.name"
                                        v-model="formData.name"
                                        class="form-control bg-transparent"
                                    />

                                    <!--end::Email-->
                                </div>

                                <!--begin::Input group=-->
                                <div class="fv-row mb-8">
                                    <!--begin::Email-->
                                    <input
                                        type="text"
                                        :placeholder="t.email"
                                        v-model="formData.email"
                                        name="email"
                                        autocomplete="off"
                                        class="form-control bg-transparent"
                                    />

                                    <!-- <input
                                        inputmode="text"
                                        id="kt_inputmask_8"
                                        placeholder="_@_"
                                        v-model="formData.email"
                                        class="form-control form-control-solid"
                                    />
                                    <div class="form-text">
                                        Custom format: <code>_@_</code>
                                    </div> -->
                                    <!--end::Email-->
                                </div>

                            <div class="fv-row mb-8"> 
                                <!--begin::Email-->
                                <input
                                        inputmode="text"
                                        id="kt_inputmask_2"
                                        v-model="formData.mobile"
                                        class="form-control form-control-solid"
                                        placeholder="(123) 456-7890"
                                    />
                                    <div class="form-text">
                                        Phone number format:
                                        <code>(999) 999-9999</code>
                                    </div>
                                </div> 

                                <!--begin::Input group-->
                                <div class="fv-row mb-8">
                                    <div class="position-relative mb-3">
                                        <input
                                            class="form-control bg-transparent"
                                            type="password"
                                            :placeholder="t.password"
                                            v-model="formData.password"
                                            @input="validatePassword"
                                        />
                                        <span
                                            class="btn btn-sm btn-icon position-absolute translate-middle top-50 end-0 me-n2"
                                            @click="
                                                togglePasswordVisibility(
                                                    'passwordVisible'
                                                )
                                            "
                                        >
                                            <i
                                                v-if="!passwordVisible"
                                                class="ki-duotone ki-eye-slash fs-2"
                                            ></i>
                                            <i
                                                v-else
                                                class="ki-duotone ki-eye fs-2"
                                            ></i>
                                        </span>
                                    </div>
                                    <div
                                        v-if="passwordError"
                                        class="text-danger"
                                    >
                                        {{ passwordError }}
                                    </div>
                                </div>

                                <!-- حقل تأكيد كلمة المرور -->
                                <div class="fv-row mb-8">
                                    <div class="position-relative mb-3">
                                        <input
                                            class="form-control bg-transparent"
                                            type="password"
                                            :placeholder="
                                                t.confirm_password
                                            "
                                            v-model="formData.confirmPassword"
                                            @input="validateConfirmPassword"
                                        />
                                        <span
                                            class="btn btn-sm btn-icon position-absolute translate-middle top-50 end-0 me-n2"
                                            @click="
                                                togglePasswordVisibility(
                                                    'confirmPasswordVisible'
                                                )
                                            "
                                        >
                                            <i
                                                v-if="!confirmPasswordVisible"
                                                class="ki-duotone ki-eye-slash fs-2"
                                            ></i>
                                            <i
                                                v-else
                                                class="ki-duotone ki-eye fs-2"
                                            ></i>
                                        </span>
                                    </div>
                                    <div
                                        v-if="confirmPasswordError"
                                        class="text-danger"
                                    >
                                        {{ confirmPasswordError }}
                                    </div>
                                </div>

                                <!--end::Input group=-->

                                <!--end::Input group=-->
                                <!--begin::Accept-->
                                <div class="fv-row mb-8">
                                    <label class="form-check form-check-inline">
                                        <input
                                            class="form-check-input"
                                            type="checkbox"
                                            name="toc"
                                            value="1"
                                            v-model="formData.terms"
                                        />
                                        <span
                                            class="form-check-label fw-semibold text-gray-700 fs-base ms-1"
                                        >
                                            {{ t.I_Accept_the}}
                                            <a
                                                href="#"
                                                class="ms-1 link-primary"
                                                >{{ t.terms}}
                                            </a></span
                                        >
                                    </label>
                                </div>
                                <!--end::Accept-->
                                <!--begin::Submit button-->
                                <div class="d-grid mb-10">
                                    <button
                                        type="submit"
                                        id="kt_sign_up_submit"
                                        class="btn btn-primary"
                                    >
                                        <!--begin::Indicator label-->
                                        <span class="indicator-label">
                                            {{ t.signup }}
                                        </span>
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
                                    class="text-gray-500 text-center fw-semibold fs-6"
                                >
                                    {{ t.Already_have_an_Account }} ?

                                    <router-link
                                        :to="`/${locale}/login`"
                                        class="link-primary fw-semibold"
                                        >{{ t.signin }}</router-link
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
                </div>
                <!--end::Body-->
                <!--begin::Aside-->
                <div
                    class="d-flex flex-lg-row-fluid w-lg-50 bgi-size-cover bgi-position-center order-1 order-lg-2"
                    style="
                        background-image: url(../assets/media/misc/auth-bg.png);
                    "
                >
                    <!--begin::Content-->
                    <div
                        class="d-flex flex-column flex-center py-7 py-lg-15 px-5 px-md-15 w-100"
                    >
                        <!--begin::Logo-->
                        <!-- <router-link :to="`/${locale}`" class="mb-0 mb-lg-12">
                            <img
                                alt="Logo"
                                :src="setting ? setting.logo : 'loading'"
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
            <!--end::Authentication - Sign-up-->
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
                name: null,
                email: null,
                mobile: null,
                password: null,
                confirmPassword: null,
                terms: null,
            },

            passwordError: null, // رسالة خطأ لكلمة المرور
            confirmPasswordError: null, // رسالة خطأ لتأكيد كلمة المرور
            passwordVisible: false, // عرض/إخفاء كلمة المرور
            confirmPasswordVisible: false, // عرض/إخ
        };
    },

    mounted() {
        this.$store.dispatch("fetchSetting");

        Inputmask({
            mask: "(+999) 999-999-999", // القناع المطلوب
            mask: "(+999) 999-999-999", // القناع المطلوب
        }).mask("#kt_inputmask_2");

        Inputmask({
            mask: "*{1,20}[.*{1,20}][.*{1,20}][.*{1,20}]@*{1,20}[.*{2,6}][.*{1,2}]",
            greedy: false,
            onBeforePaste: function (pastedValue, opts) {
                pastedValue = pastedValue.toLowerCase();
                return pastedValue.replace("mailto:", "");
            },
            definitions: {
                "*": {
                    validator: '[0-9A-Za-z!#$%&"*+/=?^_`{|}~\-]',
                    cardinality: 1,
                    casing: "lower",
                },
            },
        }).mask("#kt_inputmask_8");
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
        validatePassword() {
            if (this.formData.password.length < 8) {
                this.passwordError = "Password must be at least 8 characters.";
            } else if (!/[A-Z]/.test(this.formData.password)) {
                this.passwordError =
                    "Password must contain at least one uppercase letter.";
            } else if (!/[a-z]/.test(this.formData.password)) {
                this.passwordError =
                    "Password must contain at least one lowercase letter.";
            } else if (!/[0-9]/.test(this.formData.password)) {
                this.passwordError =
                    "Password must contain at least one number.";
            } else if (!/[\W_]/.test(this.formData.password)) {
                this.passwordError =
                    "Password must contain at least one special character.";
            } else {
                this.passwordError = null;
            }
        },

        // التحقق من تطابق كلمة المرور وتأكيدها
        validateConfirmPassword() {
            if (this.formData.confirmPassword !== this.formData.password) {
                this.confirmPasswordError = "Passwords do not match.";
            } else {
                this.confirmPasswordError = null;
            }
        },

        // تبديل عرض/إخفاء كلمة المرور
        togglePasswordVisibility(type) {
            if (type === "passwordVisible") {
                this.passwordVisible = !this.passwordVisible;
            } else if (type === "confirmPasswordVisible") {
                this.confirmPasswordVisible = !this.confirmPasswordVisible;
            }
        },

        async Register() {
            try {
                let url = window.location.origin;
                const response = await axios.post(
                    url + "/web/register",
                    this.formData
                );

                if (response.data.code == 200) {
                    localStorage.setItem(
                        "authToken",
                        response.data.items.token
                    );

                    window.open(url + "/app/info", "_self");
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
                alert("Login failed");
            }
        },
    },
};
</script>
