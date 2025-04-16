<template>
           
  <!--begin::Post-->
  <div class="content flex-column-fluid" id="kt_content">
    <!--begin::Card-->
    <div class="card">
      <!--begin::Card header-->
      <div class="card-header border-0 pt-6">
        <!--begin::Card title-->
        <div class="card-title">
          <!--begin::Search-->
          <div class="d-flex align-items-center position-relative my-1">
            <i class="ki-duotone ki-magnifier fs-3 position-absolute ms-5">
              <span class="path1"></span>
              <span class="path2"></span>
            </i>
            <input v-model="searchQuery" @input="searchItems" type="text" data-kt-user-table-filter="search" class="form-control form-control-solid w-250px ps-13" placeholder="Search Item ..." />
          </div>
          <!--end::Search-->
        </div>
        <!--begin::Card title-->
        <!--begin::Card toolbar-->
        <div class="card-toolbar">
          <!--begin::Toolbar-->
          <div class="d-flex justify-content-end" data-kt-user-table-toolbar="base" v-if="selectedItems.length === 0">
          
           
            <button  v-if="routeSegment != 'video'" @click="getModalCreate()" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_add_item">
            <i class="ki-duotone ki-plus fs-2"></i>Add New</button>
            <!--end::Add user-->
          </div>
          <!--end::Toolbar-->
          <!--begin::Group actions-->
          <div class="d-flex justify-content-end align-items-center " v-if="selectedItems.length != 0" >
            <div class="fw-bold me-5">
            <span class="me-2" >{{ selectedItems.length }}</span>Selected</div>
            <button type="button" class="btn btn-light-danger margin-5"  @click="actionSelected('delete')">Delete Selected</button>
            <button type="button" class="btn btn-light-success margin-5"  @click="actionSelected('active')">Active</button>
            <button type="button" class="btn btn-light-secondary margin-5"  @click="actionSelected('not_active')">Not Active</button>
          </div>
          <!--end::Group actions-->
          
         
        </div>
        <!--end::Card toolbar-->
      </div>
      <!--end::Card header-->
      <!--begin::Card body-->
      <div class="card-body py-4">
        <!--begin::Table-->
        <div v-if="isLoading">
          please wait ...
        </div>
        <table v-else class="table align-middle table-row-dashed fs-6 gy-5" id="kt_table_users">
          <thead>
            <tr class="text-start text-muted fw-bold fs-7 text-uppercase gs-0">
              <th class="w-10px pe-2">
                <div class="form-check form-check-sm form-check-custom form-check-solid me-3">
                  <input class="form-check-input" type="checkbox" data-kt-check="true" data-kt-check-target="#kt_table_users .form-check-input" value="1" v-model="selectAll" @change="toggleAll" />
                </div>
              </th>
              <!-- <th class="min-w-125px">Type</th> -->
              
              <th v-if="routeSegment == 'coupon' " class="min-w-125px">Coupon</th>
              <th v-if="routeSegment == 'faq' " class="min-w-125px">Category</th>
              <th v-if="routeSegment == 'video' " class="min-w-125px">Video</th>
              <th v-if="routeSegment == 'company' " class="min-w-125px">Logo</th>
              <th class="min-w-125px" v-if="routeSegment != 'coupon' " >Name</th>
              <th class="min-w-125px">Status</th>
              <th class="min-w-125px">Joined Date</th>
              <th class="text-center min-w-100px">Actions</th>
            </tr>
          </thead>
          <tbody class="text-gray-600 fw-semibold">
            <tr v-for="(item, index) in items" :key="item.id">
              <td >
                <div class="form-check form-check-sm form-check-custom form-check-solid">
                  <input v-model="selectedItems" :value="item.id" class="form-check-input" type="checkbox"  />
                </div>
              </td>

              <td v-if="routeSegment == 'video' ">
                <a   class="d-block bgi-no-repeat bgi-size-cover bgi-position-center card-rounded position-relative min-h-175px mb-5" style="background-image:url('../../assets_user/media/stock/600x400/img-73.jpg');" data-fslightbox="lightbox-video-tutorials" :href="item.embed_url">
                  <img :src="item.thumbnail_url" class="position-absolute top-50 start-50 translate-middle" alt="" style="width: 70px;">
                </a>


              </td>



              <td v-if="routeSegment == 'company' ">
                
                  <img :src="item.logo" class="" alt="" style="width: 70px;">


              </td>


             <td v-if="routeSegment == 'faq' " class="align-items-center" style="margin-top: 15px;">
                <div class="d-flex flex-column">
                  <a href="#" class="text-gray-800 text-hover-primary mb-1" v-if="item.category">{{item.category.name}}</a>
                </div>
              </td>

             

              <td class="align-items-center" style="margin-top: 15px;">
                <!--begin:: Avatar -->
               
                <!--end::Avatar-->
                <!--begin::User details-->
                <div class="d-flex flex-column">
                  <a href="#" class="text-gray-800 text-hover-primary mb-1" v-if="routeSegment != 'coupon' ">{{item.name}}</a>
                  <a href="#" class="text-gray-800 text-hover-primary mb-1" v-if="routeSegment == 'coupon' ">{{item.coupon}}</a>
                </div>
                <!--begin::User details-->
              </td>
              <td>
                <div v-if="item.status=='active'" class="badge badge-light-success fw-bold">{{item.status}}</div>
                <div v-else class="badge badge-light-danger fw-bold">{{item.status}}</div>
              </td>
              <td>{{item.created_at}}</td>
             

              <td class="text-end">
                 <div class="d-flex flex-center rounded p-4 h-80px mb-1 overlay">
                      <div class="overlay-wrapper text-gray-600">
                          <i @click="getModalEdit(item)" class="ki-duotone ki-notepad-edit fs-2x"><span class="path1"></span><span class="path2"></span></i>
                        </div>

                        


                        <div class="overlay-wrapper text-gray-600" v-if="routeSegment != 'video'">
                          <i @click="deleteItem(item.id)" class="ki-duotone ki-trash-square fs-2x">
                           <span class="path1"></span>
                           <span class="path2"></span>
                           <span class="path3"></span>
                           <span class="path4"></span>
                          </i>
                        </div>
                            
                  </div>
              </td>
            </tr>
       
          </tbody>
        </table>

        <!-- <pagination begin  -->
        <pagination :totalItems="totalItems" :currentPage="currentPage" @page-changed="fetchItems"></pagination>
        <!-- <pagination end  -->

        <!--end::Table-->
      </div>
      <!--end::Card body-->
    </div>
    <!--end::Card-->
  </div>
  <!--end::Post-->









