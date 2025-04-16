<template>
    <div>
        <!--begin::How It Works Section-->
        <div class="mb-n10 mb-lg-n20 z-index-2 mt-20 pt-20">
            <!--begin::Container-->
            <div class="container">
                <!--begin::Heading-->
                <div class="text-right mb-17">
                    <!--begin::Title-->
                    <h3
                        class="fs-2hx text-gray-900 mb-5 lineHight50"
                        id="how-it-works"
                        data-kt-scroll-offset="{default: 100, lg: 150}"
                    >
                        {{ t.template_group }}
                        <div class="vectorSpan2">
                            {{ t.professional_templates }}
                            <img
                                src="/assets/media/vector2.png"
                                class="vectorImg2"
                                alt="vectorImg2"
                            />
                        </div>
                        {{ t.create_cv }} <br />
                        {{ t.cv_in_minutes }}
                    </h3>
                    <!--end::Title-->
                    <!--begin::Text-->
                    <!-- <div class="fs-5 text-muted fw-bold">
                        Save thousands to millions of bucks by using single tool
                        <br />for different amazing and great useful admin
                    </div> -->
                    <!--end::Text-->
                </div>
            </div>
            <div>
                <div class="tns" style="direction: ltr">
                    <div
                        data-tns="true"
                        data-tns-nav-position="bottom"
                        data-tns-mouse-drag="true"
                        data-tns-controls="false"
                        data-tns-speed="2000"
                        data-tns-autoplay="false"
                        data-tns-autoplay-timeout="7000"
                        data-tns-loop="true"
                        data-tns-swipe-angle="false"
                        data-tns-nav-as-thumbnails="true"
                        data-tns-items="1"
                        data-tns-center="true"
                        data-tns-dots="true"
                        data-tns-responsive='{
                                "1200": {"items": 5},
                                "1000": {"items": 4},
                                "768": {"items": 3},
                                "576": {"items": 2},
                                "360": {"items": 1}
                            }'
                    >
                       

                        <!--begin::Item-->
                        <div class="text-center px-5 pt-5 pt-lg-5 px-lg-5" v-for="(temp, index) in allTemplates" :key="id">
                            <img
                                :src="temp.logo"
                                class="card-rounded shadow mw-100"
                                alt=""
                            />
                        </div>
                        <!--end::Item-->


                       
                    </div>
                </div>
            </div>
            <div class="container mb-20">
                <!--end::Heading-->
                <!--begin::Row-->
                <div class="row w-100 gy-10 mt-20">
                    <!--begin::Col-->
                    <div class="col-md-6 px-0">
                        <img
                            src="/assets/media/right.png"
                            class="rightImage w-100"
                            alt="right"
                        />
                    </div>
                    <div class="col-md-6 alignCenter px-5">
                        <div class="position-relative text-right mb-17">
                            <!--begin::Title-->
                            <h3
                                class="fs-2hx text-gray-900 mb-5 lineHight30"
                                id="how-it-works"
                                data-kt-scroll-offset="{default: 100, lg: 150}"
                            >
                                {{ t.cv_download_option }}
                                <span class="vectorSpan"
                                    >{{ t.formats }}
                                    <img
                                        src="/assets/media/vector.png"
                                        class="vectorImg"
                                        alt="vectorImg"
                                    />
                                </span>

                                {{ t.different }} {{ t.supported_formats }}
                            </h3>
                            <p class="Paragr grayColor mt-10">
                                {{ t.download_cv }}
                            </p>
                        </div>
                    </div>
                </div>

                <div class="row w-100 gy-10">
                    <!--begin::Col-->
                    <div class="col-md-6 alignCenter px-5">
                        <div class="position-relative text-right mb-17">
                            <!--begin::Title-->
                            <h3
                                class="fs-2hx text-gray-900 mb-5 lineHight30"
                                id="how-it-works"
                                data-kt-scroll-offset="{default: 100, lg: 150}"
                            >
                                {{ t.moret }}
                                <span class="vectorSpan">
                                    {{ t.sections16 }}
                                    <img
                                        src="/assets/media/vector.png"
                                        class="vectorImg"
                                        alt="vectorImg"
                                    />
                                </span>
                                {{ t.cv_designed_professionally }}
                                <br />

                                <!-- {{t.}} -->
                            </h3>
                            <p class="Paragr grayColor mt-10">
                                {{ t.add_your_info_easy }}
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 px-0">
                        <img
                            src="/assets/media/left.png"
                            class="rightImage w-100"
                            alt="right"
                        />
                    </div>
                </div>

                <div class="row w-100 gy-10">
                    <!--begin::Col-->
                    <div class="col-md-6 px-0">
                        <img
                            src="/assets/media/right2.png"
                            class="rightImage w-100"
                            alt="right"
                        />
                    </div>
                    <div class="col-md-6 alignCenter px-5">
                        <div class="position-relative text-right mb-17">
                            <!--begin::Title-->
                            <h3
                                class="fs-2hx text-gray-900 mb-5 lineHight50"
                                id="how-it-works"
                                data-kt-scroll-offset="{default: 100, lg: 150}"
                            >
                                {{ t.cv_analysis }}
                                <br />
                                {{ t.personalized_feedback }}
                                <div class="vectorSpan2 moveColor">
                                    {{ t.increase_success_chances }}
                                    <img
                                        src="/assets/media/vector2.png"
                                        class="vectorImg2"
                                        alt="vectorImg2"
                                    />
                                </div>
                            </h3>
                            <p class="Paragr grayColor mt-10">
                                {{ t.ai_powered_analysis }}
                            </p>
                        </div>
                    </div>
                </div>

              <!--   <div class="row w-100 gy-10 mt-5 pb-20">
                    <div class="position-relative pt-20 mt-20">
                        <img
                            src="/assets/media/bkVideo.png"
                            class="bkVideo"
                            alt="bkVideo"
                        />
                        <div class="video-container">
                            <iframe
                                width="100%"
                                style="height: 400px"
                                height="auto"
                                :src="
                                    setting && setting.video_url
                                        ? setting.video_url +
                                          '?rel=0&modestbranding=1&showinfo=0'
                                        : 'https://www.youtube.com'
                                "
                                frameborder="0"
                                allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen
                            >
                            </iframe>
                        </div>
                    </div>
                </div>
 -->
                <div class="row w-100 gy-10 mt-5 pb-20">
                    <div class="position-relative pt-20 mt-20">
                        <img
                            src="/assets/media/bkVideo.png"
                            class="bkVideo"
                            alt="bkVideo"
                        />
                        <div class="video-container">
                            <video
                                id="customVideo"
                                controls
                                poster="../../../../../public/assets/media/video.png"
                            >
                                <source
                                    :src="'/assets/video2.mp4'"
                                    type="video/mp4"
                                />
                            </video>
                        </div>
                    </div>
                </div>
            </div>
            <div class="featurs">
                <div class="container mb-20">
                    <div class="row w-100 gy-10 mb-md-20 py-0">
                        <div class="col-md-6 alignCenter mt-0">
                            <div class="position-relative">
                                <img
                                    alt="pattern"
                                    src="/assets/media/patern2.png"
                                    class="pattern"
                                />
                                <h1
                                    class="text-white lh-base fw-bold fs-2x fs-lg-3x mb-8"
                                >
                                    {{ t.unique_features }}
                                </h1>
                                <p class="Paragr">
                                    {{ t.enjoy_unique_features }}
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 mt-0 animateDiv">
                            <div class="row">
                                <div class="col-md-6 cardFeaturRight">
                                    <div class="cardFeatur mb-7">
                                        <img
                                            alt="f1"
                                            src="/assets/media/f1.png"
                                            class="f1"
                                        />
                                        <h6>{{ t.personal_account }}</h6>
                                        <p>
                                            {{ t.personal_account_description }}
                                        </p>
                                    </div>

                                    <div class="cardFeatur mb-7">
                                        <img
                                            alt="f1"
                                            src="/assets/media/f2.png"
                                            class="f1"
                                        />
                                        <h6>
                                            {{
                                                t.multiple_professional_templates
                                            }}
                                        </h6>
                                        <p>
                                            {{
                                                t.multiple_professional_templates_description
                                            }}
                                        </p>
                                    </div>
                                    <div class="cardFeatur">
                                        <img
                                            alt="f1"
                                            src="/assets/media/f2.png"
                                            class="f1"
                                        />
                                        <h6>
                                            {{
                                                t.multiple_professional_templates
                                            }}
                                        </h6>
                                        <p>
                                            {{
                                                t.multiple_professional_templates_description
                                            }}
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-6 cardFeaturLeft">
                                    <div class="cardFeatur mb-7">
                                        <img
                                            alt="f1"
                                            src="/assets/media/f3.png"
                                            class="f1"
                                        />
                                        <h6>{{ t.instant_preview }}</h6>
                                        <p>
                                            {{ t.instant_preview_description }}
                                        </p>
                                    </div>
                                    <div class="cardFeatur mb-7">
                                        <img
                                            alt="f1"
                                            src="/assets/media/f3.png"
                                            class="f1"
                                        />
                                        <h6>{{ t.instant_preview }}</h6>
                                        <p>
                                            {{ t.instant_preview_description }}
                                        </p>
                                    </div>
                                    <div class="cardFeatur">
                                        <img
                                            alt="f1"
                                            src="/assets/media/f3.png"
                                            class="f1"
                                        />
                                        <h6>{{ t.instant_preview }}</h6>
                                        <p>
                                            {{ t.instant_preview_description }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="py-10 py-lg-20 mb-20">
                <!--begin::Container-->
                <div class="container">
                    <!--begin::Heading-->
                    <div class="row">
                        <div class="col-md-3 alignCenter">
                            <div class="text-right position-relative">
                                <h3
                                    class="fs-2hx text-gray-900 mb-5"
                                    id="team"
                                    data-kt-scroll-offset="{default: 100, lg: 150}"
                                >
                                    {{ t.client_reviews }}
                                </h3>
                                <p class="Paragr grayColor w-100 mt-10">
                                    {{ t.discover_real_experiences }}
                                </p>
                                <img
                                    v-if="locale == 'ar'"
                                    alt="client"
                                    src="/assets/media/client.png"
                                    class="clientImg"
                                />

                                <img
                                    v-else
                                    alt="client"
                                    src="/assets/media/client_en.png"
                                    class="clientImg"
                                />
                            </div>
                        </div>
                        <div class="col-md-9 SliderTestomonial">
                            <!--begin::Slider-->

                            <div
                                class="tns tns-default overViewVisible"
                                style="direction: ltr"
                            >
                                <!--begin::Wrapper-->
                                <div
                                    data-tns="true"
                                    data-tns-loop="true"
                                    data-tns-swipe-angle="false"
                                    data-tns-speed="2000"
                                    data-tns-autoplay="true"
                                    data-tns-autoplay-timeout="18000"
                                    data-tns-controls="true"
                                    data-tns-nav="false"
                                    data-tns-items="1"
                                    data-tns-center="false"
                                    data-tns-dots="false"
                                    data-tns-prev-button="#kt_team_slider_prev"
                                    data-tns-next-button="#kt_team_slider_next"
                                    data-tns-responsive="{1200: {items: 3}, 992: {items: 2}}"
                                >
                                    <!--begin::Item-->
                                    <div
                                        class="d-flex flex-column justify-content-between dirRtl"
                                        v-for="(item, index) in items"
                                        :key="index"
                                    >
                                        <div class="ContentIN">
                                            <!--begin::Wrapper-->
                                            <div class="mb-7">
                                                <!--begin::Rating-->
                                                <div class="rating mb-6">
                                                    <img
                                                        alt="text"
                                                        src="/assets/media/text.png"
                                                        class="textImg"
                                                    />
                                                    <div
                                                        class="rating-label checked"
                                                    >
                                                        {{ item.rate }}
                                                        <i
                                                            class="ki-duotone ki-star fs-5"
                                                        ></i>
                                                    </div>
                                                </div>
                                                <!--end::Rating-->
                                                <!--begin::Title-->
                                                <div
                                                    class="fs-5 fw-bold text-gray-900 mb-3"
                                                >
                                                    {{ item.description }}
                                                </div>
                                                <!--end::Title-->
                                            </div>
                                            <!--end::Wrapper-->
                                            <!--begin::Author-->
                                            <div
                                                class="d-flex align-items-center"
                                            >
                                                <!--begin::Avatar-->
                                                <div
                                                    class="symbol symbol-circle symbol-50px me-5"
                                                >
                                                    <img
                                                        :src="item.logo"
                                                        class=""
                                                        alt=""
                                                    />
                                                </div>
                                                <!--end::Avatar-->
                                                <!--begin::Name-->
                                                <div class="flex-grow-1">
                                                    <a
                                                        href="#"
                                                        class="text-gray-900 fw-bold text-hover-primary fs-6"
                                                        >{{ item.name }}</a
                                                    >
                                                    <span
                                                        class="text-muted d-block fw-bold"
                                                        >{{
                                                            item.position
                                                        }}</span
                                                    >
                                                </div>
                                                <!--end::Name-->
                                            </div>
                                        </div>
                                        <!--end::Author-->
                                    </div>
                                </div>
                                <!--end::Wrapper-->
                                <!--begin::Button-->
                                <button
                                    class="btn btn-icon btn-active-color-primary"
                                    id="kt_team_slider_prev"
                                >
                                    <i class="ki-duotone ki-left fs-2x"></i>
                                </button>
                                <!--end::Button-->
                                <!--begin::Button-->
                                <button
                                    class="btn btn-icon btn-active-color-primary"
                                    id="kt_team_slider_next"
                                >
                                    <i class="ki-duotone ki-right fs-2x"></i>
                                </button>
                                <!--end::Button-->
                            </div>
                            <!--end::Slider-->
                        </div>
                    </div>
                </div>
                <!--end::Container-->
            </div>

            <!--end::Container-->
        </div>
    </div>
</template>

<script>
import axios from "axios";
import { mapActions, mapState } from "vuex";
import { api } from "../../../axiosUser";

export default {
    name: "Home",

    data() {
        return {
            // t: window.translations,
            items: [],
            items2: [],
            allTemplates:[],
        };
    },

    created() {},

    mounted() {

        this.$nextTick(() => {
            let url = window.location.origin;
            setTimeout(() => {
              this.loadScript(url + '/assets_user/js/scripts.bundle.js');
            }, 100);
          });



        this.$store.dispatch("fetchSetting").then(() => {
            this.fetchItems();
            this.fetchItemsTemplates();

        });

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
        initSlider() {
            const slider = window.tns({
                container: '.tns-default div[data-tns="true"]', // استهداف العنصر الصحيح
                loop: true,
                swipeAngle: false,
                speed: 2000,
                autoplay: true,
                autoplayTimeout: 18000,
                controls: true,
                nav: false,
                items: 1,
                center: false,
                dots: false,
                prevButton: "#kt_team_slider_prev",
                nextButton: "#kt_team_slider_next",
                responsive: {
                    1200: { items: 3 },
                    992: { items: 2 },
                },
            });

            setTimeout(() => {
                let stopButton = document.querySelector(
                    'button[data-action="stop"]'
                );
                if (stopButton) {
                    stopButton.style.display = "none";
                }
            }, 500);
        },


            loadScript(src) {
                  let script = document.createElement('script');
                  script.src = src;
                  script.async = true; 
                  document.body.appendChild(script);
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

        async fetchItems(page, query = "") {
            this.isLoading = true;
            await api
                .get("ItemsCategories/getAllItems", {
                    params: {
                        pagination: 0,
                        page: page,
                        type: "customer",
                    },
                })
                .then((response) => {
                    this.items = response.data.items;
                    this.isLoading = false;

                    this.$nextTick(() => {
                        let checkTns = setInterval(() => {
                            if (window.tns) {
                                clearInterval(checkTns);
                                this.initSlider(); 
                            }
                        }, 200);
                    });
                })
                .catch((error) => {
                    this.swalFunction("error", error);

                    this.isLoading = false;
                });
        },



           async fetchItemsTemplates() {
          this.isLoading = true;
            const typeList = ['category'];
            axios.get('/ItemsCategories/getAllItems', {
                params: {
                    pagination: 0,
                    type: "category_template",
                    order: 1,
                }
            })
            .then(response => {
              this.ItemsOverall = response.data.items;
              this.items2 = this.ItemsOverall
              this.allTemplates = this.items2.flatMap(item => item.templates);

                // this.items = this.ItemsOverall.filter(item => item.type && item.type.name === "category_template");
                this.isLoading = false;

            })
            .catch(error => {
                this.swalFunction('error','Error happens, Please Try Again')
                this.isLoading = true;
            });
        },


    },
};
</script>
<style type="text/css">
.video-container {
    width: 100%;
    height: 400px; /* تحديد الارتفاع */
    overflow: hidden; /* إخفاء المحتوى الزائد */
    position: relative;
}

video {
    width: 100%;
    height: 100%;
    object-fit: contain; /* تأكد من الحفاظ على الأبعاد الأصلية */
}
</style>