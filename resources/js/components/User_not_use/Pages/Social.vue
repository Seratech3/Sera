<template>
  <div>
  

  <div id="kt_app_content" class="app-content">
    <div class="card">
      <div class="card-body p-lg-15">
        <div class="mb-17">
          <div class="d-flex flex-stack mb-5">
            <h3 class="text-gray-900">Video Tutorials</h3>
            <!-- <a href="#" class="fs-6 fw-semibold link-primary">View All Videos</a> -->
          </div>
          <div class="separator separator-dashed mb-9"></div>
          <div class="row g-10">
            

          <div class="col-md-4" v-for="(item, index) in items" :key="index">
            <div class="card-xl-stretch me-md-6">
              <!-- صندوق الخلفية مع الصورة -->
              <a style="cursor: pointer;" 
                class="d-block bgi-no-repeat bgi-size-cover bgi-position-center card-rounded position-relative min-h-175px mb-5" 
                :style="{ backgroundImage: 'url(' + item.thumbnail_url + ')' }"
                data-fslightbox="lightbox-video-tutorials" 
                :href="item.youtube_url" target="_blank" 
              >
                <!-- <img style="width: 50px;" 
                  :src="item.thumbnail_url" 
                  class="position-absolute top-50 start-50 translate-middle" 
                  alt="Video Thumbnail"
                /> -->
              </a>

              <!-- التفاصيل -->
              <div class="m-0">
                <a style="cursor:pointer;" :href="item.youtube_url" class="fs-4 text-gray-900 fw-bold text-hover-primary"target="_blank">
                  {{ item.name }}
                </a>
                <div class="fw-semibold fs-5 text-gray-600 my-4">
                  {{ item.description }}
                </div>
                <div class="fs-6 fw-bold" style="cursor:pointer;">
                  <a target="_blank" :href="item.youtube_url" class="text-gray-700 text-hover-primary">Date :</a>
                  <span class="text-muted">on {{ item.created_at }}</span>
                </div>
              </div>
            </div>
          </div>

            
           
           
          </div>
          <!--end::Row-->
        </div>
        <!--end::Section-->
        <!--begin::Card-->
        <div class="card mb-4 bg-light text-center">
          <!--begin::Body-->
          <div class="card-body py-12 custom-body" >
            <!--begin::Icon-->
             <div v-for="(icon, key) in socialMediaIcons" :key="key" class="mx-4">
                <a :href="icon.link" target="_blank">
                  <img :src="icon.image" class="h-30px my-2" alt="" />
                </a>
              </div>

           
            <!--end::Icon-->
          </div>
          <!--end::Body-->
        </div>
        <!--end::Card-->
      </div>
      <!--end::Body-->
    </div>
    <!--end::FAQ card-->
  </div>


  </div>
</template>
<script>
import axios from 'axios';
import { mapActions, mapState } from 'vuex';

export default {
  components: {},
  data() {
    return {
      languages: {},
      isLoading: false,
      socialMediaIcons: [],
      items:[],
    };
  },

  mounted() {
      this.$store.dispatch('fetchSetting').then(() => {
      this.updateSocialMediaIcons();
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
  },

  methods: { 

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



    updateSocialMediaIcons() {
      if (this.setting) {
        this.socialMediaIcons = [
          { link: this.setting.facebook, image: '/../../assets_user/media/svg/brand-logos/facebook-4.svg' },
          { link: this.setting.instagram, image: '../../assets_user/media/svg/brand-logos/instagram-2-1.svg' },
          { link: this.setting.google_plus, image: '../../assets_user/media/svg/brand-logos/google-icon.svg' },
          { link: this.setting.twitter, image: '../../assets_user/media/svg/brand-logos/twitter.svg' },
          { link: this.setting.vedio, image: '../../assets_user/media/svg/brand-logos/youtube-3.svg' },
          { link: this.setting.linked_in, image: '../../assets_user/media/svg/brand-logos/linkedin-1.svg' },
        ];
      }
    },



    async fetchItems(page,query = '') {
          this.isLoading = true;
            await axios.get('ItemsCategories/getAllItems', {
                params: {
                  pagination: 0,
                  page:page,
                  type: 'video',
                }
              })
                .then(response => {
                    this.items = response.data.items;
                    this.isLoading = false;
                })
                .catch(error => {
                  
                  this.swalFunction('error',error)

                   this.isLoading = false;
                });
        },



  },
};
</script>

<style>
  
  .app-content{
    padding-top: 0px !important;
  }

  i.bi, i[class^=fonticon-], i[class*=" fonticon-"], i[class^=fa-], i[class*=" fa-"], i[class^=la-], i[class*=" la-"] {
    font-size: 2rem;
    color: #ced0d7;

  }

  .custom-body{
    display: flex;
    margin: auto;
  }
</style>