<!--begin::Modal - Add task-->
  <div class="modal fade" id="kt_modal_add_item" tabindex="-1" aria-hidden="true">
    <!--begin::Modal dialog-->
    <div class="modal-dialog modal-dialog-centered mw-650px">
      <!--begin::Modal content-->
      <div class="modal-content">
        <!--begin::Modal header-->
        <div class="modal-header" id="kt_modal_add_user_header">
          <!--begin::Modal title-->
          <h2 class="fw-bold">Add Edit Item</h2>
          <!--end::Modal title-->
          <!--begin::Close-->
          <div class="btn btn-icon btn-sm btn-active-icon-primary" data-kt-users-modal-action="close" @click="closeModal">
            <i class="ki-duotone ki-cross fs-1">
              <span class="path1"></span>
              <span class="path2"></span>
            </i>
          </div>
          <!--end::Close-->
        </div>


        <div class="modal-body px-5 my-7">
          <form id="kt_modal_add_user_form" class="form" action="#">
            <div class="d-flex flex-column scroll-y px-5 px-lg-10" id="kt_modal_add_user_scroll" data-kt-scroll="true" data-kt-scroll-activate="true" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_modal_add_user_header" data-kt-scroll-wrappers="#kt_modal_add_user_scroll" data-kt-scroll-offset="300px">

            <div v-if="routeSegment != 'coupon'">
             


             <div class="fv-row mb-7" v-if="routeSegment === 'faq' ">
                <label class="required fw-semibold fs-6 mb-2">Type</label>
                <multiselect class="" v-model="formData.category" tag-placeholder="Select " placeholder="Search ..." label="name" track-by="id" :options="itemsCategories" :multiple="false" :taggable="false" :options-limit="10" :allow-empty="false" ></multiselect>

              </div>
             


             
              

              <div class="fv-row mb-7" v-for="lang in languages" :key="lang.locale">
                
                <label v-if="routeSegment === 'faq' " class="required fw-semibold fs-6 mb-2" :for="'Question_' + lang.locale">{{ lang.name }} Question</label>

                <label v-else class="required fw-semibold fs-6 mb-2" :for="'name_' + lang.locale">{{ lang.name }} Name</label>


                <input type="text" :name="'name_' + lang.locale" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="Name" value="" v-model="formData['name_' + lang.lang]"   required />
              </div>

            

              <div class="fv-row mb-7" v-for="lang in languages" :key="lang.locale" v-if="routeSegment !== 'company' ">
                <label v-if="routeSegment === 'faq' " class="required fw-semibold fs-6 mb-2">{{ lang.name }} Answer</label>
                
                <label v-else class="required fw-semibold fs-6 mb-2">{{ lang.name }} Description</label>
                <textarea rows="6" id="messageContent" maxlength="250"
                   v-model="formData['description_' + lang.lang]" value=""
                    placeholdr="{{ lang.name }} Description" class="form-control " >     
                </textarea>
              </div>



              <div class="row mb-0" v-if="routeSegment == 'category' || routeSegment == 'category_template'">
                <label class="col-lg-4 col-form-label fw-semibold fs-6">Home</label>
                <div class="col-lg-8  align-items-center">
                  <div class="form-check form-check-solid form-switch form-check-custom fv-row">
                    <input class="form-check-input w-45px h-30px" v-model="formData.home" type="checkbox" id="allowmarketing" >
                    <label class="form-check-label" for="allowmarketing"></label>
                  </div>
                </div>
              </div>



              <div class="row mb-0" v-if="routeSegment == 'category_template'">
                <label class="col-lg-4 col-form-label fw-semibold fs-6">Order</label>
                <div class="col-lg-8  align-items-center">
                  <div class="form-check form-check-solid form-switch form-check-custom fv-row">
                    <input class="form-control" v-model="formData.order" type="number" id="allowmarketing" >
                    <label class="form-check-label" for="allowmarketing"></label>
                  </div>
                </div>
              </div>


              <div class="row mb-0" v-if="routeSegment == 'video'">
                <label class="col-lg-4 col-form-label fw-semibold fs-6">Youtube Url</label>
                  <div class="form-check form-check-solid form-switch form-check-custom fv-row">
                    <input class="form-control" v-model="formData.youtube_url" type="url" id="allowmarketing" >
                    <label class="form-check-label" for="allowmarketing"></label>
                  </div>
              </div> 


              <div class="fv-row mb-7"  v-if="routeSegment == 'customer' || routeSegment == 'company' ">
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
                    <input type="file" name="avatar" @change="onFileChange" accept=".png, .jpg, .jpeg" />
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



              <div class="row mb-0" v-if="routeSegment == 'customer'">
                <label class="col-lg-4 col-form-label fw-semibold fs-6">Rate</label>
                  <div class="form-check form-check-solid form-switch form-check-custom fv-row">
                    <input class="form-control" v-model="formData.rate" type="number" min="1" max="5" id="allowmarketing" >
                  </div>
              </div> 


              <div v-if="routeSegment == 'customer'"  class="fv-row mb-7" v-for="lang in languages" :key="lang.locale">
                
                <label class="required fw-semibold fs-6 mb-2" :for="'name_' + lang.locale">{{ lang.name }} Position</label>


                <input type="text" :name="'position_' + lang.locale" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="position" value="" v-model="formData['position_' + lang.lang]"   required />

              </div>


            </div>



              <div v-if="routeSegment == 'coupon'">
                  

                <div class="row mb-0">
                  <label class="col-lg-4 col-form-label fw-semibold fs-6">Coupon</label>
                    <div class="form-check form-check-solid form-switch form-check-custom fv-row">
                      <input class="form-control" v-model="formData.coupon" type="text" >
                    </div>
                </div> 


                <div class="row mb-0">
                  <label class="col-lg-4 col-form-label fw-semibold fs-6">Download number</label>
                    <div class="form-check form-check-solid form-switch form-check-custom fv-row">
                      <input class="form-control" v-model="formData.download" type="text" >
                    </div>
                </div> 






              </div>

            </div>



            <div class="text-center pt-10">
            <button type="submit" class="btn btn-primary" @click.prevent="addEditItem" :disabled="isLoading">
              <span  class="indicator-label">Submit</span>
              <span  class="indicator-progress">Please wait...
                <span class="spinner-border spinner-border-sm align-middle ms-2"></span>
              </span>
            </button>

              <button style="margin: 7px;" type="submit" class="btn btn-secondary" @click.prevent="closeModal">
              <span  class="indicator-label">Canacel</span>
              
            </button>

            </div>
          </form>
        </div>


      </div>
    </div>
  </div>
