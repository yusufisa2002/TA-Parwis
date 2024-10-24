<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Detail Customer</h1>
        </div>

        <?php foreach ( $detail as $dt ) : ?>

            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-7">
                            <table class="table">
                                <tr>
                                    <td>Nama</td>
                                    <td>
                                        <?php 
                                            foreach($customer as $cs){
                                                if($dt->id_customer == $cs->id_customer){
                                                    echo $cs->nama;
                                                }
                                            }
                                        ?>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Username</td>
                                    <td><?php echo $dt->username ?></td>
                                </tr>

                                <tr>
                                    <td>Alamat</td>
                                    <td><?php echo $dt->alamat ?></td>
                                </tr>

                                <tr>
                                    <td>Gender</td>
                                    <td><?php echo $dt->gender ?></td>
                                </tr>

                                <tr>
                                    <td>No Telepon</td>
                                    <td><?php echo $dt->no_telp ?></td>
                                </tr>

                                <tr>
                                    <td>No KTP</td>
                                    <td><?php echo $dt->no_ktp?></td>
                                </tr>

                                <tr>
                                    <td>Role</td>
                                    <td>
                                        <?php 
                                            if($dt->role_id == "1"){
                                                echo "Admin";
                                            }else{
                                                echo "Customer";
                                            }
                                        ?>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Password</td>
                                    <td><?php echo $dt->password?></td>
                                </tr>
                            </table>

                            <a class="btn btn-sm btn-danger ml-4" href="<?php echo base_url('admin/data_customer') ?>">Kembali</a>
                            <a class="btn btn-sm btn-primary" href="<?php echo base_url('admin/data_customer/update_customer/') . $dt->id_customer?>">Update</a>
                        </div>

                    </div>
                </div>
            </div>

        <?php endforeach ?>

    </section>
</div>