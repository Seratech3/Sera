<template>
           
  <!--begin::Post-->
  <div class="content flex-column-fluid" id="kt_content">
    <!--begin::Card-->
    <div class="card">
      <!--begin::Card header-->
      
      <!--end::Card header-->
      <!--begin::Card body-->
      <div class="card-body py-4">
        <!--begin::Table-->
        <div v-if="isLoading">
          please wait ...
        </div>
        


          <div class="modal-body px-5 my-7">
          <form id="kt_modal_add_user_form" class="form" action="#">
            <div class="d-flex flex-column scroll-y px-5 px-lg-10" id="kt_modal_add_user_scroll" data-kt-scroll="true" data-kt-scroll-activate="true" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_modal_add_user_header" data-kt-scroll-wrappers="#kt_modal_add_user_scroll" data-kt-scroll-offset="300px">


             
            

             



         


                <div class="fv-row mb-7" v-for="lang in languages" :key="lang.locale">
                <label class="required fw-semibold fs-6 mb-2" :for="'key_words_' + lang.locale">{{ lang.name }} Keywords</label>
                <input type="text" :name="'key_words_' + lang.locale" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="Name" value="" v-model="formData['key_words_' + lang.lang]"   required />
              </div>
             
             
              <div class="fv-row mb-7" v-for="lang in languages" :key="lang.locale">
                <label class="required fw-semibold fs-6 mb-2" :for="'name_' + lang.locale">{{ lang.name }} Name</label>
                <input type="text" :name="'name_' + lang.locale" class="form-control form-control-solid mb-3 mb-lg-0" placeholdr="{{ lang.name }} Name" value="" v-model="formData['name_' + lang.lang]"   required />
              </div>


              <div class="fv-row mb-7" v-for="lang in languages" :key="lang.locale">
                <label class="required fw-semibold fs-6 mb-2">{{ lang.name }} Description</label>
                <textarea rows="6" id="messageContent" maxlength="250"
                   v-model="formData['description_' + lang.lang]" value=""
                    placeholdr="{{ lang.name }} Description" class="form-control " >     
                </textarea>
              </div>



              <div class="fv-row mb-7">
                <label class="required fw-semibold fs-6 mb-2">Mobile</label>
                <input type="text" name="mobile" v-model="formData.mobile" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="EX:00966556625489" maxlength="12" value="" required />
              </div>


              <div class="fv-row mb-7">
                <label class="required fw-semibold fs-6 mb-2">Email</label>
                <input type="text" name="mobile" v-model="formData.email" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="Email" maxlength="12" value="" required />
              </div>



              <div class="fv-row mb-7">
                <label class="required fw-semibold fs-6 mb-2">Facebook</label>
                <input type="url" name="mobile" v-model="formData.facebook" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="facebook"  value="" required />
              </div>


              <div class="fv-row mb-7">
                <label class="required fw-semibold fs-6 mb-2">Twitter</label>
                <input type="url" name="twitter" v-model="formData.twitter" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="twitter" maxlength="12" value="" required />
              </div>


              <div class="fv-row mb-7">
                <label class="required fw-semibold fs-6 mb-2">Instagram</label>
                <input type="url" name="mobile" v-model="formData.instagram" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="Instagram" maxlength="12" value="" required />
              </div>



              <div class="fv-row mb-7">
                <label class="required fw-semibold fs-6 mb-2">linkedIn</label>
                <input type="url" name="mobile" v-model="formData.linked_in" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="linkedIn" maxlength="12" value="" required />
              </div>



              <div class="fv-row mb-7">
                <label class="required fw-semibold fs-6 mb-2">Google Plus</label>
                <input type="url" name="mobile" v-model="formData.google_plus" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="google_plus" maxlength="12" value="" required />
              </div>


              <div class="fv-row mb-7">
                <label class="required fw-semibold fs-6 mb-2">YouTube</label>
                <input type="url"  v-model="formData.vedio" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="YouTube"  value="" required />
              </div>





               <div class="fv-row mb-7">
                <!--begin::Label-->
                <label class="d-block fw-semibold fs-6 mb-5">Image</label>
              
                <div class="image-input image-input-outline image-input-placeholder" data-kt-image-input="true">
                  <!--begin::Preview existing avatar-->

                  <div class="image-input-wrapper w-125px h-125px" :style="{'background-image': formData.logo ? `url(${formData.logo})` : 'url(/assets/avatar.svg)'}"></div>


                
                  <label class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow" data-kt-image-input-action="change" data-bs-toggle="tooltip" title="Change avatar">
                    <i class="ki-duotone ki-pencil fs-7">
                      <span class="path1"></span>
                      <span class="path2"></span>
                    </i>
                    <input type="file" name="avatar" @change="onFileChange" accept=".png, .jpg, .jpeg, .webp" />
                    <input type="hidden" name="avatar_remove" />
                  </label>
                  <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow" data-kt-image-input-action="cancel" data-bs-toggle="tooltip" title="Cancel avatar">
                    <i class="ki-duotone ki-cross fs-2">
                      <span class="path1"></span>
                      <span class="path2"></span>
                    </i>
                  </span>
                  <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow" data-kt-image-input-action="remove" data-bs-toggle="tooltip" title="Remove avatar">
                    <i class="ki-duotone ki-cross fs-2">
                      <span class="path1"></span>
                      <span class="path2"></span>
                    </i>
                  </span>
                </div>
                <div class="form-text">Allowed file types: png, jpg, jpeg.</div>
              </div>





            </div>
            <div class="text-center pt-10">
              <button type="submit" class="btn btn-primary" @click.prevent="addEditItem" :disabled="isLoading">
              <span  class="indicator-label">Submit</span>
              <span  class="indicator-progress">Please wait...
                <span class="spinner-border spinner-border-sm align-middle ms-2"></span>
              </span>
            </button>


          
            </div>
          </form>
        </div>

  
        <!--end::Table-->
      </div>
      <!--end::Card body-->
    </div>
    <!--end::Card-->
  </div>
  <!--end::Post-->







             
