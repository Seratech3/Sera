<template>
    <div>
        <TitleHead :title="t.AboutUS" :subtitle="t.WelcomeAboutUS"></TitleHead>
        
        <div class="mb-n10 mb-lg-n20 z-index-2 mt-20 pt-10">
            <Companies></Companies>

            <div class="container mb-20">
                <div class="row w-100 gy-10 mt-20">
                    <div class="col-md-5 px-0">
                        <img
                            src="/assets/media/c1.jpeg"
                            class="rightImage w-100"
                            alt="right"
                        />
                    </div>
                    <div class="col-md-2 px-0"></div>
                    <div class="col-md-5 alignCenter px-5">
                        <div class="position-relative text-right mb-17">
                            <h3
                                class="fs-2hx text-gray-900 mb-5 lineHight30"
                                id="how-it-works"
                                data-kt-scroll-offset="{default: 100, lg: 150}"
                            >
                                {{ t.OurMission }}
                            </h3>
                            <p class="Paragr grayColor mt-10">
                                {{ t.OurMissionDescription }}
                            </p>
                        </div>
                    </div>
                </div>

                <div class="row w-100 gy-10 my-10">
                    <div class="col-md-5 alignCenter px-5">
                        <div class="position-relative text-right mb-17">
                            <h3
                                class="fs-2hx text-gray-900 mb-5 lineHight30"
                                id="how-it-works"
                                data-kt-scroll-offset="{default: 100, lg: 150}"
                            >
                                {{ t.WhatWeOffer }}
                            </h3>
                            <ul class="ulWhatWeOffer">
                                <li>
                                    <strong> {{ t.ReadyMade1 }}</strong>
                                    {{ t.ChooseFrom1 }}
                                </li>
                                <li>
                                    <strong> {{ t.ReadyMade2 }}</strong>
                                    {{ t.ChooseFrom2 }}
                                </li>
                                <li>
                                    <strong> {{ t.ReadyMade3 }}</strong>
                                    {{ t.ChooseFrom3 }}
                                </li>
                                <li>
                                    <strong> {{ t.ReadyMade4 }}</strong>
                                    {{ t.ChooseFrom4 }}
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2 px-0"></div>
                    <div class="col-md-5 px-0">
                        <img
                            src="/assets/media/c2.jpeg"
                            class="rightImage w-100"
                            alt="right"
                        />
                    </div>
                </div>

                <div class="row w-100 gy-10 my-10">
                    <!--begin::Col-->
                    <div class="col-md-5 px-0">
                        <img
                            src="/assets/media/c3.jpeg"
                            class="rightImage w-100"
                            alt="right"
                        />
                    </div>
                    <div class="col-md-2 px-0"></div>
                    <div class="col-md-5 alignCenter px-5">
                        <div class="position-relative text-right mb-17">
                            <!--begin::Title-->
                            <h3
                                class="fs-2hx text-gray-900 mb-5 lineHight50"
                                id="how-it-works"
                                data-kt-scroll-offset="{default: 100, lg: 150}"
                            >
                                {{ t.WhyUs }}
                            </h3>
                            <ul class="ulWhatWeOffer">
                                <li>
                                    <strong> {{ t.WhyUsS1 }}</strong>
                                    {{ t.WhyUsLi1 }}
                                </li>
                                <li>
                                    <strong> {{ t.WhyUsS2 }}</strong>
                                    {{ t.WhyUsLi2 }}
                                </li>
                                <li>
                                    <strong> {{ t.WhyUsS3 }}</strong>
                                    {{ t.WhyUsLi3 }}
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row w-100 gy-10 my-10">
                    <div class="col-md-5 alignCenter px-5">
                        <div class="position-relative text-right mb-17">
                            <h3
                                class="fs-2hx text-gray-900 mb-5 lineHight30"
                                id="how-it-works"
                                data-kt-scroll-offset="{default: 100, lg: 150}"
                            >
                                {{ t.OurVision }}
                            </h3>
                            <p class="Paragr grayColor mt-10">
                                {{ t.OurVisionDes }}
                            </p>
                        </div>
                    </div>
                    <div class="col-md-2 px-0"></div>
                    <div class="col-md-5 px-0">
                        <img
                            src="/assets/media/c4.jpeg"
                            class="rightImage w-100"
                            alt="right"
                        />
                    </div>
                </div>
                <div class="row w-100 gy-10 my-10">
                    <div class="col-md-12 text-center mb-10">
                        <a
                            href="#"
                            class="btn btn-color-primary btn-active-light-primary btn-light px-20 py-5"
                            style="background: #f3f8fa; font-weight: bold"
                            >{{ t.ContactUs }}</a
                        >
                    </div>
                </div>
            </div>
            <div class="featurs YourNumbers">
                <div class="container mb-20">
                    <div class="row w-100 gy-10 mb-md-20 py-10">
                        <div class="col-md-12 text-center mt-0">
                            <div class="position-relative">
                                <h1
                                    class="text-white lh-base fw-bold fs-2x fs-lg-2x my-8"
                                >
                                    {{ t.YourNumbers }}
                                </h1>
                            </div>
                        </div>
                        <div class="col-md-12 mb-10">
                            <div class="row">
                                <div class="col-md-4 mb-0">
                                    <div class="cardFeatur">
                                        <h6 class="fs-2x">+ 100000</h6>
                                        <p>
                                            {{ t.CreatedCV }}
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-0">
                                    <div class="cardFeatur">
                                        <h6 class="fs-2x">+ 100000</h6>
                                        <p>
                                            {{ t.Coverlettercreated }}
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-0">
                                    <div class="cardFeatur">
                                        <h6 class="fs-2x">+ 100000</h6>
                                        <p>
                                            {{ t.CreatedCV }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from "axios";
import { mapActions, mapState } from "vuex";
import { api } from "../../../axiosUser";
import Companies from "../layout/Companies.vue";
import TitleHead from "../layout/TitleHead.vue";
export default {
    name: "about",
    components: {
        TitleHead,
        Companies,
    },
    data() {
        return {
            // t: window.translations,
            translations: window.translations,
            items: [],
        };
    },

    created() {},

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

        t() {
          return this.$store.getters.getTranslations;
        },
    },

    methods: {
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
<style type="text/css"></style>
