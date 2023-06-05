<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-info">
            <div class="panel-heading"><i
                        class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('Customers Listing'); ?></div>
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
                                <div><?php echo get_phrase('email'); ?></div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('phone'); ?></div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('Member Since'); ?></div>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $count = 1;
                        foreach ($customers as $customer):
                            ?>
                            <tr>
                                <td><?php echo $count++; ?></td>
                                <td><?php echo $customer->customer_name; ?></td>
                                <td><?php echo $customer->customer_email; ?></td>
                                <td><?php echo $customer->customer_phone; ?></td>
                                <td><?php echo $customer->created_at; ?></td>
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
