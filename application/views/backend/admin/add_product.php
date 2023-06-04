<div class="row">
    <div class="col-sm-5">
        <div class="panel panel-info">
            <div class="panel-heading"><i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('Add New Beverage'); ?></div>
            <div class="panel-body table-responsive">
                <?php echo form_open('admin/create_product', array('class' => 'form-horizontal form-groups-bordered validate')); ?>
                <!----CREATION FORM STARTS---->
                <div class="form-group">
                    <label class="col-md-12" for="example-text"><?php echo get_phrase('Product Name'); ?></label>
                    <div class="col-sm-12">
                        <input type="text" class="form-control" name="product_name" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="example-text"><?php echo get_phrase('Product Type'); ?></label>
                    <div class="col-sm-12">
                        <select class="form-control" name="product_type" id="product_type" required>
                            <option value="">Select Product Type</option>
                            <option value="pet">PET</option>
                            <option value="rgb">RGB</option>
                            <option value="energy">Energy Drink</option>
                            <option value="minutemaid">Minute Maid Juice</option>
                            <option value="water">Water</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="example-text"><?php echo get_phrase('Flavour'); ?></label>
                    <div class="col-sm-12">
                        <select class="form-control" name="flavour" id="flavour" required disabled>
                            <option value="">Select Product Type First</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="example-text"><?php echo get_phrase('Volume Size'); ?></label>
                    <div class="col-sm-12">
                        <select class="form-control" name="volume_size" id="volume_size" required disabled>
                            <option value="">Select Product Type First</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-12" for="example-text"><?php echo get_phrase('Stock Quantity'); ?></label>
                    <div class="col-sm-12">
                        <input type="number" class="form-control" name="stock_qty" required>
                    </div>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-info btn-sm btn-block btn-rounded"><i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('Create Product'); ?></button>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
    <!----CREATION FORM ENDS-->

    <div class="col-sm-7">
        <div class="panel panel-info">
            <div class="panel-heading"><i
                        class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('Beverages List'); ?></div>
            <div class="panel-wrapper collapse in" aria-expanded="true">
                <div class="panel-body table-responsive">
                    <table id="example23" class="display nowrap" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th>
                                <div>#</div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('name'); ?></div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('type'); ?></div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('flavour'); ?></div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('volume'); ?></div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('stock'); ?></div>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $count = 1;
                        foreach ($products as $product):
                            ?>
                            <tr>
                                <td><?php echo $count++; ?></td>
                                <td><?php echo $product->product_name; ?></td>
                                <td><?php echo $product->product_type; ?></td>
                                <td><?php echo $product->flavour; ?></td>
                                <td><?php echo $product->volume_size; ?></td>
                                <td><?php echo $product->stock_qty; ?></td>
                                <td>
                                    Edit
                                </td>
                            </tr>
                        <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!----TABLE LISTING ENDS--->
<script>
    $(document).ready(function() {
        $('#product_type').on('change', function() {
            var productType = $(this).val();
            if (productType) {
                $('#flavour').prop('disabled', true).html('<option value="">Loading...</option>');
                $('#volume_size').prop('disabled', true).html('<option value="">Loading...</option>');
                $.ajax({
                    url: '<?php echo base_url("admin/get_product_variations"); ?>',
                    type: 'POST',
                    data: {product_type: productType},
                    dataType: 'json',
                    success: function(data) {
                        $('#flavour').prop('disabled', false).html(data.flavours);
                        $('#volume_size').prop('disabled', false).html(data.volume_sizes);
                    }
                });
            } else {
                $('#flavour').prop('disabled', true).html('<option value="">Select Product Type First</option>');
                $('#volume_size').prop('disabled', true).html('<option value="">Select Product Type First</option>');
            }
        });
    });
</script>
