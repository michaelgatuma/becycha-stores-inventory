<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-info">
            <div class="panel-heading"><i
                        class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('Stock Transactions'); ?></div>
            <div class="panel-wrapper collapse in" aria-expanded="true">
                <div class="panel-body table-responsive">
                    <table id="example23" class="display nowrap" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th>
                                <div>#</div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('beverage'); ?></div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('flavour'); ?></div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('volume'); ?></div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('Type'); ?></div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('Reference'); ?></div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('Stock Quantity'); ?></div>
                            </th>
                            <th>
                                <div><?php echo get_phrase('Transaction Date'); ?></div>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $count = 1;
                        foreach ($transactions as $transaction):
                            ?>
                            <tr>
                                <td><?php echo $count++; ?></td>
                                <td><?php echo $transaction->product_name; ?></td>
                                <td><?php echo $transaction->flavour; ?></td>
                                <td><?php echo $transaction->volume_size; ?></td>
                                <td><?php echo $transaction->transaction_type; ?></td>
                                <td><?php echo $transaction->transaction_ref; ?></td>
                                <td><?php echo $transaction->quantity; ?></td>
                                <td><?php echo $transaction->transaction_date; ?></td>
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
