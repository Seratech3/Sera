<template>
    <div class="container">
        <div class="row w-100 gy-10">
            <!--begin::Col-->

            <div class="col-md-12 alignCenter px-5">
                <div class="position-relative text-right mt-5 mb-12">
                    <!--begin::Title-->
                    <h3
                        class="fs-2rem text-gray-900 mb-1 lineHight50"
                        id="how-it-works"
                        data-kt-scroll-offset="{default: 100, lg: 150}"
                    >
                        {{ t.Start_now_creating }}
                        <div class="vectorSpan2 moveColor">
                            {{ t.free_templates }}
                            <img
                                src="/assets/media/vector2.png"
                                class="vectorImg2"
                                alt="vectorImg2"
                            />
                        </div>
                    </h3>
                    <p class="Paragr grayColor mt-0">
                        {{ t.youChange }}
                    </p>
                </div>
            </div>
        </div>

        <div class="row w-100 gy-10 mb-md-20">
            <div class="col-md-12 mt-0 mb-5 TabTemplates CreateCvTab">
                <div class="row">
                    <div class="col-md-4">
                        <ul class="nav nav-tabs row" id="myTab" role="tablist">
                           
                            <li class="nav-item col-6" role="presentation" v-for="(temp, index) in allTemplates" :key="id">
                                <button @click="getItemById(temp.id)"
                                    class="nav-link"  
                                    
                                    type="button"
                                    
                                ><!-- active -->
                                    <img
                                        :src="temp.logo"
                                        class="ccvTap"
                                        alt="ccv"
                                    />
                                </button>
                            </li>

                           
                        </ul>
                    </div>
                    <div class="col-md-8">
                        
                        <component :is="dynamicComponent"></component>

                    </div>
                </div>
            </div>
            <!--begin::Col-->
        </div>
    </div>
</template>

<script>
import axios from "axios";
import { mapActions, mapState } from "vuex";

export default {
    components: {},
    data() {
        return {
            // t: window.translations,
            languages: {},
            isLoading: false,
            socialMediaIcons: [],
            allTemplates:[],
            items:[],
            selectedTemplate: {},


            dynamicComponent: null,

            sectionTitles: {
              personalInfo: "Personal Information",
              summary: "Summary",
              employmentHistory: "Employment History",
              education: "Education",
              websitesAndSocialLinks: "Websites & Social Links",
              skills: "Skills",
            },
            personalInfo: {
              name: "John",
              job_title: "Software Developer",
              email: "john.doe@example.com",
              mobile: "+123456789",
              address: "123 Main St",
              city: "New York",
              country: "USA",
              postal_code: "10001",
              driving_license: "B",
              nationality: "American",
              place_of_birth: "New York",
              date_of_birth: "1990-01-01",
              logo: null,
              summary: "Experienced software developer...",
              employmentHistory: [
                {
                  job_title: "Frontend Developer",
                  employer: "Tech Company",
                  start_date: "2018-01-01",
                  end_date: "2020-12-31",
                  city: "San Francisco",
                  descriptions: "Developed and maintained user interfaces.",
                },

                {
                  job_title: "Frontend Developer2",
                  employer: "Tech Company2",
                  start_date: "2018-01-012",
                  end_date: "2020-12-30",
                  city: "San Francisco2",
                  descriptions: "Developed and maintained user interfaces2.",
                },
              ],
              education: [
                {
                  id: 1,
                  degree: "Bachelor's in Computer Science",
                  school: "University of California",
                  start_date: "2014-09-01",
                  end_date: "2018-06-01",
                  city: "Los Angeles",
                  descriptions: "Studied computer science and software development.",
                },
              ],
              websitesAndSocialLinks: [
                { id: 1, label: "LinkedIn", link: "https://linkedin.com" },
                { id: 2, label: "GitHub", link: "https://github.com" },
              ],
              skills: [
                {id: 1, skill: "JavaScript", level: "Expert" },
                {id: 2, skill: "Vue.js", level: "Advanced" },
              ],
            },

        };
    },

    mounted() {
        this.$store.dispatch("fetchSetting").then(() => {
             this.fetchItems();
        });
    },

    computed: {
        setting() {
            return this.$store.getters.getSetting;
        },

        locale() {
            return this.$route.params.locale;
        },

        t() {
            return this.$store.getters.getTranslations;
        },
    },

    methods: {


        compileTemplate() {
            console.log(this.selectedTemplate.content_html);

            this.dynamicComponent = {
              template: this.selectedTemplate.content_html,
              data: () => ({
                personalInfo: this.personalInfo,          
                sectionTitles: this.sectionTitles,       
              }),
            };
        },




         swalFunction(type , text){
          Swal.fire({
                text: text,
                icon: type,
                buttonsStyling: false,
                confirmButtonText: "Ok, got it!",
                customClass: {
                    confirmButton: "btn btn-primary"
                }
            });
        },



        async fetchItems() {
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
              this.items = this.ItemsOverall
              this.allTemplates = this.items.flatMap(item => item.templates);
              // this.selectedTemplate = this.allTemplates[0];

              



                // this.items = this.ItemsOverall.filter(item => item.type && item.type.name === "category_template");
                this.isLoading = false;

            })
            .catch(error => {
                this.swalFunction('error','Error happens, Please Try Again')
                this.isLoading = true;
            });
        },



        async getItemById(ID){

           let templateByID = this.allTemplates.find(t => t.id === ID);
            this.selectedTemplate = templateByID;
            console.log(this.selectedTemplate)

            this.compileTemplate()
            
        },


    },
};
</script>

<style scoped>
.app-content {
    padding-top: 0px !important;
}

