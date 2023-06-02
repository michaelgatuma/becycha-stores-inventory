<div class="row">
                    <div class="col-sm-5">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('Add RGB New Deliveries'); ?></div>
										<div class="panel-body table-responsive">


        <?php echo form_open(base_url().'admin/rgb_del/insert' , array('class' => 'form-horizontal form-groups-bordered validate'));?>

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
                <option value="Coke">Coke</option>
                <option value="Fanta Orange">Fanta Orange</option>
                <option value="Sprite">Sprite</option>
                <option value="Black Current">Black_Current</option>
                <option value="Fanta Passion">Fanta Passion</option>
                <option value="Fanta Pineaple">Fanta Pineaple</option>
                <option value="Krest">Krest</option>
                <option value="Stoney">Stoney</option>
                <option value="Assault">Assault</option>
                <option value="Khaos">Khaos</option>
                <option value="Mango">Mango</option>
                <option value="Normal">Normal</option>

            


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
                <option value="200ml"> 200ml</option>
                    <option value="300ml"> 300ml</option>
                    <option value="500ml"> 500ml</option>
                    <option value="1Litre"> 1L</option>
                    <option value="300ml_NOV"> 300ml_NOV</option>
                    <option value="others"> others</option>
                    
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
                            <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('RGB_Deliveries_List'); ?></div>
							


<div class="panel-wrapper collapse in" aria-expanded="true">
                                <div class="panel-body table-responsive">
			
 								<table id="example23" class="display nowrap" cellspacing="0" width="100%">
                	<thead>
                   
                		<tr>
                    	<th><div><?php echo get_phrase('delivery_Number');?></div></th>
                        <th><div><?php echo get_phrase('Vehicle');?></div></th>
                    		<th><div><?php echo get_phrase('flavour');?></div></th>
                    		<th><div><?php echo get_phrase('quantity');?></div></th>
                            <th><div><?php echo get_phrase('size');?></div></th>
                    		<th><div><?php echo get_phrase('date');?></div></th>
                    		
						</tr>
					</thead>
                    <tbody>
                <?php
   $count = 1; foreach($select_rgb_del as $key => $rgb_del):

                ?>
                        <tr>
                        <td><?php echo $rgb_del ['del_no'];?></td>
                        <td><?php echo $rgb_del ['vehicle'];?></td>

                            <td><?php echo $rgb_del ['flavour'];?></td>
							<td><?php echo $rgb_del ['quantity'];?></td>
							<td><?php echo $rgb_del ['size'];?></td>
							<td><?php echo $rgb_del ['date'];?></td>
							<td>
                            
                            <a onclick="showAjaxModal('<?php echo base_url();?>modal/popup/edit_rgb_del/<?php echo $rgb_del['del_no'];?>')" class="btn btn-info btn-circle btn-xs"><i class="fa fa-edit"></i></a>
                            <a href="<?php echo base_url();?>admin/rgb_del/delete/<?php echo $rgb_del['del_no'];?>" onclick="return confirm('Are you sure want to delete?');" class="btn btn-danger btn-circle btn-xs" style="color:white"><i class="fa fa-times"></i></a>
                            
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
			