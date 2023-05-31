<div class="leftside-menu">

                <!-- Brand Logo Light -->
                <a href="{{route('dashboard')}}" class="logo logo-light">
                    <span class="logo-lg">
                        <img src="assets/images/logo.png" alt="logo">
                    </span>
                    <span class="logo-sm">
                        <img src="assets/images/logo-sm.png" alt="small logo">
                    </span>
                </a>

                <!-- Brand Logo Dark -->
                <a href="{{route('dashboard')}}" class="logo logo-dark">
                    <span class="logo-lg">
                        <img src="assets/images/logo-dark.png" alt="dark logo">
                    </span>
                    <span class="logo-sm">
                        <img src="assets/images/logo-dark-sm.png" alt="small logo">
                    </span>
                </a>

                <!-- Sidebar Hover Menu Toggle Button -->
                <div class="button-sm-hover" data-bs-toggle="tooltip" data-bs-placement="right" title="Show Full Sidebar">
                    <i class="ri-checkbox-blank-circle-line align-middle"></i>
                </div>

                <!-- Full Sidebar Menu Close Button -->
                <div class="button-close-fullsidebar">
                    <i class="ri-close-fill align-middle"></i>
                </div>

                <!-- Sidebar -left -->
                <div class="h-100" id="leftside-menu-container" data-simplebar>
                    <!-- Leftbar User -->
                    <div class="leftbar-user">
                        <a href="pages-profile.html">
                            <img src="assets/images/users/avatar-1.jpg" alt="user-image" height="42" class="rounded-circle shadow-sm">
                            <span class="leftbar-user-name mt-2">Dominic Keller</span>
                        </a>
                    </div>

                    <!--- Sidemenu -->
                    <ul class="side-nav">

                        <li class="side-nav-item">
                            <div>
                                <a data-bs-toggle="" href="{{route('show-add-product')}}" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                                    <i class="uil-home-alt"></i>
                                    
                                    <span> Add Product </span>
                                </a>
                            </div>
                            <div>
                                <a data-bs-toggle="" href="{{route('all-product')}}" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                                    <i class="uil-home-alt"></i>
                                   
                                    <span> Products </span>
                                </a>
                            </div>
                            <div>
                                <a data-bs-toggle="" href="{{route('stockInBundlePage')}}" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                                    <i class="uil-home-alt"></i>
                                    
                                    <span> Make Stock In </span>
                                </a>
                            </div>
                            <div>
                                <a data-bs-toggle="" href="{{route('stockDetails')}}" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                                    <i class="uil-home-alt"></i>
                                    
                                    <span> Stock In </span>
                                </a>
                            </div>
                            <div>
                                <a data-bs-toggle="" href="{{route('stockOutBundle')}}" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                                    <i class="uil-home-alt"></i>
                                    
                                    <span> Make Stock Out </span>
                                </a>
                            </div>
                            <div>
                                <a data-bs-toggle="" href="{{route('stockOutDetails')}}" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                                    <i class="uil-home-alt"></i>
                                    
                                    <span> Stock Out </span>
                                </a>
                            </div>
                            <div>
                                <a data-bs-toggle="" href="{{route('challanPage')}}" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                                    <i class="uil-home-alt"></i>
                                    
                                    <span>Create Challans </span>
                                </a>
                            </div>
                            <div>
                                <a data-bs-toggle="" href="{{route('stockOutVoucher')}}" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                                    <i class="uil-home-alt"></i>
                                    
                                    <span> Challans </span>
                                </a>
                            </div>
                            <div>
                                <a data-bs-toggle="" href="{{route('addEmployeePage')}}" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                                    <i class="uil-home-alt"></i>
                                    
                                    <span> Add Employee </span>
                                </a>
                            </div>
                            <div>
                                <a data-bs-toggle="" href="{{route('employeeList')}}" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                                    <i class="uil-home-alt"></i>
                                    
                                    <span> Employee List</span>
                                </a>
                            </div>
                        </li>

                    </ul>

                    <div class="clearfix"></div>
                </div>
            </div>