<!--begin::Modal - Add task-->







             
</template>

<script>


import axios from 'axios';
import Pagination from '../../layout/pagination.vue';
import { mapState } from 'vuex';
import Multiselect from 'vue-multiselect'


 
export default {
   props: ['category'],
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
            itemsCategories: [], 
            searchQuery: '',
            formData: {
                category:'',
                category_id:'',
                type_id:'',
                home:'',
                youtube_url:'',
               
                rate:'',
                logo: '',
                logo_preview  :'./../assets/media/avatars/300-1.jpg',
            }, 

            
            ItemID: null,
            URL:'ItemsCategories/createItem',
            routeSegment: this.category,
        };
    },


    mounted() {
       
        this.fetchItems(this.currentPage);
        
    },


   
    methods: {


       onFileChange(e) {
        this.logo = e.target.files[0];
            const file = e.target.files[0];
            if (file) {
                this.formData.logo = URL.createObjectURL(file);
            }
        },

    
        getModalCreate(){
          this.URL = 'ItemsCategories/createItem'
          this.resetItem();
          $('#kt_modal_add_item').modal('show');
          this.titleModal = 'اضافة جديد '
          this.fetchItemsCategories()
          // this.fetchItemsTypes()


        },
 
 
        getModalEdit(item){
            this.ItemID = item.id
            this.resetItem();
            $('#kt_modal_add_item').modal('show');
            this.titleModal = 'تعديل البيانات'
            this.getItemById() 
            this.URL = 'ItemsCategories/editItem'
            this.fetchItemsCategories()
            // this.fetchItemsTypes()
        },


      

        closeModal(){
            $('#kt_modal_add_item').modal('hide');
            this.URL = 'ItemsCategories/createItem'
            this.ItemID = null
            // this.resetMark();
        },


      

        resetItem(){
          this.formData =  {
                type:'',
                 logo:'',
                 rate:'',
                 order:'',
                 coupon:'',
                 download:'',
                logo_preview :'./../assets/companies/img/store-logo.jpg'
            }
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


        searchItems() {
          this.fetchItems(this.searchQuery); // استدعاء الدالة مع الكلمة المفتاحية
        },


        async fetchItems(page,query = '') {
          this.currentPage = page;
          this.isLoading = true;
            await axios.get('ItemsCategories/getAllItems', {
                params: {
                  search: this.searchQuery,  // تمرير قيمة البحث
                  pagination: 1,
                  page:page,
                  type: this.routeSegment,
                }
              })
                .then(response => {
                    this.items = response.data.items.data;
                    this.isLoading = false;
                    this.totalItems = response.data.items.total
                    this.languages = this.$store.state.languages ;
                })
                .catch(error => {
                   Swal.fire({
                text: error,
                icon: "error",
                buttonsStyling: false,
                confirmButtonText: "Ok, got it!",
                customClass: {
                    confirmButton: "btn btn-primary"
                }
            });

                   this.isLoading = false;
                });
        },

      


    
       

        addEditItem() {

      

               const config = {
                  headers: {
                      'content-type': 'multipart/form-data'
                  }
              }


           let form = new FormData();

            if(this.formData.category){
              form.append('category_id', this.formData.category.id);

            }



             if(this.routeSegment == 'faq'){
                form.append('category_id', this.formData.category.id);
             }




              form.append('position_ar', this.formData.position_ar);
              form.append('position_en', this.formData.position_en);
              form.append('type', this.routeSegment);
              form.append('rate', this.formData.rate);
              form.append('home', this.formData.home);
              form.append('youtube_url', this.formData.youtube_url);
              form.append('name_ar', this.formData.name_ar);
              form.append('name_en', this.formData.name_en);
              form.append('description_ar', this.formData.description_ar);
              form.append('description_en', this.formData.description_en);
              form.append('coupon', this.formData.coupon);
              form.append('download', this.formData.download);
              form.append('order', this.formData.order);
             
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
                    this.closeModal()
                    this.fetchItems()           

                }else{
                    this.swalFunction('error',response.data.message)
                }             
            
          }).catch(error => {
                  this.isLoading = false;
                    this.swalFunction('error',error)
                });

          
        },


         async fetchItemsCategories() {
            const typeList = ['category'];
            axios.get('/ItemsCategories/getAllItems?pagination=0', {
                params: {
                    pagination: 0,
                    object: this.routeSegment
                }
            })
            .then(response => {
                this.itemsCategories = response.data.items;
            })
            .catch(error => {
                console.log(error);
            });
        },



        

        async getItemById(){

            axios.get('ItemsCategories/getById', { params: { ID: this.ItemID } }).then(response => {
                if(response.data){
                  let data = response.data.items
                  let translations = response.data.items.translations
                  this.resetItem()

                  this.formData = data;
                  if(this.formData.home == 1 ){
                    this.formData.home = true
                  }
                  
                   translations.forEach((element) => { 
                              this.formData['name_'+element.locale] = element.name; 
                              this.formData['description_'+element.locale] = element.description; 
                              this.formData['position_'+element.locale] = element.position; 
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

                    swal({
                    text: 'Error happens',
                    icon: 'error',
                    timer: false,
                    button: true
                    });         
            });
        },


      


        deleteItem(id) {
          swal.fire({
            text: "Are you sure you want to delete this item?",
            icon: "warning",
            buttonsStyling: false,
            showDenyButton: true,
            confirmButtonText: "Yes",
            denyButtonText: 'No',
            customClass: {
              confirmButton: "btn btn-primary",
              denyButton: "btn btn-light-danger"
            }
          }).then((result) => {
            if (result.isConfirmed) {
              // إذا تم تأكيد الحذف
              axios.delete(`ItemsCategories/deleteItem/${id}`)
                .then(() => {
                  // this.items = this.items.filter(i => i.id !== item.id);
                  // this.ItemID = ''
                  this.swalFunction('success','The item has been deleted successfully.')
                  this.fetchItems()
                })
                .catch(error => {
                  swal.fire({
                    text: 'Error deleting the item. Please try again.', 
                    icon: 'error',
                    confirmButtonText: "Ok",
                    buttonsStyling: false,
                    customClass: {
                      confirmButton: "btn btn-light-primary"
                    }
                  });
                });
            } else if (result.isDenied) {
              // إذا تم رفض الحذف
              swal.fire({
                text: 'The deletion has been canceled.', 
                icon: 'info',
                confirmButtonText: "Ok",
                buttonsStyling: false,
                customClass: {
                  confirmButton: "btn btn-light-primary"
                }
              });
            }
          });
        },

       toggleAll() {
          if (this.selectAll) {
            this.selectedItems = this.items.map(item => item.id);
          } else {
            this.selectedItems = [];
          }

        },
      
        actionSelected(action) {


          swal.fire({
            text: "Are you sure you want to action this items?",
            icon: "warning",
            buttonsStyling: false,
            showDenyButton: true,
            confirmButtonText: "Yes",
            denyButtonText: 'No',
            customClass: {
              confirmButton: "btn btn-primary",
              denyButton: "btn btn-light-danger"
            }
          }).then((result) => {
            if (result.isConfirmed) {
              axios.delete(`ItemsCategories/deleteAllItem`, {
                  params: {
                    selectedItems: this.selectedItems.join(','),
                    action: action 
                  }
                })
                .then(() => {
                  
                  this.swalFunction('success','The item has been action successfully.')
                  this.fetchItems()
                   this.selectedItems = [];
                   this.selectAll = false;
                })
                .catch(error => {
                  swal.fire({
                    text: 'Error deleting the item. Please try again.', 
                    icon: 'error',
                    confirmButtonText: "Ok",
                    buttonsStyling: false,
                    customClass: {
                      confirmButton: "btn btn-light-primary"
                    }
                  });
                });
            } else if (result.isDenied) {
              // إذا تم رفض الحذف
              swal.fire({
                text: 'The deletion has been canceled.', 
                icon: 'info',
                confirmButtonText: "Ok",
                buttonsStyling: false,
                customClass: {
                  confirmButton: "btn btn-light-primary"
                }
              });
            }
          });
         
        },
      
     
  },


   watch: {
    // راقب تغيير المسار للتحديث عند الانتقال بين الصفحات
    '$route.params.category': {
      immediate: true, // تشغيل التحديث عند تحميل الصفحة
      handler(newVal) {
        // تحديث الـ breadcrumb بناءً على قيمة :object الجديدة
        this.$route.meta.breadcrumb = `${newVal.charAt(0).toUpperCase() + newVal.slice(1)}  Management`;
      }
    }
  },

 
};
</script>
<style src="vue-multiselect/dist/vue-multiselect.min.css"></style>
<style>

  .margin-5{
    margin: 5px;
  }

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

