<div class="row">
                    <div class="col-sm-5">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('Add New Water Deliveries'); ?></div>
										<div class="panel-body table-responsive">


        <?php echo form_open(base_url().'admin/maji/insert' , array('class' => 'form-horizontal form-groups-bordered validate'));?>

<!----CREATION FORM STARTS---->

<div class="form-group">
            <label class="col-md-12" for="example-text"><?php echo get_phrase('Delivery Number');?></label>
        <div class="col-sm-12">
				<input type="number" class="form-control" name="del_no"/ required>
                
        </div>
    </div>
					


    <div class="form-group">
            <label class="col-md-12" for="example-text"><?php echo get_phrase('Vehicle');?></label>
        <div class="col-sm-12">
				<select type="number" class="form-control" name="vehicle"/ required>

                <?php 
                                	$catego = $this->db->get('vehicle')->result_array();
                                	foreach ($catego as $row):
                                    
                                ?>
                <option value="<?php echo $row['vehicle_number'];?>"><?php echo $row['vehicle_number'];?></option>
                <?php endforeach;?>

                







</select>
                
        </div>
    </div>
			
    






	<div class="form-group">
            <label class="col-md-12" for="example-text"><?php echo get_phrase('Flavour');?></label>
        <div class="col-sm-12">
				<select name="flavour" type="text" class="form-control"/ required>
                <option value="Dasani">Dasani</option>
        <option value="Keringet">Keringet</option>
                <option value="Coke">Others</option>

                    


</select>
                
        </div>
    </div>
							
							
	<div class="form-group">
            <label class="col-md-12" for="example-text"><?php echo get_phrase('quantity(Crates)');?></label>
        <div class="col-sm-12">
				<input type="number" class="form-control" name="quantity"/ required>
                
        </div>
    </div>
							
							
	<div class="form-group">
            <label class="col-md-12" for="example-text"><?php echo get_phrase('size');?></label>
        <div class="col-sm-12">
			    <select type="text" class="form-control" name="size" required >
                <option value="1 Litre">1 Litre</option>
                <option value="Mineral Water 1000ml 12NP">Mineral Water 1000ml 12NP</option>
                <option value="1L 2 x 6NP">1L 2 x 6NP</option>
                <option value="1.5L 12NP"> 1.5L 12NP</option>
                <option value="Spark 1L 12NP">Spark 1L 12NP</option>

                    
</select>

        </div>
    </div>
							
							
							<div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('Date');?></label>
                    <div class="col-sm-12">
		<input class="form-control m-r-10" name="date" type="date" value="<?php echo date('Y-m-d');?>" id="example-date-input" required>
	
							
                       </div>
                        </div>
          
                            
                           <div class="form-group">
                                  <button type="submit" class="btn btn-info btn-sm btn-block btn-rounded"> <i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('add_Deliveries');?></button>
                            </div>
                    <?php echo form_close();?>            
                
                </div>                
			</div>
		</div>
			<!----CREATION FORM ENDS-->
		
<div class="col-sm-7">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('water_List'); ?></div>
							


<div class="panel-wrapper collapse in" aria-expanded="true">
                                <div class="panel-body table-responsive">
			
 								<table id="example23" class="display nowrap" cellspacing="0" width="100%">
                	<thead>
                   
                		<tr>
                    	<th><div><?php echo get_phrase('delivery_Number');?></div></th>
                        <th><div><?php echo get_phrase('vehicle');?></div></th>
                    		<th><div><?php echo get_phrase('flavour');?></div></th>
                    		<th><div><?php echo get_phrase('quantity');?></div></th>
                            <th><div><?php echo get_phrase('size');?></div></th>
                    		<th><div><?php echo get_phrase('date');?></div></th>
                    		
						</tr>
					</thead>
                    <tbody>
                <?php
  foreach($select_maji as $key => $maji):

                ?>
                        <tr>
                        <td><?php echo $maji ['del_no'];?></td>
                        <td><?php echo $maji ['vehicle'];?></td>
                            <td><?php echo $maji ['flavour'];?></td>
							<td><?php echo $maji ['quantity'];?></td>
							<td><?php echo $maji ['size'];?></td>
							<td><?php echo $maji ['date'];?></td>
							<td>
                            
                            <a onclick="showAjaxModal('<?php echo base_url();?>modal/popup/edit_maji/<?php echo $maji['del_no'];?>')" class="btn btn-info btn-circle btn-xs"><i class="fa fa-edit"></i></a>
                            <a href="<?php echo base_url();?>admin/maji/delete/<?php echo $maji['del_no'];?>" onclick="return confirm('Are you sure want to delete?');" class="btn btn-danger btn-circle btn-xs" style="color:white"><i class="fa fa-times"></i></a>
                            
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
            <!----TABLE LISTING ENDS--->
			