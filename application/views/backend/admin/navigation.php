<!-- Left navbar-header -->
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse slimscrollsidebar">
        <ul class="nav" id="side-menu">
            <li class="sidebar-search hidden-sm hidden-md hidden-lg">
                <!-- input-group -->
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control" placeholder="Search..."> <span class="input-group-btn">
            <button class="btn btn-default" type="button"> <i class="fa fa-search"></i> </button>
            </span></div>
                <!-- /input-group -->
            </li>
            <li class="user-pro">

                <?php
                $key = $this->session->userdata('login_type') . '_id';
                $face_file = 'uploads/' . $this->session->userdata('login_type') . '_image/' . $this->session->userdata($key) . '.jpg';
                if (!file_exists($face_file)) {
                    $face_file = 'uploads/default.jpg';
                }
                ?>

                <a href="#" class="waves-effect"><img src="<?php echo base_url() . $face_file; ?>" alt="user-img"
                                                      class="img-circle"> <span class="hide-menu">

                       <?php
                       $account_type = $this->session->userdata('login_type');
                       $account_id = $account_type . '_id';
                       $name = $this->crud_model->get_type_name_by_id($account_type, $this->session->userdata($account_id), 'name');
                       echo $name;
                       ?>


                        <span class="fa arrow"></span></span>

                </a>
                <ul class="nav nav-second-level">
                    <li><a href="javascript:void(0)"><i class="ti-user"></i> My Profile</a></li>
                    <li><a href="javascript:void(0)"><i class="ti-email"></i> Inbox</a></li>
                    <li><a href="javascript:void(0)"><i class="ti-settings"></i> Account Setting</a></li>
                    <li><a href="<?php echo base_url(); ?>login/logout"><i class="fa fa-power-off"></i> Logout</a></li>
                </ul>
            </li>


            <!---  Permission for Admin Dashboard starts here ------>
            <?php $check_admin_permission = $this->db->get_where('admin_role', array('admin_id' => $this->session->userdata('login_user_id')))->row()->dashboard; ?>
            <?php if ($check_admin_permission == '1'): ?>
                <li><a href="<?php echo base_url(); ?>admin/dashboard" class="waves-effect"><i
                                class="ti-dashboard p-r-10"></i> <span
                                class="hide-menu"><?php echo get_phrase('Dashboard'); ?></span></a></li>
            <?php endif; ?>
            <!---  Permission for Admin Dashboard ends here ------>

            <!--Add Sale-->
            <?php $check_admin_permission = $this->db->get_where('admin_role', array('admin_id' => $this->session->userdata('login_user_id')))->row()->manage_academics; ?>
            <?php if ($check_admin_permission == '1'): ?>
                <li><a href="<?php echo base_url(); ?>admin/add_sale" class="waves-effect"><i class="fa fa-cart-plus p-r-10 text-success "></i> <span
                                class="hide-menu text-success"><?php echo get_phrase('Sale'); ?></span></a></li>
            <?php endif; ?>

            <!--Record Delivery-->
            <?php $check_admin_permission = $this->db->get_where('admin_role', array('admin_id' => $this->session->userdata('login_user_id')))->row()->manage_academics; ?>
            <?php if ($check_admin_permission == '1'): ?>
                <li><a href="<?php echo base_url(); ?>admin/record_delivery" class="waves-effect"><i
                                class="fa fa-archive p-r-10 text-success"></i> <span
                                class="hide-menu  text-success"><?php echo get_phrase('Record Delivery'); ?></span></a></li>
            <?php endif; ?>

            <!--Add Product-->
            <?php $check_admin_permission = $this->db->get_where('admin_role', array('admin_id' => $this->session->userdata('login_user_id')))->row()->manage_academics; ?>
            <?php if ($check_admin_permission == '1'): ?>
                <li><a href="<?php echo base_url(); ?>admin/add_product" class="waves-effect"><i
                                class="fa fa-plus p-r-10 text-success"></i> <span
                                class="hide-menu  text-success"><?php echo get_phrase('Add SKU'); ?></span></a></li>
            <?php endif; ?>

            <!--Stock Transactions-->
            <?php $check_admin_permission = $this->db->get_where('admin_role', array('admin_id' => $this->session->userdata('login_user_id')))->row()->manage_academics; ?>
            <?php if ($check_admin_permission == '1'): ?>
                <li><a href="<?php echo base_url(); ?>admin/stock_transactions" class="waves-effect"><i
                                class="fa fa-exchange p-r-10 text-success"></i> <span
                                class="hide-menu  text-success"><?php echo get_phrase('Stock Transactions'); ?></span></a></li>
            <?php endif; ?>

            <!---  Permission for Admin Manage Academics starts here ------>
            <?php $check_admin_permission = $this->db->get_where('admin_role', array('admin_id' => $this->session->userdata('login_user_id')))->row()->manage_academics; ?>
            <?php if ($check_admin_permission == '1'): ?>
                <li><a href="javascript:void(0);" class="waves-effect"><<i data-icon="&#xe006;"
                                                                           class="fa fa-fax p-r-10"></i> <span
                                class="hide-menu"> <?php echo get_phrase('New Sales'); ?> <span class="fa arrow"></span></span></a>
                    <ul class=" nav nav-second-level<?php
                    if ($page_name == 'Pet' ||
                        $page_name == 'list_enquiry' ||
                        $page_name == 'RGB' || $page_name == 'water' ||
                        $page_name == 'energy_drink' ||
                        $page_name == 'juice') echo 'opened active';
                    ?> ">

                        <li class="<?php if ($page_name == 'Pet') echo 'active'; ?>">

                            <a href="<?php echo base_url(); ?>admin/Pet">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('PET(Plastic)'); ?></span>

                            </a>
                        </li>


                        <li class="<?php if ($page_name == 'RGB') echo 'active'; ?>">
                            <a href="<?php echo base_url(); ?>admin/RGB">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('RGB'); ?></span>
                            </a>
                        </li>

                        <li class="<?php if ($page_name == 'energy_drink') echo 'active'; ?> ">
                            <a href="<?php echo base_url(); ?>admin/energy_drink">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"> <?php echo get_phrase('Energy Drink'); ?></span>
                            </a>
                        </li>


                        <li class="<?php if ($page_name == 'juice') echo 'active'; ?>">
                            <a href="<?php echo base_url(); ?>admin/juice">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('Juice MinuteMaid'); ?></span>
                            </a>
                        </li>


                        <li class="<?php if ($page_name == 'water') echo 'active'; ?> ">
                            <a href="<?php echo base_url(); ?>admin/water">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('Water'); ?></span>
                            </a>
                        </li>

                    </ul>
                </li>
            <?php endif; ?> <!---  Permission for Admin Manage Academics ends here ------>


            <!---  Permission for Admin Manage Student starts here ------>
            <?php $check_admin_permission = $this->db->get_where('admin_role', array('admin_id' => $this->session->userdata('login_user_id')))->row()->manage_student; ?>
            <?php if ($check_admin_permission == '1'): ?>

                <li class="student"><a href="#" class="waves-effect"><i data-icon="&#xe006;"
                                                                        class="fa fa-users p-r-10"></i> <span
                                class="hide-menu"><?php echo get_phrase('New Deliveries'); ?><span
                                    class="fa arrow"></span></span></a>

                    <ul class=" nav nav-second-level<?php
                    if ($page_name == 'pet_del' ||
                        $page_name == 'student_class' ||
                        $page_name == 'rgb_del' ||
                        $page_name == 'view_student' ||
                        $page_name == 'Drink_energy' ||
                        $page_name == 'searchStudent')
                        echo 'opened active has-sub';
                    ?> ">


                        <li class="<?php if ($page_name == 'pet_del') echo 'active'; ?> ">
                            <a href="<?php echo base_url(); ?>admin/pet_del">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('Pet(Plastic)'); ?></span>
                            </a>
                        </li>


                        <li class="<?php if ($page_name == 'rgb_del') echo 'active'; ?> ">
                            <a href="<?php echo base_url(); ?>admin/rgb_del">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('RGB'); ?></span>
                            </a>
                        </li>


                        <li class="<?php if ($page_name == 'Drink_energy') echo 'active'; ?> ">
                            <a href="<?php echo base_url(); ?>admin/Drink_energy">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('Energy Drink'); ?></span>
                            </a>
                        </li>

                        <li class="<?php if ($page_name == 'minute') echo 'active'; ?> ">
                            <a href="<?php echo base_url(); ?>admin/minute">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('Juice MinuteMaid'); ?></span>
                            </a>
                        </li>

                        <li class="<?php if ($page_name == 'maji') echo 'active'; ?> ">
                            <a href="<?php echo base_url(); ?>admin/maji">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('Water'); ?></span>
                            </a>
                        </li>


                    </ul>
                </li>
            <?php endif; ?> <!---  Permission for Admin Manage Student ends here ------>


            <!---  Permission for Admin Manage Attendance starts here ------>
            <?php $check_admin_permission = $this->db->get_where('admin_role', array('admin_id' => $this->session->userdata('login_user_id')))->row()->manage_attendance; ?>
            <?php if ($check_admin_permission == '0'): ?>

                <li class="attendance"><a href="#" class="waves-effect"><i data-icon="&#xe006;"
                                                                           class="fa fa-hospital-o p-r-10"></i> <span
                                class="hide-menu"><?php echo get_phrase('manage_attendance'); ?><span
                                    class="fa arrow"></span></span></a>

                    <ul class=" nav nav-second-level<?php
                    if ($page_name == 'manage_attendance' || $page_name == 'attendance_report') echo 'opened active'; ?>">


                        <li class="<?php if ($page_name == 'manage_attendance') echo 'active'; ?> ">
                            <a href="<?php echo base_url(); ?>admin/manage_attendance/<?php echo date("d/m/Y"); ?>">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('mark_attendance'); ?></span>
                            </a>
                        </li>


                        <li class="<?php if ($page_name == 'attendance_report') echo 'active'; ?> ">
                            <a href="<?php echo base_url(); ?>admin/attendance_report">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('view_attendance'); ?></span>
                            </a>
                        </li>


                    </ul>
                </li>
            <?php endif; ?> <!---  Permission for Admin Manage Attendance ends here ------>


            <!---  Permission for Admin Manage Download Page starts here ------>
            <?php $check_admin_permission = $this->db->get_where('admin_role', array('admin_id' => $this->session->userdata('login_user_id')))->row()->download_page; ?>
            <?php if ($check_admin_permission == '0'): ?>

                <li><a href="#" class="waves-effect"><i data-icon="&#xe006;" class="fa fa-download p-r-10"></i> <span
                                class="hide-menu"><?php echo get_phrase('download_page'); ?><span
                                    class="fa arrow"></span></span></a>

                    <ul class=" nav nav-second-level<?php
                    if ($page_name == 'assignment' ||
                        $page_name == 'study_material')
                        echo 'opened active';
                    ?> ">


                        <li class="<?php if ($page_name == 'assignment') echo 'active'; ?>">
                            <a href="<?php echo base_url(); ?>assignment/assignment">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('assignments'); ?></span>
                            </a>
                        </li>


                        <li class="<?php if ($page_name == 'study_material') echo 'active'; ?> ">
                            <a href="<?php echo base_url(); ?>studymaterial/study_material">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('study_materials'); ?></span>
                            </a>
                        </li>


                    </ul>
                </li>

            <?php endif; ?> <!---  Permission for Admin Download Page  ends here ------>


            <!---  Permission for Admin Download Parent Page starts here ------>
            <?php $check_admin_permission = $this->db->get_where('admin_role', array('admin_id' => $this->session->userdata('login_user_id')))->row()->manage_parent; ?>
            <?php if ($check_admin_permission == '0'): ?>

                <li class=" <?php if ($page_name == 'parent') echo 'active'; ?>">
                    <a href="<?php echo base_url(); ?>admin/parent">
                        <i class="fa fa-users p-r-10"></i>
                        <span class="hide-menu"><?php echo get_phrase('manage_parents'); ?></span>
                    </a>
                </li>
            <?php endif; ?> <!---  Permission for Admin Download Page  ends here ------>


            <!--
        <li> <a href="#" class="waves-effect"><i data-icon="&#xe006;" class="fa fa-university p-r-10"></i> <span class="hide-menu"><?php echo get_phrase('class_information'); ?><span class="fa arrow"></span></span></a>

            <ul class=" nav nav-second-level<?php
            if ($page_name == 'class' ||
                $page_name == 'section' ||
                $page_name == 'class_routine')
                echo 'opened active';
            ?>">



                         <li class="<?php if ($page_name == 'class') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>admin/classes">
                        <i class="fa fa-angle-double-right p-r-10"></i>
                           <span class="hide-menu"><?php echo get_phrase('manage_classes'); ?></span>
                        </a>
                    </li>


                    <li class="<?php if ($page_name == 'section') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>admin/section">
                        <i class="fa fa-angle-double-right p-r-10"></i>
                            <span class="hide-menu"><?php echo get_phrase('manage_sections'); ?></span>
                        </a>
                    </li>




                 </ul>
                </li>
    -->

            <!--


                         <li class="<?php if ($page_name == 'subject') echo 'active'; ?>">
                            <a href="<?php echo base_url(); ?>subject/subject/">
                            <i class="fa fa-book p-r-10"></i>
                                 <span class="hide-menu"><?php echo get_phrase('Manage Product'); ?></span>
                            </a>
                        </li>
    -->


            <!--






         <li> <a href="#" class="waves-effect"><i data-icon="&#xe006;" class="fa fa-medkit p-r-10"></i> <span class="hide-menu"><?php echo get_phrase('manage_exams'); ?><span class="fa arrow"></span></span></a>

        <ul class=" nav nav-second-level<?php
            if ($page_name == 'submit_exam' || $page_name == 'grade' || $page_name == 'createExamination' ||
                $page_name == 'examQuestion') echo 'opened active';
            ?>">


                    <li class="<?php if ($page_name == 'examQuestion') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>admin/examQuestion">
                        <i class="fa fa-angle-double-right p-r-10"></i>
                           <span class="hide-menu"><?php echo get_phrase('question_paper'); ?></span>
                        </a>
                    </li>

                    <li class="<?php if ($page_name == 'grade') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>admin/grade">
                        <i class="fa fa-angle-double-right p-r-10"></i>
                           <span class="hide-menu"><?php echo get_phrase('exam_grades'); ?></span>
                        </a>
                    </li>

                    <li class="<?php if ($page_name == 'createExamination') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>admin/createExamination">
                        <i class="fa fa-angle-double-right p-r-10"></i>
                           <span class="hide-menu"><?php echo get_phrase('Add Examination'); ?></span>
                        </a>
                    </li>


                 </ul>
                </li>

    -->


            <!--
           <li> <a href="#" class="waves-effect"><i data-icon="&#xe006;" class="fa fa-bar-chart-o p-r-10"></i> <span class="hide-menu"><?php echo get_phrase('student_scores'); ?><span class="fa arrow"></span></span></a>

                        <ul class=" nav nav-second-level<?php
            if ($page_name == 'marks' ||
                $page_name == 'exam_marks_sms' ||
                $page_name == 'tabulation_sheet')
                echo 'opened active';
            ?>">

                    <li class="<?php if ($page_name == 'marks') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>admin/marks">
                        <i class="fa fa-angle-double-right p-r-10"></i>
                           <span class="hide-menu"><?php echo get_phrase('class_teacher'); ?></span>
                        </a>
                    </li>

                    <li class="<?php if ($page_name == 'student_marksheet_subject') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>admin/student_marksheet_subject">
                        <i class="fa fa-angle-double-right p-r-10"></i>
                           <span class="hide-menu"><?php echo get_phrase('subject_teacher'); ?></span>
                        </a>
                    </li>



                 </ul>
                </li>

    -->

            <!--
        <li class="collect_fee"> <a href="#" class="waves-effect"><i data-icon="&#xe006;" class="fa fa-paypal p-r-10"></i> <span class="hide-menu"><?php echo get_phrase('fee_collection'); ?><span class="fa arrow"></span></span></a>

                        <ul class=" nav nav-second-level<?php
            if ($page_name == 'income' ||
                $page_name == 'student_payment' ||
                $page_name == 'view_invoice_details' ||
                $page_name == 'invoice_add' ||
                $page_name == 'list_invoice' ||
                $page_name == 'studentSpecificPaymentQuery' ||
                $page_name == 'student_invoice')
                echo 'opened active';
            ?>">

                 <li class="<?php if ($page_name == 'student_payment') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>admin/student_payment">
                        <i class="fa fa-angle-double-right p-r-10"></i>
                             <span class="hide-menu"><?php echo get_phrase('collect_fees'); ?></span>
                        </a>
                    </li>

                     <li class="<?php if ($page_name == 'student_invoice') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>admin/student_invoice">
                        <i class="fa fa-angle-double-right p-r-10"></i>
                             <span class="hide-menu"><?php echo get_phrase('manage_invoice'); ?></span>
                        </a>
                    </li>

                 </ul>
                </li>


    -->


            <li><a href="#" class="waves-effect"><i data-icon="&#xe006;" class="fa fa-fax p-r-10"></i> <span
                            class="hide-menu"><?php echo get_phrase('Payments'); ?><span class="fa arrow"></span></span></a>

                <ul class=" nav nav-second-level<?php
                if ($page_name == 'expense' ||
                    $page_name == 'expense_category')
                    echo 'opened active';
                ?> ">

                    <li class="<?php if ($page_name == 'expense_category') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>expense/expense_category">
                            <i class="fa fa-angle-double-right p-r-10"></i>
                            <span class="hide-menu"><?php echo get_phrase('Money Category'); ?></span>
                        </a>
                    </li>

                    <li class="<?php if ($page_name == 'expense') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>expense/expense">
                            <i class="fa fa-angle-double-right p-r-10"></i>
                            <span class="hide-menu"><?php echo get_phrase('expense'); ?></span>
                        </a>
                    </li>


                </ul>
            </li>


            <li><a href="#" class="waves-effect"><i data-icon="&#xe006;" class="fa fa-university p-r-10"></i> <span
                            class="hide-menu"><?php echo get_phrase('Manage Stores'); ?><span
                                class="fa arrow"></span></span></a>
                <ul class=" nav nav-second-level<?php
                if ($page_name == 'becyhastores' ||
                    $page_name == 'categorys' ||
                    $page_name == 'room_type' ||
                    $page_name == 'hostel_room')
                    echo 'opened active';
                ?>">

                    <li class="<?php if ($page_name == 'becyhastores') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>admin/becyhastores">
                            <i class="fa fa-angle-double-right p-r-10"></i>
                            <span class="hide-menu"><?php echo get_phrase('New Store'); ?></span>
                        </a>
                    </li>


                    <li class="<?php if ($page_name == 'categorys') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>admin/categorys">
                            <i class="fa fa-angle-double-right p-r-10"></i>
                            <span class="hide-menu"><?php echo get_phrase('Store Categories'); ?></span>
                        </a>
                    </li>


                </ul>
            </li>


            <li><a href="#" class="waves-effect"><i data-icon="&#xe006;" class="fa fa-car p-r-10"></i> <span
                            class="hide-menu"><?php echo get_phrase('transportation'); ?><span class="fa arrow"></span></span></a>

                <ul class=" nav nav-second-level<?php
                if ($page_name == 'transport' ||
                    $page_name == 'transport_route' ||
                    $page_name == 'vehicle')
                    echo 'opened active';
                ?>">


                    <li class="<?php if ($page_name == 'vehicle') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>transportation/vehicle">
                            <i class="fa fa-angle-double-right p-r-10"></i>
                            <span class="hide-menu"><?php echo get_phrase('manage_vehicle'); ?></span>
                        </a>
                    </li>


                </ul>
            </li>


            <li><a href="#" class="waves-effect"><i data-icon="&#xe006;" class="fa fa-gears p-r-10"></i> <span
                            class="hide-menu"><?php echo get_phrase('system_settings'); ?><span class="fa arrow"></span></span></a>

                <ul class=" nav nav-second-level<?php
                if ($page_name == 'system_settings' ||
                    $page_name == 'manage_language' ||
                    $page_name == 'paymentSetting' ||
                    $page_name == 'sms_settings')
                    echo 'opened active';
                ?>">


                    <li class="<?php if ($page_name == 'system_settings') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>systemsetting/system_settings">
                            <i class="fa fa-angle-double-right p-r-10"></i>
                            <span class="hide-menu"><?php echo get_phrase('general_settings'); ?></span>
                        </a>
                    </li>


                    <li class="<?php if ($page_name == 'sms_settings') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>smssetting/sms_settings">
                            <i class="fa fa-angle-double-right p-r-10"></i>
                            <span class="hide-menu"><?php echo get_phrase('manage_sms_api'); ?></span>
                        </a>
                    </li>


                    <li class="<?php if ($page_name == 'manage_language') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>admin/manage_language">
                            <i class="fa fa-angle-double-right p-r-10"></i>
                            <span class="hide-menu"><?php echo get_phrase('manage_language'); ?></span>
                        </a>
                    </li>


                    <li class="<?php if ($page_name == 'paymentSetting') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>payment/paymentSetting">
                            <i class="fa fa-angle-double-right p-r-10"></i>
                            <span class="hide-menu"><?php echo get_phrase('Payment Settings'); ?></span>
                        </a>
                    </li>

                </ul>
            </li>

            <!--


        <li> <a href="#" class="waves-effect"><i data-icon="&#xe006;" class="fa fa-bar-chart-o p-r-10"></i> <span class="hide-menu"><?php echo get_phrase('generate_reports'); ?><span class="fa arrow"></span></span></a>

                        <ul class=" nav nav-second-level">

                <li class="<?php if ($page_name == 'studentPaymentReport') echo 'active'; ?>">
                        <a href="<?php echo base_url(); ?>report/studentPaymentReport">
                        <i class="fa fa-angle-double-right p-r-10"></i>
                           <span class="hide-menu"><?php echo get_phrase('Student Payments'); ?></span>
                        </a>
                </li>


                <li class="<?php if ($page_name == 'classAttendanceReport') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>report/classAttendanceReport">
                        <i class="fa fa-angle-double-right p-r-10"></i>
                             <span class="hide-menu"><?php echo get_phrase('Attendance Report'); ?></span>
                        </a>
                </li>

                <li class="<?php if ($page_name == 'examMarkReport') echo 'active'; ?> ">
                        <a href="<?php echo base_url(); ?>report/examMarkReport">
                        <i class="fa fa-angle-double-right p-r-10"></i>
                             <span class="hide-menu"><?php echo get_phrase('Exam Mark Report'); ?></span>
                        </a>
                </li>


                 </ul>
                </li>
    -->


            <?php $checking_level = $this->db->get_where('admin', array('admin_id' => $this->session->userdata('login_user_id')))->row()->level; ?>
            <?php if ($checking_level == '1'): ?>
                <li><a href="#" class="waves-effect"><i data-icon="&#xe006;" class="fa fa-cubes p-r-10"></i> <span
                                class="hide-menu"><?php echo get_phrase('role_managements'); ?><span
                                    class="fa arrow"></span></span></a>

                    <ul class=" nav nav-second-level<?php
                    if ($page_name == 'newAdministrator') echo 'opened active'; ?>">

                        <li class="<?php if ($page_name == 'admin_add') echo 'active'; ?> ">
                            <a href="<?php echo base_url(); ?>admin/newAdministrator">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('new_admin'); ?></span>
                            </a>
                        </li>


                    </ul>
                </li>
            <?php endif; ?>


            <?php $check_admin_permission = $this->db->get_where('admin_role', array('admin_id' => $this->session->userdata('login_user_id')))->row()->manage_employee; ?>
            <?php if ($check_admin_permission == '1'): ?>

                <li class="staff"><a href="javascript:void(0);" class="waves-effect"><i data-icon="&#xe006;"
                                                                                        class="fa fa-angle-double-right p-r-10"></i>
                        <span class="hide-menu"><?php echo get_phrase('Manage Employees'); ?><span
                                    class="fa arrow"></span></span></a>

                    <ul class=" nav nav-second-level<?php if ($page_name == 'Employee') echo 'opened active'; ?> ">


                        <li class="<?php if ($page_name == 'employee') echo 'active'; ?> ">
                            <a href="<?php echo base_url(); ?>admin/employee">
                                <i class="fa fa-angle-double-right p-r-10"></i>
                                <span class="hide-menu"><?php echo get_phrase('Manager'); ?></span>
                            </a>
                        </li>

                    </ul>
                </li>
            <?php endif; ?>

            <?php $checking_level = $this->db->get_where('admin', array('admin_id' => $this->session->userdata('login_user_id')))->row()->level; ?>
            <?php if ($checking_level == '2'): ?>


                <li class="<?php if ($page_name == 'manage_profile') echo 'active'; ?> ">
                    <a href="<?php echo base_url(); ?>admin/manage_profile">
                        <i class="fa fa-gears p-r-10"></i>
                        <span class="hide-menu"><?php echo get_phrase('manage_profile'); ?></span>
                    </a>
                </li>
            <?php endif; ?>


            <li class="">
                <a href="<?php echo base_url(); ?>login/logout">
                    <i class="fa fa-sign-out p-r-10"></i>
                    <span class="hide-menu"><?php echo get_phrase('Logout'); ?></span>
                </a>
            </li>


        </ul>
    </div>
</div>

<!-- Left navbar-header end -->
