<template>
   
        <div id="kt_aside" class="aside card" data-kt-drawer="true" data-kt-drawer-name="aside" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '300px': '250px'}" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_aside_toggle">
            <!--begin::Aside menu-->
            <div class="aside-menu flex-column-fluid px-4">
                <!--begin::Aside Menu-->
                <div class="hover-scroll-overlay-y mh-100 my-5" id="kt_aside_menu_wrapper" data-kt-scroll="true" data-kt-scroll-activate="true" data-kt-scroll-height="auto" data-kt-scroll-dependencies="{default: '#kt_aside_footer', lg: '#kt_header, #kt_aside_footer'}" data-kt-scroll-wrappers="#kt_aside, #kt_aside_menu" data-kt-scroll-offset="{default: '5px', lg: '75px'}">
                    <!--begin::Menu-->
                    <div class="menu menu-column menu-rounded menu-sub-indention fw-semibold fs-6" id="#kt_aside_menu" data-kt-menu="true">
                        <!--begin:Menu item-->
                        
                        <!--end:Menu item-->
                        <!--begin:Menu item-->
                        <div class="menu-item pt-5">
                            <!--begin:Menu content-->
                            <div class="menu-content">
                                <span class="menu-heading fw-bold text-uppercase fs-7">Home </span>
                            </div>
                            <!--end:Menu content-->
                        </div>
                        <!--end:Menu item-->
                        <!--begin:Menu item-->
                        <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                            <!--begin:Menu link-->
                            <span class="menu-link">
                                <span class="menu-icon">
                                    <i class="ki-duotone ki-abstract-28 fs-2">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                    </i>
                                </span>
                                <span class="menu-title">User Management</span>
                                <span class="menu-arrow"></span>
                            </span>
                            <!--end:Menu link-->
                            <!--begin:Menu sub-->
                            <div class="menu-sub menu-sub-accordion">
                                <!--begin:Menu item-->
                                <div data-kt-menu-trigger="click" class="menu-item menu-accordion mb-1">
                                    <!--begin:Menu link-->

                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <router-link :to="`/${locale}/dashboard/user_management/admins`" class="menu-link">
                                            <span class="menu-bullet">
                                                <span class="bullet bullet-dot"></span>
                                            </span>
                                            <span class="menu-title">Admins List</span>
                                        </router-link>
                                        <!--end:Menu link-->
                                    </div>



                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <router-link :to="`/${locale}/dashboard/user_management/users`" class="menu-link">
                                            <span class="menu-bullet">
                                                <span class="bullet bullet-dot"></span>
                                            </span>
                                            <span class="menu-title">Users List</span>
                                        </router-link>
                                        <!--end:Menu link-->
                                    </div>


                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <router-link :to="`/${locale}/dashboard/user_management/roles`" class="menu-link">
                                            <span class="menu-bullet">
                                                <span class="bullet bullet-dot"></span>
                                            </span>
                                            <span class="menu-title">Roles List</span>
                                        </router-link>
                                        <!--end:Menu link-->
                                    </div>

                                </div>
                                <!--end:Menu item-->
                              
                            </div>
                            <!--end:Menu sub-->
                        </div>
                        <!--end:Menu item-->









                        <!--begin:Menu HR item-->
                        <!-- <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                            <span class="menu-link">
                                <span class="menu-icon">
                                    <i class="ki-duotone ki-address-book fs-2">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                        <span class="path3"></span>
                                    </i>
                                </span>
                                <span class="menu-title">HR </span>
                                <span class="menu-arrow"></span>
                            </span>
                           
                            <div class="menu-sub menu-sub-accordion">
                                <div class="menu-item">
                                     <div class="menu-item">
                                        <router-link :to="`/${locale}/dashboard/hr/departments`" class="menu-link">
                                            <span class="menu-bullet">
                                                <span class="bullet bullet-dot"></span>
                                            </span>
                                            <span class="menu-title">Depatments List</span>
                                        </router-link>
                                    </div>


                                    <div class="menu-item">
                                        <router-link :to="`/${locale}/dashboard/hr/sections`" class="menu-link">
                                            <span class="menu-bullet">
                                                <span class="bullet bullet-dot"></span>
                                            </span>
                                            <span class="menu-title">Sections List</span>
                                        </router-link>
                                    </div>




                                    <div class="menu-item">
                                        <router-link :to="`/${locale}/dashboard/hr/positions`" class="menu-link">
                                            <span class="menu-bullet">
                                                <span class="bullet bullet-dot"></span>
                                            </span>
                                            <span class="menu-title">Positions List</span>
                                        </router-link>
                                    </div>


                                    <div class="menu-item">
                                        <router-link :to="`/${locale}/dashboard/hr/employees`" class="menu-link">
                                            <span class="menu-bullet">
                                                <span class="bullet bullet-dot"></span>
                                            </span>
                                            <span class="menu-title">Employees List</span>
                                        </router-link>
                                    </div>


                                    <div class="menu-item">
                                        <router-link :to="`/${locale}/dashboard/hr/employee_positions`" class="menu-link">
                                            <span class="menu-bullet">
                                                <span class="bullet bullet-dot"></span>
                                            </span>
                                            <span class="menu-title">Employees Position List</span>
                                        </router-link>
                                    </div>



                                </div>
                                
                            </div>
                        </div> -->
                        <!--end:Menu HR item-->



                         <!--begin:Menu Master item-->
                        <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                            <!--begin:Menu link-->
                            <span class="menu-link">
                                <span class="menu-icon">
                                    <i class="ki-duotone ki-abstract-29">
                                 <span class="path1"></span>
                                 <span class="path2"></span>
                                </i>
                                </span>
                                <span class="menu-title">Master Data </span>
                                <span class="menu-arrow"></span>
                            </span>
                            <!--end:Menu link-->
                            <!--begin:Menu sub-->
                            <div class="menu-sub menu-sub-accordion">
                                <!--begin:Menu item-->
                                <div class="menu-item">
                                    <!--begin:Menu link-->
                                    <div class="menu-item">

                                        <div class="menu-item">
                                            <!--begin:Menu link-->
                                            <router-link :to="`/${locale}/dashboard/master_data/category/payments`" class="menu-link">
                                                <span class="menu-bullet">
                                                    <span class="bullet bullet-dot"></span>
                                                </span>
                                                <span class="menu-title">Payments List</span>
                                            </router-link>
                                            <!--end:Menu link-->
                                        </div>


                                        <div class="menu-item">
                                            <!--begin:Menu link-->
                                            <router-link :to="`/${locale}/dashboard/master_data/category/category_template`" class="menu-link">
                                                <span class="menu-bullet">
                                                    <span class="bullet bullet-dot"></span>
                                                </span>
                                                <span class="menu-title">Categories Tmplate List</span>
                                            </router-link>
                                            <!--end:Menu link-->
                                        </div>



                                        <div class="menu-item">
                                            <!--begin:Menu link-->
                                            <router-link :to="`/${locale}/dashboard/master_data/category/category`" class="menu-link">
                                                <span class="menu-bullet">
                                                    <span class="bullet bullet-dot"></span>
                                                </span>
                                                <span class="menu-title">Categories FAQ List</span>
                                            </router-link>
                                            <!--end:Menu link-->
                                        </div>



                                        <div class="menu-item">
                                            <!--begin:Menu link-->
                                            <router-link :to="`/${locale}/dashboard/master_data/category/faq`" class="menu-link">
                                                <span class="menu-bullet">
                                                    <span class="bullet bullet-dot"></span>
                                                </span>
                                                <span class="menu-title"> FAQ List</span>
                                            </router-link>
                                            <!--end:Menu link-->
                                        </div>


                                        



                                        <div class="menu-item">
                                            <!--begin:Menu link-->
                                            <router-link :to="`/${locale}/dashboard/master_data/category/tag`" class="menu-link">
                                                <span class="menu-bullet">
                                                    <span class="bullet bullet-dot"></span>
                                                </span>
                                                <span class="menu-title">Tags List</span>
                                            </router-link>
                                            <!--end:Menu link-->
                                        </div>



                                        <div class="menu-item">
                                            <!--begin:Menu link-->
                                            <router-link :to="`/${locale}/dashboard/master_data/category/video`" class="menu-link">
                                                <span class="menu-bullet">
                                                    <span class="bullet bullet-dot"></span>
                                                </span>
                                                <span class="menu-title">Vedios List</span>
                                            </router-link>
                                            <!--end:Menu link-->
                                        </div>


                                        <div class="menu-item">
                                            <!--begin:Menu link-->
                                            <router-link :to="`/${locale}/dashboard/master_data/category/customer`" class="menu-link">
                                                <span class="menu-bullet">
                                                    <span class="bullet bullet-dot"></span>
                                                </span>
                                                <span class="menu-title">My Customers</span>
                                            </router-link>
                                            <!--end:Menu link-->
                                        </div>


                                        <div class="menu-item">
                                            <!--begin:Menu link-->
                                            <router-link :to="`/${locale}/dashboard/master_data/category/coupon`" class="menu-link">
                                                <span class="menu-bullet">
                                                    <span class="bullet bullet-dot"></span>
                                                </span>
                                                <span class="menu-title">Coupons</span>
                                            </router-link>
                                            <!--end:Menu link-->
                                        </div>



                                        <div class="menu-item">
                                            <!--begin:Menu link-->
                                            <router-link :to="`/${locale}/dashboard/master_data/category/company`" class="menu-link">
                                                <span class="menu-bullet">
                                                    <span class="bullet bullet-dot"></span>
                                                </span>
                                                <span class="menu-title">companies Logo</span>
                                            </router-link>
                                            <!--end:Menu link-->
                                        </div>






                                        <div class="menu-item">
                                            <!--begin:Menu link-->
                                            <router-link :to="`/${locale}/dashboard/master_data/resume_template`" class="menu-link">
                                                <span class="menu-bullet">
                                                    <span class="bullet bullet-dot"></span>
                                                </span>
                                                <span class="menu-title">Resume Template </span>
                                            </router-link>
                                            <!--end:Menu link-->
                                        </div>



                                    </div>                               
                                </div>
                            </div>
                       
                        </div>
                         <!--end:Menu Master item-->



                       <!--begin:Menu item-->
                        <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                            <!--begin:Menu link-->
                            <span class="menu-link">
                                <span class="menu-icon">
                                    <i class="ki-duotone ki-abstract-28 fs-2">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                    </i>
                                </span>
                                <span class="menu-title">Settings Management</span>
                                <span class="menu-arrow"></span>
                            </span>
                            <!--end:Menu link-->
                            <!--begin:Menu sub-->
                            <div class="menu-sub menu-sub-accordion">
                                <!--begin:Menu item-->
                                <div data-kt-menu-trigger="click" class="menu-item menu-accordion mb-1">
                                    <!--begin:Menu link-->


                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <router-link :to="`/${locale}/dashboard/setting/contact`" class="menu-link">
                                            <span class="menu-bullet">
                                                <span class="bullet bullet-dot"></span>
                                            </span>
                                            <span class="menu-title">Contacts List</span>
                                        </router-link>
                                        <!--end:Menu link-->
                                    </div>




                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <router-link :to="`/${locale}/dashboard/setting/pages`" class="menu-link">
                                            <span class="menu-bullet">
                                                <span class="bullet bullet-dot"></span>
                                            </span>
                                            <span class="menu-title">Pages List</span>
                                        </router-link>
                                        <!--end:Menu link-->
                                    </div>


                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <router-link :to="`/${locale}/dashboard/setting/edit`" class="menu-link">
                                            <span class="menu-bullet">
                                                <span class="bullet bullet-dot"></span>
                                            </span>
                                            <span class="menu-title">Edit Settings</span>
                                        </router-link>
                                        <!--end:Menu link-->
                                    </div>






                                </div>
                                <!--end:Menu item-->
                              
                            </div>
                            <!--end:Menu sub-->
                        </div>
                        <!--end:Menu item-->

















                    <!--end::Menu-->
                    </div>


                </div>
               
            </div>

        </div>    


</template>

<script>
    export default {
       name : 'Menu',

       computed: {
    locale() {
        return this.$route.params.locale;
    }
}
    }
</script>
