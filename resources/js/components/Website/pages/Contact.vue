<template>
    <div>
        <TitleHead :title="t.contact" :subtitle="t.weContact"></TitleHead>

        <div class="py-10 py-lg-20 my-0">
            <!--begin::Container-->
            <div class="container">
                <!--begin::Heading-->
                <div class="row">
                    <div class="col-md-4 alignCenter">
                        <div class="text-right position-relative">
                            <img
                                alt="Contact Us"
                                src="/assets/media/svg/brand-logos/logo.png"
                                class="logoContact"
                            />
                            <!-- <h3
                                class="fs-2hx text-gray-900 mb-5"
                                id="team"
                                data-kt-scroll-offset="{default: 100, lg: 150}"
                            >
                                {{ t.client_reviews }}
                            </h3> -->
                            <p class="Paragr grayColor w-100 mt-10">
                                {{ t.WeLove }}
                            </p>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-7">
                        <div class="card ContactFormDiv">
                            <form>
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label class="form-label">
                                            {{ t.fullName }}
                                        </label>
                                        <input
                                            type="text"
                                            name="full_name"
                                            autocomplete="off"
                                            class="form-control bg-transparent"
                                            v-model="formData.name"
                                            :placeholder="t.enterFullName"
                                        />
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">
                                            {{ t.email }}
                                        </label>
                                        <input
                                            type="email"
                                            name="email"
                                            autocomplete="off"
                                            v-model="formData.email"
                                            class="form-control bg-transparent"
                                            :placeholder="t.enterEmail"
                                        />
                                    </div>
                                </div>

                                <div class="row mb-3 mt-10">
                                    <div class="col-md-6">
                                        <label class="form-label">
                                            {{ t.phone }}</label
                                        >
                                        <input
                                            type="text"
                                            name="phone"
                                            autocomplete="off"
                                            v-model="formData.mobile"
                                            class="form-control bg-transparent"
                                            :placeholder="t.enterPhone"
                                        />
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">
                                            {{ t.organization }}</label
                                        >
                                        <input
                                            type="text"
                                            name="organization"
                                            v-model="formData.organization"
                                            autocomplete="off"
                                            class="form-control bg-transparent"
                                            :placeholder="t.enterOrganization"
                                        />
                                    </div>
                                </div>

                                <div class="mb-3 mt-10">
                                    <label class="form-label">{{
                                        t.message
                                    }}</label>
                                    <textarea
                                        name="message"
                                        class="form-control bg-transparent"
                                        rows="4"
                                        v-model="formData.message"
                                        :placeholder="t.enterMessage"
                                    ></textarea>
                                </div>

                                <div class="text-end mt-10">
                                    <a  @click="sendMessage()"
                                        href="#"
                                        id="kt_sign_in_submit"
                                        class="btn btn-primary"
                                    >
                                        <span class="indicator-label">{{
                                            t.submit
                                        }}</span>
                                        <span class="indicator-progress">
                                            {{ t.waitMessage }}
                                            <span
                                                class="spinner-border spinner-border-sm align-middle ms-2"
                                            ></span>
                                        </span>
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--end::Container-->
        </div>
    </div>
</template>

<script>
import axios from "axios";
import { mapActions, mapState } from "vuex";
import { api } from "../../../axiosUser";
import TitleHead from "../layout/TitleHead.vue";
export default {
    name: "about",
    components: {
        TitleHead,
    },
    data() {
        return {
            // t: window.translations,
            translations: window.translations,
            items: [],

            urlMessage:'Contacts/createItem2',
              formData:{
                message: '',
                organization:'',
                email:'',
                mobile:'',
                name:'',
              },
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


        resetData(){

            this.formData.name = '';
            this.formData.email = '';
            this.formData.mobile = '';
            this.formData.organization = '';
            this.formData.message = '';
        },


        sendMessage() {

          
          this.isLoading = true;

            axios.post(this.urlMessage,this.formData).then((response)=>{
                 this.isLoading = false;
                if(response.data.code == 200){
                   this.isLoading = false;
                   this.resetData()
                   this.swalFunction('success', response.data.message)

                }else{

                     let message = "Please Confirm Fill Data Success";

                    if(this.locale == 'ar'){
                        message = "يرجى التاكد من البيانات ";
                    }


                    this.isLoading = false;
                    this.swalFunction('info', message)
                }             
            
              }).catch(error => {

                    let message = "Please Confirm Fill Data Success";

                    if(this.locale == 'ar'){
                        message = "يرجى التاكد من البيانات ";
                    }



                    this.isLoading = false;
                    this.swalFunction('info', message)
                });

          
        },



    },
};
</script>
<style type="text/css"></style>
