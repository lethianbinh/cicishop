<style>
    .pagination1 {
        display: block;
        padding: 5px 10px;
        float: right;
    }

    .pagination1 a {
        background: #f3f3f3;
        border: 1px solid #c4c4c4;
        border-radius: 2px;
        box-shadow: 0 1px 0 #eaeaea, 0 1px 0 #ffffff inset;
        color: #717171;
        display: inline-block;
        float: left;
        font-weight: 700;
        line-height: 25px;
        margin-right: 4px;
        min-height: 25px;
        padding: 0 10px;
        text-decoration: none;
    }

    .pagination1 strong {
        background: #f3f3f3;
        border: 1px solid #c4c4c4;
        border-radius: 2px;
        box-shadow: 0 1px 0 #eaeaea, 0 1px 0 #ffffff inset;
        color: maroon;
        display: inline-block;
        float: left;
        font-weight: 700;
        line-height: 25px;
        margin-right: 4px;
        min-height: 25px;
        padding: 0 10px;
        text-decoration: none;
    }
</style>
<?php


?>

<div class="row">
    <div class="col-12">
        <?php $this->load->view('admin/message', $this->data) ?>
        <div class="card mb-4">
            <div class="card-header pb-0">
                <h6>Transaction </h6>


                <div class="pagination1">

                    <?php echo $this->pagination->create_links() ?>

                </div>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
                <div class="table-responsive p-0">
                    <table class="table align-items-center justify-content-center mb-0">

                        <thead>
                            <tr>


                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Orderer's Name</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Money</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Payment</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Created</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Status</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7 ps-2"></th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($list as $row) : ?>
                                <tr>
                                    <!-- <td>
                                        <input type="checkbox" name="id[]">
                                    </td> -->
                                    <td>
                                        <div class="d-flex px-2">

                                            <div class="my-auto">
                                                <h6 class="mb-0 text-sm"><?php echo $row->id ?></h6>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-name"><?php echo $row->user_name  ?></td>
                                    <td>
                                        <p class="text-sm font-weight-bold mb-0"><?php echo number_format($row->amount) ?> VNĐ</p>
                                    </td>
                                    <td>
                                        <span class="text-xs font-weight-bold"><?php echo $row->payment ?></span>
                                    </td>
                                    <td>
                                        <span class="text-xs font-weight-bold"><?php echo get_date($row->created) ?></span>
                                    </td>
                                    <td>
                                        <?php
                                        if ($row->status == 0) {
                                        ?>

                                            <a href="<?php echo admin_url('transaction/shifted/' . $row->id) ?>">Pending</a>
                                        <?php
                                        } else if ($row->status == 1) {
                                        ?>
                                        <?php
                                            echo 'Delivering';
                                        } else if ($row->status == 2) {

                                        ?>
                                            <a href="<?php echo  admin_url('transaction/delete/' . $row->id)  ?>">Delete</a>
                                        <?php
                                        }
                                        ?>
                                    </td>



                                    <td class="align-middle">
                                        <a href="<?php echo base_url('transaction/index/' . $row->id) ?>" class="text-secondary font-weight-bold text-xs" title="View transacction details">
                                            <img src="<?php echo public_url('admin/assets') ?>/img/eye-outline.svg" style="height: 18px;">
                                        </a>

                                    </td>
                                </tr>

                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>