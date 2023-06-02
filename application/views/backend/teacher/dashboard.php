 <!--row -->
 <div class="row">
                    
                    <div class="col-md-3 col-sm-6">
                        <div class="white-box">
                            <div class="r-icon-stats">
                                <i class="ti-user bg-info"></i>
                                <div class="bodystate">
                                    <h4><?php echo $this->db->count_all_results('teacher');?></h4>
                                    <span class="text-muted"><?php echo get_phrase('Employees');?></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    

                    <div class="col-md-3 col-sm-6">
                        <div class="white-box">
                            <div class="r-icon-stats">
                                <i class="ti-money bg-megna"></i>
                                <div class="bodystate">
                                <?php 
                                $this->db->select_sum('amount');
                                $this->db->from('payment');
                                $this->db->where('expense_category_id', '9');
                                $query = $this->db->get();
                                $expense_amount = $query->row()->amount;
                                ?>
                                    <h4><?php echo $this->db->get_where('settings', array('type' => 'currency'))->row()->description;?> <?php echo $expense_amount;?></h4>
                                    <span class="text-muted"><?php echo get_phrase('Total Sales');?></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="white-box">
                            <div class="r-icon-stats">
                                <i class="ti-money bg-info"></i>
                                <div class="bodystate">

                                <?php 
                                $this->db->select_sum('amount');
                                $this->db->from('payment');
                                $this->db->where('expense_category_id', '8');
                                $query = $this->db->get();
                                $income_amount = $query->row()->amount; ?>
                                    <h4>
                                    <?php echo $this->db->get_where('settings', array('type' => 'currency'))->row()->description;?> <?php echo $income_amount;?>
                                    </h4>
                                    <span class="text-muted"><?php echo get_phrase('Total Deliveries');?></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="white-box">
                            <div class="r-icon-stats">
                                <i class="ti-money bg-megna"></i>
                                <div class="bodystate">
                                <?php 
                                $this->db->select_sum('amount');
                                $this->db->from('payment');
                                $this->db->where('expense_category_id', '11');
                                $query = $this->db->get();
                                $expense_amount = $query->row()->amount;
                                ?>
                                    <h4><?php echo $this->db->get_where('settings', array('type' => 'currency'))->row()->description;?> <?php echo $expense_amount;?></h4>
                                    <span class="text-muted"><?php echo get_phrase('Other Expenses');?></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="white-box">
                            <div class="r-icon-stats">
                                <i class="ti-wallet bg-success"></i>
                                <div class="bodystate">
                                    <h4><?php echo $this->db->count_all_results('admin');?></h4>
                                    <span class="text-muted"><?php echo get_phrase('Admin');?></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
            </div>








                <!--/row -->
                <!-- .row -->
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="white-box">
                            <div class="stats-row">


<marquee behavior="alternate">

                            <h3 class="box-title m-b-0"><?php echo get_phrase('Sales&Deliveries Report with Other more Features>>>>Coming soon!!!!');?></h3>



</marquee>




                            

                            <div class="row">
                    <div class="col-sm-12">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('list_of Total Sales');?></div>
                            <div class="panel-wrapper collapse in" aria-expanded="true">
                                <div class="panel-body table-responsive">
								
 			<table id="example23" class="display nowrap" cellspacing="0" width="100%">
    <thead>
        <tr>
     
            <th><div>#</div></th>
            <th><div><?php echo get_phrase('RGB');?></div></th>
            <th><div><?php echo get_phrase('PET(plastic)');?></div></th>
            <th><div><?php echo get_phrase('Energy Drink');?></div></th>
            <th><div><?php echo get_phrase('Juice_Minutemaid');?></div></th>
            <th><div><?php echo get_phrase('Water');?></div></th>
            <th><div><?php echo get_phrase('Total(crates)');?></div></th>
            <th><div><?php echo get_phrase('empties');?></div></th>
            <th><div><?php echo get_phrase('Amount_Recieved');?></div></th>
           
            
        </tr>
    </thead>
    <tbody>

    <?php $count = 1; foreach ($select_RGB as $key => $RGB): ?>
	
        <tr>
            <td><?php echo $count++; ?></td>
            <td><?php $this->db->select_sum('amount');?></td>
            
            <td>
            <?php 
            if($expense['expense_category_id']!= 0 || $expense['expense_category_id']!= '')
            echo $this->db->get_where('expense_category', array('expense_category_id' => $expense['expense_category_id']))->row()->name;
            ?>
            </td>

            <td>
            
            <?php 

                if($expense['method'] == 1)
                echo get_phrase('cash');   
                if($expense['method'] == 2)
                echo get_phrase('cheque'); 
                if($expense['method'] == 3)
                echo get_phrase('card');           
            ?>
            
            </td>

            <td><?php echo $expense['amount'];?></td>
            <td><?php echo $expense['timestamp'];?></td>
            <td><?php echo $expense['description'];?></td>

            <td>
            
            <a onclick="showAjaxModal('<?php echo base_url();?>modal/popup/edit_expense/<?php echo $expense['payment_id'];?>')" class="btn btn-info btn-circle btn-xs"><i class="fa fa-edit"></i></a>
            <a onclick="confirm_modal('<?php echo base_url();?>expense/expense/delete/<?php echo $expense['payment_id'];?>')" class="btn btn-danger btn-circle btn-xs" style="color:white"><i class="fa fa-times"></i></a>
            
            </td>
        </tr>

     <?php endforeach;?>
    </tbody>
</table>

</div>
</div>
</div>
</div>
</div>




                        <div class="white-box">
                            <h3 class="box-title m-b-0"><?php echo get_phrase('Recently Added Employees');?></h3>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>

                                            <th>Image</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                    <tr>
                            <?php $get_teacher_from_model = $this->crud_model->list_all_teacher_and_order_with_teacher_id();
                                    foreach ($get_teacher_from_model as $key => $teacher):?>
                                            <td><img src="<?php echo $teacher['face_file'];?>" class="img-circle" width="40px"></td>
                                            <td><?php echo $teacher['name'];?></td>
                                            <td><?php echo $teacher['email'];?></td>
                                            <td><?php echo $teacher['phone'];?></td>
                                        </tr>
                                    <?php endforeach;?>
                               
                                    </tbody>
                                </table>
                            </div>
                        </div>
                  
                <!-- /.row -->