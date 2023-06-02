<div class="row">
                    <div class="col-sm-5">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('Add New Pet Deliveries'); ?></div>
										<div class="panel-body table-responsive">


        <?php echo form_open(base_url().'admin/pet_del/insert' , array('class' => 'form-horizontal form-groups-bordered validate'));?>

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
				<select type="number" class="form-control" name="vehicles"/ required>

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
                <option value="1Litre"> 1Litre</option>
                    <option value="2Litres"> 2Litres</option>
                    <option value="1.25Litres"> 1.25Litres</option>
                    <option value="350"> 350</option>
                    <option value="350_Nov"> 350_NOV</option>
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
                                  <button type="submit" class="btn btn-info btn-sm btn-block btn-rounded"> <i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('add_Delivery');?></button>
                            </div>
                    <?php echo form_close();?>            
                
                </div>                
			</div>
		</div>
			<!----CREATION FORM ENDS-->
		
<div class="col-sm-7">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('Pet_Deliveries_List'); ?></div>
							


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

              foreach($select_pet_del as $key => $pet_del):

                ?>
                        <tr>
                        <td><?php echo $pet_del ['del_no'];?></td>
                        <td><?php echo $pet_del ['vehicles'];?></td>
                            <td><?php echo $pet_del ['flavour'];?></td>
							<td><?php echo $pet_del ['quantity'];?></td>
							<td><?php echo $pet_del ['size'];?></td>
							<td><?php echo $pet_del ['date'];?></td>
							<td>
                            
                         
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
			