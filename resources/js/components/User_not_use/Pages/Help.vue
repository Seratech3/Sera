<template>
  <div>
    
    <!--begin::Alert-->
            <div class="alert alert-primary d-flex align-items-center p-5" style="border-color: white !important;">
                <!--begin::Icon-->
                <i class="ki-duotone ki-shield-tick fs-2hx text-success me-4"><span class="path1"></span><span class="path2"></span></i>
                <!--end::Icon-->

                <!--begin::Wrapper-->
                <div class="d-flex flex-column">
                    <!--begin::Title-->
                    <h4 class="mb-1 text-dark">Welcome In Here Contact </h4>
                    <!--end::Title-->

                    <!--begin::Content-->
                    <span> If you have any questions, please refer to the FAQ page. For inquiries beyond the listed questions, feel free to reach out by sending a direct message to our support team or contacting us through social media platforms .</span>
                    <!--end::Content-->
                </div>
                <!--end::Wrapper-->
            </div>
            <!--end::Alert-->










                <div id="kt_app_content" class="app-content ">
                    <!--begin::Hero card-->
                    <div class="card mb-12">
                        <!--begin::Hero body-->
                        <div class="card-body flex-column p-5">
                            <!--begin::Hero content-->
                            <div class="d-flex align-items-center h-lg-300px p-5 p-lg-15">
                                <!--begin::Wrapper-->
                                <div class="d-flex flex-column align-items-start justift-content-center flex-equal me-5">
                                    <!--begin::Title-->
                                    <h1 class="fw-bold fs-4 fs-lg-1 text-gray-800 mb-5 mb-lg-10">How Can We Help You?</h1>
                                    <!--end::Title-->

                                    <!--begin::Input group-->
                                    <div class="position-relative w-100">
                                        <i class="ki-outline ki-rocket fs-2 text-primary position-absolute top-50 translate-middle ms-8"></i>
                                        <textarea v-model="formData.mess" type="text" class="form-control fs-4 py-4 ps-14 text-gray-700 placeholder-gray-500 mw-500px" name="search" value="" placeholder="Send Message For Me, Enter To Send " @keyup.enter="sendMessage"></textarea>
                                    </div>
                                    <!--end::Input group-->
                                </div> 
                                <!--end::Wrapper-->

                                <!--begin::Wrapper-->
                                <div class="flex-equal d-flex justify-content-center align-items-end ms-5">
                                    <!--begin::Illustration-->
                                    <img :src="'../../assets_user/media/illustrations/sketchy-1/20.png'" alt="" class="mw-100 mh-125px mh-lg-275px mb-lg-n12">                 
                                    <!--end::Illustration-->
                                </div>
                                <!--end::Wrapper-->
                            </div>
                            <!--end::Hero content-->

                            
                        </div>
                        <!--end::Hero body-->
                    </div>
                    <!--end::Hero card--> 
              
                    <!--begin::Row-->
                        <div class="row g-5 mb-5 mb-lg-15 ">     
                            <!--begin::Col-->
                            <div class="col-sm-6 pe-lg-10">
                                <!--begin::Phone-->
                                <div class="bg-light card-rounded d-flex flex-column flex-center flex-center p-10 h-100">     
                                    <!--begin::Icon-->
                                    <i class="ki-outline ki-briefcase fs-3tx text-primary"></i>            <!--end::Icon-->

                                    <!--begin::Subtitle-->
                                    <h1 class="text-gray-900 fw-bold my-5">
                                        Let’s Speak
                                    </h1>
                                    <!--end::Subtitle-->

                                    <!--begin::Number-->
                                    <div class="text-gray-700 fw-semibold fs-2">
                                        {{setting.mobile}}
                                    </div>
                                    <!--end::Number-->
                                </div>
                                <!--end::Phone--> 
                            </div>
                            <!--end::Col-->

                            <!--begin::Col-->
                            <div class="col-sm-6 ps-lg-10">
                                <!--begin::Address-->
                                <div class="text-center bg-light card-rounded d-flex flex-column flex-center p-10 h-100">     
                                    <!--begin::Icon-->
                                    <i class="ki-outline ki-geolocation fs-3tx text-primary"></i>            <!--end::Icon-->

                                    <!--begin::Subtitle-->
                                    <h1 class="text-gray-900 fw-bold my-5">
                                        Let’s Email
                                    </h1>
                                    <!--end::Subtitle-->

                                    <!--begin::Description-->
                                    <div class="text-gray-700 fs-3 fw-semibold">
                                        {{setting.email}}
                                    </div>
                                    <!--end::Description-->
                                </div>
                                <!--end::Address--> 
                            </div>
                            <!--end::Col-->
                        </div>
                    <!--end::Row-->

                       
                </div>


                <Social></Social>


    



  </div>
</template>

<script>

import axios from 'axios';
import { mapActions, mapState } from 'vuex';
import Social from './Social.vue';


export default {
  name: 'Header',
  components: {
        Social,
    },

 
  data() {
    return {

         isLoading:false,
         urlMessage:'Contacts/createItem',
          formData:{
            mess: '',
          }
       
        }
    }, 

  computed: {

    user() {
      return this.$store.getters.getUser || {};
    },

    locale(){
        return this.$route.params.locale;
    },

    setting() {
      return this.$store.getters.getSetting;
    },
  },

 
  mounted() {
    this.$store.dispatch('fetchUser');
    this.$store.dispatch('fetchSetting');
  },


  methods : {


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

 
 
       sendMessage() {

          
          this.isLoading = true;

            axios.post(this.urlMessage,this.formData).then((response)=>{
                 this.isLoading = false;
                if(response.data.items){
                   this.isLoading = false;
                   this.formData.mess = ''
                   this.swalFunction('success', response.data.message)

                }else{
                  this.isLoading = false;
                    this.swalFunction('error','Error happens')
                }             
            
              }).catch(error => {
                this.isLoading = false;
                   this.swalFunction('error','Error happens')
                });

          
        },



    


  }


       
}
</script>