i.bi,
i[class^="fonticon-"],
i[class*=" fonticon-"],
i[class^="fa-"],
i[class*=" fa-"],
i[class^="la-"],
i[class*=" la-"] {
    font-size: 2rem;
    color: #ced0d7;
}

.custom-body {
    display: flex;
    margin: auto;
}

.w-50px {
    width: 260px !important;
}

.background-custom {
    margin-top: 18px;
}

.ms-n1 {
    margin-left: -3rem !important;
}

.border-custom {
    border: 34px solid #eff2f9;
}

.rela-block {
    display: block;
    position: relative;
    margin: auto;
}
.rela-inline {
    display: inline-block;
    position: relative;
    margin: auto;
}
.floated {
    display: inline-block;
    float: left;
}
.abs-center {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, 0%);
    text-align: left;
    width: 88%;
}

.caps {
    text-transform: uppercase;
}
.page .justified {
    text-align: justify;
}
.page p.light {
    color: #777;
}
.page h2 {
    font-size: 30px;
    letter-spacing: 5px;
    font-weight: 600;
    color: #000;
}
.page h3 {
    font-size: 21px;
    font-weight: 600;
    color: #000;
}
.page {
    width: 100%;
    max-width: 1200px;
    margin: 0px auto;
    background-color: #fff;
    direction: ltr;
    text-align: left;
    zoom: 0.9;
    border-radius: 8px;
    box-shadow: 0px 3px 10px 0px rgb(0 0 0 / 12%);
    border: 1px solid #f1f1f4;
    overflow: hidden;
}
.top-bar {
    height: 220px;
    background-color: #848484;
    color: #fff;
}
.name {
    position: absolute;
    left: 44%;
    height: 220px;
    text-align: center;

    font-size: 30px;
    letter-spacing: 8px;
    width: 52%;
    font-weight: bold;
}
.name div {
    width: 100%;
}
.side-bar {
    position: absolute;
    top: 60px;
    left: 5%;
    width: 34%;
    background-color: #f7e0c1;
    padding: 320px 30px 50px;
    height: 96.1%;
}
.mugshot {
    position: absolute;
    top: 50px;
    left: 0%;
    height: auto;
    min-width: 100%;
    margin: 0 auto;
}
.mugshot .logo {
    margin: 0;
    width: 100%;
    position: relative;
    text-align: center;
}
.logo {
    position: absolute;
    height: 250px;
    width: 250px;
}
.logo .logo-svg {
    height: 100%;
    width: 100%;
    stroke: #000;
}
.logo .logo-text {
    position: absolute;
    top: 58%;
    right: 16%;

    font-size: 55px;
}
.social {
    padding-left: 40px;
    margin-bottom: 20px;
}
.social:before {
    content: "";
    position: absolute;
    top: 0px;
    left: 0px;
    height: 26px;
    width: 26px;
    background-size: cover !important;
}
.social.twitter:before {
    background: url("/assets/media/tweter.webp") center no-repeat;
}
.social.pinterest:before {
    background: url("/assets/media/p.webp") center no-repeat;
}
.social.linked-in:before {
    background: url("/assets/media/linkedIn.webp") center no-repeat;
}
.side-header {
    font-size: 18px;
    letter-spacing: 4px;
    font-weight: 600;
    margin: 60px auto 10px;
    padding-bottom: 5px;
    border-bottom: 1px solid #888;
}
.list-thing {
    padding-left: 25px;
    margin-bottom: 10px;
}
.content-container {
    margin-left: 38%;
    padding: 50px;
}
.content-container p {
    line-height: 20px;
}
.separator {
    height: 2px;
    width: 100%;
    background-color: #999;
    margin: 20px 0;
}
.long-margin {
    margin-bottom: 40px;
}
img.avatar {
    width: 75%;
    border-radius: 8px;
    margin: 0 auto;
    text-align: center;
}
.section-wrapper .skill-percentage {
    margin-bottom: 15px;
    position: relative;
}
.section-wrapper .skill-percentage::after {
    content: "";
    width: 100%;
    height: 6px;
    background: #4a4e51;
    display: block;
    margin-top: 8px;
}
.section-wrapper .skill-percentage::before {
    content: "";
    height: 6px;
    background: #ff9608;
    position: absolute;
    margin-top: 8px;
    bottom: 0;
}
.section-wrapper .skill-percentage:nth-child(1)::before {
    width: 80%;
    -webkit-animation: skill_1 0.6s ease;
    animation: skill_1 0.6s ease;
}
.section-wrapper .skill-percentage:nth-child(2)::before {
    width: 90%;
    -webkit-animation: skill_2 0.6s ease;
    animation: skill_2 0.6s ease;
}
.section-wrapper .skill-percentage:nth-child(3)::before {
    width: 50%;
    -webkit-animation: skill_3 0.6s ease;
    animation: skill_3 0.6s ease;
}
.section-wrapper .skill-percentage:nth-child(4)::before {
    width: 60%;
    -webkit-animation: skill_4 0.6s ease;
    animation: skill_4 0.6s ease;
}
.section-wrapper .skill-percentage:nth-child(5)::before {
    width: 70%;
    -webkit-animation: skill_5 0.6s ease;
    animation: skill_5 0.6s ease;
}
.section-wrapper .skill-percentage:nth-child(6)::before {
    width: 70%;
    -webkit-animation: skill_6 0.6s ease;
    animation: skill_6 0.6s ease;
}
.section-wrapper .skill-percentage:nth-child(7)::before {
    width: 70%;
    -webkit-animation: skill_6 0.6s ease;
    animation: skill_6 0.6s ease;
}
.section-wrapper ul {
    list-style: none;
    padding-left: 0;
}
</style>
