<template>
  
        <div class="d-flex flex-column flex-root app-root" id="kt_app_root">
            <!--begin::Page-->
            <div class="app-page flex-column flex-column-fluid" id="kt_app_page">
                <!--begin::Header-->
                <HeaderDashboard></HeaderDashboard>

                <!--end::Header-->
                <!--begin::Wrapper-->
                <div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper" style="margin-top: 30px;">
                    <!--begin::Wrapper container-->
                    <div class="app-container container-fluid d-flex">
                        <!--begin::Sidebar-->
                        <Menu v-if="$route.meta.isMenu"></Menu>
                        <!--end::Sidebar-->
                        <!--begin::Main-->
                        <div class="app-main flex-column flex-row-fluid" id="kt_app_main">

                             <router-view :key="$route.fullPath"></router-view>     

                        </div>
                        <!--end:::Main-->

                    </div>
                    <!--end::Wrapper container-->
                    <FooterDashboard></FooterDashboard>

                </div>
                <!--end::Wrapper-->
            </div>
            <!--end::Page-->
        </div>
        <!--end::App-->
        
        <!--begin::Scrolltop-->
        <div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
            <i class="ki-outline ki-arrow-up"></i>
        </div>

    
</template>

<script>
import HeaderDashboard from './HeaderDashboard.vue';
import FooterDashboard from './FooterDashboard.vue';
import Menu from './Menu.vue';
import store from './../../../storeUser';

import { mapActions } from 'vuex';

export default {
    components: {
        HeaderDashboard,
        FooterDashboard,
        Menu,
        store,
    },


    created(){
        
    },

     
 
    mounted() {

        let url = window.location.origin ;
        this.loadScript(url+'/assets/js/custom/apps/user-management/users/list/table.js');
        // this.loadScript(url+'/assets/plugins/custom/ckeditor/ckeditor-classic.bundle.js');
        
        // this.loadScript(url+'/assets/js/custom/apps/user-management/users/list/export-users.js');
        // this.loadScript(url+'/assets/js/custom/apps/user-management/users/list/add.js');
        


        this.fetchLanguages();
        this.fetchUser();





    },

   methods: {

    ...mapActions(['fetchLanguages']), // ربط دالة fetchLanguages هنا
    ...mapActions(['fetchUser']), // ربط دالة fetchLanguages هنا

    
    loadScript(src) {
      let script = document.createElement('script');
      script.src = src;
      script.async = true; // جعل التحميل غير متزامن لتحسين الأداء
      document.body.appendChild(script);
    },


   

  }
};
</script>

<style type="text/css">
    .app-header .app-header-secondary {
        background-image: none;
        background: #fdfdfd;
    }

    @media (min-width: 992px) {
    .app-header-primary {
        height: 88px;
    }
}

.app-wrapper{
    margin-top: -33px;
}


</style>