</template>

<script>
import axios from 'axios';
import Pagination from '../../layout/pagination.vue';
import Multiselect from 'vue-multiselect'

export default {
  components: {
    Pagination,Multiselect
  },
    data() {
        return {
          languages:{},
            totalItems: 0, // إجمالي العناصر (يمكن تحديثه بناءً على الاستجابة)
            currentPage: 1,
            selectedItems: [], // Selected items for deletion
            selectAll: false, // To track if all items are selected
            searchQuery: '', // الكلمة المفتاحية للبحث
            isLoading: false, // حالة التحميل
            items: [], 
            itemsPosition: [], 
            searchQuery: '',
            formData: {
                mobile: '',
                email: '',
                facebook: '',
                twitter: '',
                linked_in: '',
                instagram: '',
                google_plus: '',
                vedio: '',
                logo: '',
                logo_preview  :'./../assets/media/avatars/300-1.jpg',
            },

           

            ItemID: null, // المستخدم الذي يتم تعديله
            URL:'Settings/editItem',
        };
    },

    mounted() {
       this.getItemById() 

    },


  
    methods: {

       onFileChange(e) {
        this.logo = e.target.files[0];
            const file = e.target.files[0];
            if (file) {
                this.formData.logo = URL.createObjectURL(file);
            }
        },



        resetItem(){
          this.URL = 'Settings/editItem'
          this.formData.mobile=''
          this.formData.email=''
          this.formData.facebook=''
          this.formData.twitter=''
          this.formData.instagram=''
          this.formData.linked_in=''
          this.formData.google_plus=''
          this.formData.vedio=''
          this.formData.logo=''
          this.logo_preview ='./../assets/companies/img/store-logo.jpg'

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


       


       


        addEditItem() {

          
          this.isLoading = true;

          const config = {
                  headers: {
                      'content-type': 'multipart/form-data'
                  }
              }

            let form = new FormData();
            
              form.append('mobile', this.formData.mobile);
              form.append('email', this.formData.email);
              form.append('facebook', this.formData.facebook);
              form.append('instagram', this.formData.instagram);
              form.append('twitter', this.formData.twitter);
              form.append('linked_in', this.formData.linked_in);
              form.append('google_plus', this.formData.google_plus);
              form.append('vedio', this.formData.vedio);


               this.languages.forEach((element) => { 
                    form.append( 'name_' + element.lang ,this.formData['name_'+element.lang] ); 
                    form.append( 'key_words_' + element.lang ,this.formData['key_words_'+element.lang]); 
                    form.append( 'description_' + element.lang ,this.formData['description_'+element.lang] ); 
                    
              });




              if (this.logo) {
                form.append('logo', this.logo);
              }
           
            if(this.ItemID != ''){
               form.append('Item_id', this.ItemID);
            }

             
          axios.post(this.URL,form,config).then((response)=>{
                 this.isLoading = false;
                if(response.data.items){
                   this.swalFunction('success',response.data.message)
                    this.getItemById()           

                }else{
                  this.isLoading = false;
                    swal.fire({
                    text: response.data.message,
                    icon: 'error',
                    timer: false,
                    button: true
                    });

                }             
            
          }).catch(error => {
            this.isLoading = false;
                    this.swalFunction('error',error)
                });

          
        },


        
        async getItemById(){

            axios.get('Settings/getById', { params: { ID: this.ItemID } }).then(response => {
                if(response.data){
                  let data = response.data.items
                   this.formData = data;
                   this.languages = this.$store.state.languages ;

                    data.translations.forEach((element) => { 
                              this.formData['name_'+element.locale] = element.name; 
                              this.formData['key_words_'+element.locale] = element.key_words; 
                              this.formData['description_'+element.locale] = element.description; 
                        });

                }else{
                    Swal.fire({
                        text: "Error happens",
                        icon: "error",
                        buttonsStyling: false,
                        confirmButtonText: "Ok, got it!",
                        customClass: {
                            confirmButton: "btn btn-primary"
                        }
                    });
                }
            }).catch((error)=>{

                    this.swalFunction('error',error)    
            });
        },


     

        

        
     
    },

 
};
</script>

<style src="vue-multiselect/dist/vue-multiselect.min.css"></style>
<style>

.multiselect__option--highlight {
    background: #3ebdb1 !important;
    outline: none;
    color: #fff;}

    .multiselect__tag {
    background: #3ebdb1;}

    .multiselect__tag-icon:after {
    color: ##33a196;
    }




    ol, p, ul {
        line-height: 1.0;
    }


  .image-input-placeholder { background-image: url('assets/media/svg/files/blank-image.svg'); } [data-bs-theme="dark"] .image-input-placeholder { background-image: url('assets/media/svg/files/blank-image-dark.svg'); }



</style>