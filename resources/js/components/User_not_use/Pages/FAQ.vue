<template>
  <div>
  

  <div id="kt_app_content" class="app-content">
    <!--begin::FAQ card-->
    <div class="card">
      <!--begin::Body-->
      <div class="card-body p-lg-15">
        <!--begin::Classic content-->
        <div class="mb-13">
          <!--begin::Intro-->
          <div class="mb-15">
            <!--begin::Title-->
            <h4 class="fs-2x text-gray-800 w-bolder mb-6">Frequesntly Asked Questions</h4>
            <!--end::Title-->
            <!--begin::Text-->
            <p class="fw-semibold fs-4 text-gray-600 mb-2">Creating a Resume highlights your skills and experience professionally. It includes personal information, a career summary, work experience, education, and skills. Ensure it's well-formatted and tailored to the target job.</p>
            <!--end::Text-->
          </div>
          <!--end::Intro-->
          <!--begin::Row-->
          <div class="row mb-12">
              <!--begin::Col-->
             <div class="col-md-6 pe-md-10 mb-10 mb-md-0" v-for="(itemArray, key) in items" :key="key">
                  <!-- عرض اسم الفئة مرة واحدة فقط لكل مجموعة -->
                  <h2 class="text-gray-800 fw-bold mb-4" v-if="itemArray.length > 0">{{ itemArray[0].category.name }}</h2>
                  
                  <div v-for="(item, index) in itemArray" :key="item.id">
                      <!--begin::Accordion-->
                      <!--begin::Section-->
                      <div class="m-0">
                        <!--begin::Heading-->
                        <div class="d-flex align-items-center collapsible py-3 toggle mb-0" 
                             :data-bs-toggle="`collapse`" 
                             :data-bs-target="`#kt_job_4_${key}_${index}`">
                          <!--begin::Icon-->
                          <div class="btn btn-sm btn-icon mw-20px btn-active-color-primary me-5">
                            <i class="fa" :class="index === 0 ? 'fa-minus-square' : 'fa-plus-square'"></i>
                          </div>
                          <!--end::Icon-->
                          <!--begin::Title-->
                          <h4 class="text-gray-700 fw-bold cursor-pointer mb-0">{{ item.name }}</h4>
                          <!--end::Title-->
                        </div>
                        <!--end::Heading-->
                        <!--begin::Body-->
                        <div :id="`kt_job_4_${key}_${index}`" 
                             :class="{'collapse': index !== 0, 'show': index === 0}" 
                             class="fs-6 ms-1">
                          <!--begin::Text-->
                          <div class="mb-4 text-gray-600 fw-semibold fs-6 ps-10">{{ item.description }}</div>
                          <!--end::Text-->
                        </div>
                        <!--end::Content-->
                        <!--begin::Separator-->
                        <div class="separator separator-dashed"></div>
                        <!--end::Separator-->
                      </div>
                      <!--end::Section-->
                      
                      <!--end::Accordion-->
                  </div>
              </div>

              <!--end::Col-->
            
          </div>
          <!--end::Row-->
          <!--begin::Row-->
          
          <!--end::Row-->
        </div>
        <!--end::Classic content-->
       <Social></Social>
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
import Social from './Social.vue';


export default {
  components: {
    Social
  },
    data() {
        return {
            languages:{},
            isLoading: false, 
            items: [], 
            searchQuery: '',
        };
    },


    mounted() {
       
        this.fetchItems();
        this.$store.dispatch('fetchSetting');
        
    },


    computed: {
    setting() {
      return this.$store.getters.getSetting;
    },

 

    locale(){
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




      async fetchItems() {
          this.isLoading = true;
            await axios.get('ItemsCategories/getAllItems', {
                params: {
                  search: this.searchQuery,
                  pagination: 0,
                  type: 'faq',
                  groupBy: 'category_id',
                }
              })
                .then(response => {
                    this.items = response.data.items;
                    this.isLoading = false;
                    this.languages = this.$store.state.languages ;
                })
                .catch(error => {
                  this.swalFunction('error',error)
                   this.isLoading = false;
                });
        },


    },


}
</script>
<style>
  
  .app-content{
    padding-top: 0px !important;
  }

  i.bi, i[class^=fonticon-], i[class*=" fonticon-"], i[class^=fa-], i[class*=" fa-"], i[class^=la-], i[class*=" la-"] {
    font-size: 2rem;
    color: #ced0d7;

  }
</style>
