<template>
    <div>
        <div class="mb-0 mt-0">
            <!--begin::Curve top-->
            <!-- <div class="landing-curve landing-dark-color">
                <svg
                    viewBox="15 -1 1470 48"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                >
                    <path
                        d="M1 48C4.93573 47.6644 8.85984 47.3311 12.7725 47H1489.16C1493.1 47.3311 1497.04 47.6644 1501 48V47H1489.16C914.668 -1.34764 587.282 -1.61174 12.7725 47H1V48Z"
                        fill="currentColor"
                    ></path>
                </svg>
            </div> -->
            <!--end::Curve top-->
            <!--begin::Wrapper-->
            <div
                class="bgi-no-repeat bgi-size-cover bgi-position-x-center bgi-position-y-bottom pt-20"
                style="background-image: url(/assets/media/bkFooter.png)"
            >
                <!--begin::Container-->
                <div class="container">
                    <!--begin::Row-->
                    <div class="row">
                        <!--begin::Col-->
                        <div class="col-lg-12 pe-lg-16 mb-10 mb-lg-0 pb-20">
                            <!--begin::Block-->

                            <!--begin::Title-->
                            <h2 class="text-white text-center">
                                {{ t.trusted_by }}
                            </h2>
                            <!--end::Title-->

                            <!--end::Block-->
                        </div>
                        <div class="col-lg-5 pe-lg-16 mb-10 mb-lg-0">
                            <!--begin::Block-->
                            <div class="rightFooter">
                                <img
                                    alt="logoWhite"
                                    src="/assets/media/logoWithe.png"
                                    class="logoWhite"
                                />
                                <p class="ParagrFooter text-white w-100">
                                    {{
                                        setting
                                            ? setting.description
                                            : "Loading..."
                                    }}
                                </p>
                            </div>
                            <!--end::Block-->
                        </div>
                        <!--end::Col-->
                        <div class="col-lg-3 ps-lg-16"></div>
                        <!--begin::Col-->
                        <div class="col-lg-4 ps-lg-16">
                            <!--begin::Navs-->
                            <div
                                class="d-flex justify-content-center footerLinks"
                            >
                                <!--begin::Links-->
                                <div
                                    class="d-flex fw-semibold flex-column me-10"
                                >
                                    <!--begin::Subtitle-->
                                    <h4 class="fw-bold text-gray-100 mb-6">
                                        {{ t.our_services }}
                                    </h4>
                                    <!--end::Subtitle-->
                                    <!--begin::Link-->
                                    <a
                                        href="#"
                                        class="text-white opacity-50 text-hover-light fs-5 mb-6"
                                        >{{ t.create_cv_2 }}</a
                                    >
                                    <!--end::Link-->
                                    <!--begin::Link-->
                                    <a
                                        href="#"
                                        class="text-white opacity-50 text-hover-light fs-5 mb-6"
                                        >{{ t.download_improve_cv }}</a
                                    >
                                    <!--end::Link-->
                                </div>
                                <!--end::Links-->
                                <!--begin::Links-->
                                <div
                                    class="d-flex fw-semibold flex-column ms-lg-5"
                                >
                                    <!--begin::Subtitle-->
                                    <h4 class="fw-bold text-gray-100 mb-6">
                                        {{ t.quick_links }}
                                    </h4>
                                    <!--end::Subtitle-->
                                    <!--begin::Link-->
                                    <router-link
                                        :to="`/${locale}/about-us`"
                                        class="text-white opacity-50 text-hover-light fs-5 mb-6"
                                    >
                                        {{ t.about }}
                                    </router-link>
                                    <!--end::Link-->
                                    <!--begin::Link-->
                                    <a
                                        href="#"
                                        class="text-white opacity-50 text-hover-light fs-5 mb-6"
                                    >
                                        {{ t.templates }}
                                    </a>
                                    <!--end::Link-->
                                    <!--begin::Link-->
                                    <router-link
                                        :to="`/${locale}/faq`"
                                        class="text-white opacity-50 text-hover-light fs-5 mb-6"
                                    >
                                        {{ t.FAQS }}
                                    </router-link>
                                    <!--end::Link-->
                                    <!--begin::Link-->
                                    <router-link
                                        :to="`/${locale}/contact-us`"
                                        class="text-white opacity-50 text-hover-light fs-5 mb-6"
                                    >
                                        {{ t.contact }}
                                    </router-link>
                                    <!--end::Link-->
                                </div>
                                <!--end::Links-->
                            </div>
                            <!--end::Navs-->
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Row-->
                </div>
                <!--end::Container-->
                <!--begin::Container-->
                <div class="container copyContainer">
                    <!--begin::Wrapper-->
                    <div class="row pb-lg-10">
                        <!--begin::Copyright-->
                        <div class="col-12 text-center mb-10">
                            <a :href="'mailto:' + (setting ? setting.email : '')" class="SendEmail">
                                {{ setting ? setting.email : "Loading..." }}
                                <img
                                    src="assets/media/inbox.png"
                                    class="h-20px"
                                    alt=""
                                />
                            </a>
                            <div class="flex-equal text-end ms-1">
                                <ul class="menuFooter">
                                    <!--begin::Menu item-->
                                    <li class="menu-item">
                                        <a target="_blank" 
                                            :href="
                                                setting
                                                    ? setting.linked_in
                                                    : 'Loading...'
                                            "
                                            class="mb-6"
                                        >
                                            <img
                                                src="assets/media/linkedin-logo.png"
                                                class="h-20px"
                                                alt=""
                                            />
                                        </a>
                                    </li>

                                    <!--end::Link-->
                                    <!--begin::Link-->
                                    <li class="menu-item">
                                        <a target="_blank" 
                                            :href="
                                                setting
                                                    ? setting.twitter
                                                    : 'Loading...'
                                            "
                                            class="mb-6"
                                        >
                                            <img
                                                src="assets/media/twitter.png"
                                                class="h-20px mx-5"
                                                alt=""
                                            />
                                        </a>
                                    </li>
                                    <!--end::Link-->

                                    <!--begin::Link-->
                                    <li class="menu-item">
                                        <a target="_blank" 
                                            :href="
                                                setting
                                                    ? setting.instagram
                                                    : 'Loading...'
                                            "
                                            class="mb-6"
                                        >
                                            <img
                                                src="assets/media/instagram.png"
                                                class="h-20px"
                                                alt=""
                                            />
                                        </a>
                                    </li>
                                    <!--end::Link-->
                                </ul>
                            </div>
                        </div>
                        <div class="col-12 text-center">
                            <!--begin::Logo image-->
                            <span
                                class="mx-5 fs-6 fw-semibold text-gray-400 pt-1"
                                href="#"
                            >
                                {{ t.all_rights_reserved }}
                            </span>
                            <!--end::Logo image-->
                        </div>
                        <!--end::Copyright-->
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Container-->
            </div>
            <!--end::Wrapper-->
        </div>
    </div>
</template>

<script>
import axios from "axios";
import { mapActions, mapState } from "vuex";
import { api } from "../../../axiosUser";

export default {
    name: "Header",
    data() {
        return {
            success: 0,
            t: window.translations,
        };
    },
    mounted() {
        this.$store.dispatch("fetchSetting").then(() => {});
    },

    computed: {
        locale() {
            return this.$route.params.locale || "en";
        },

        setting() {
            return this.$store.getters.getSetting;
        },
    },

    methods: {},
};
</script>
