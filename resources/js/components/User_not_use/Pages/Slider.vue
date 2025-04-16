<template>
  <div>
  

  <div class="py-10 py-lg-20">
      <!--begin::Container-->
      <div class="container">
          <!--begin::Heading-->
          <div class="text-center mb-12">
              <!--begin::Title-->
              <h3 class="fs-2hx text-gray-900 mb-5" id="team" data-kt-scroll-offset="{default: 100, lg: 150}">Our Template</h3>
              <!--end::Title-->
              <!--begin::Sub-title-->
             
              <!--end::Sub-title=-->
          </div>
          <!--end::Heading-->
          <!--begin::Slider-->
          <div class="tns tns-default" style="direction: ltr">
              <!--begin::Wrapper-->
              <div data-tns="true" data-tns-loop="true" data-tns-swipe-angle="false" data-tns-speed="2000" data-tns-autoplay="true" data-tns-autoplay-timeout="18000" data-tns-controls="true" data-tns-nav="false" data-tns-items="1" data-tns-center="false" data-tns-dots="false" data-tns-prev-button="#kt_team_slider_prev" data-tns-next-button="#kt_team_slider_next" data-tns-responsive="{1200: {items: 3}, 992: {items: 2}}">
                  <!--begin::Item-->
                  <div class="text-center">
                      <!--begin::Photo-->
                      <div class="octagon mx-auto mb-5 d-flex w-200px h-200px bgi-no-repeat bgi-size-contain bgi-position-center" style="background-image:url('../../assets/media/avatars/300-1.jpg')"></div>
                      <!--end::Photo-->
                      <!--begin::Person-->
                      
                      <!--end::Person-->
                  </div>
                  <!--end::Item-->
                  <!--begin::Item-->
                  <div class="text-center">
                      <!--begin::Photo-->
                      <div class="octagon mx-auto mb-5 d-flex w-200px h-200px bgi-no-repeat bgi-size-contain bgi-position-center" style="background-image:url('../../assets/media/avatars/300-2.jpg')"></div>
                      <!--end::Photo-->
                      <!--begin::Person-->
                      
                      <!--end::Person-->
                  </div>
                  <!--end::Item-->
                  <!--begin::Item-->
                  <div class="text-center">
                      <!--begin::Photo-->
                      <div class="octagon mx-auto mb-5 d-flex w-200px h-200px bgi-no-repeat bgi-size-contain bgi-position-center" style="background-image:url('../../assets/media/avatars/300-5.jpg')"></div>
                      <!--end::Photo-->
                      <!--begin::Person-->
                      
                      <!--end::Person-->
                  </div>
                  <!--end::Item-->
                  <!--begin::Item-->
                 
                  <!--end::Item-->
                  <!--begin::Item-->
                  <div class="text-center">
                      <!--begin::Photo-->
                      <div class="octagon mx-auto mb-5 d-flex w-200px h-200px bgi-no-repeat bgi-size-contain bgi-position-center" style="background-image:url('../../assets/media/avatars/300-23.jpg')"></div>
                      <!--end::Photo-->
                      <!--begin::Person-->
                      
                      <!--end::Person-->
                  </div>
                  <!--end::Item-->
                  <!--begin::Item-->
                  <div class="text-center">
                      <!--begin::Photo-->
                      <div class="octagon mx-auto mb-5 d-flex w-200px h-200px bgi-no-repeat bgi-size-contain bgi-position-center" style="background-image:url('../../assets/media/avatars/300-12.jpg')"></div>
                     
                  </div>
                  <!--end::Item-->
                  <!--begin::Item-->
                  <div class="text-center">
                      <!--begin::Photo-->
                      <div class="octagon mx-auto mb-5 d-flex w-200px h-200px bgi-no-repeat bgi-size-contain bgi-position-center" style="background-image:url('../../assets/media/avatars/300-9.jpg')"></div>
                      
                  </div>
                  <!--end::Item-->
              </div>
              <!--end::Wrapper-->
              <!--begin::Button-->
              <button class="btn btn-icon btn-active-color-primary" id="kt_team_slider_prev">
                  <i class="ki-duotone ki-left fs-2x"></i>
              </button>
              <!--end::Button-->
              <!--begin::Button-->
              <button class="btn btn-icon btn-active-color-primary" id="kt_team_slider_next">
                  <i class="ki-duotone ki-right fs-2x"></i>
              </button>
              <!--end::Button-->
          </div>
          <!--end::Slider-->
      </div>
      <!--end::Container-->
  </div>



  </div>
</template>

<script>
  import axios from 'axios';

export default { 

  mounted() { 
  this.$nextTick(() => {
    let url = window.location.origin;
    setTimeout(() => {
      this.loadScript(url + '/assets_user/js/scripts.bundle.js');
    }, 100); // تأخير بسيط لتجنب مشاكل التزامن
  });
},


 methods: {

    
    loadScript(src) {
      let script = document.createElement('script');
      script.src = src;
      script.async = true; 
      document.body.appendChild(script);
    }
  }

  
};
</script>
