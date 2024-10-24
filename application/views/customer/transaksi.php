<div class="container">
	<div class="card mx-auto" style="margin-top: 180px; margin-bottom: 50px; width: 92%">
		
		<div class="card-header">
			Data Transaksi Anda
		</div>
		<span class="mt-2 p-2"><?php echo $this->session->flashdata('pesan') ?></span>
		<div class="card-body">
			<table class="table table-bordered table-striped table-responsive">
				
				<tr>
					<th>No</th>
					<th>Merk Mobil</th>
					<th>No. Plat</th>
					<th>Harga/hari</th>
					<th>Denda/hari</th>
					<th>Tanggal Rental</th>
					<th>Tanggal Kembali</th>
					<th>Action</th>
					<!-- <th>Batal</th> -->
				</tr>

				<?php $no = 1; foreach($transaksi as $tr) : ?>
					<tr>
						<td><?php echo $no++ ?></td>
						<td><?php echo $tr->merk ?></td>
						<td><?php echo $tr->no_plat ?></td>
						<td><?php echo number_format($tr->harga,0,',','.')?></td>
						<td><?php echo number_format($tr->denda,0,',','.')?></td>
						<td><?php echo date('d/m/Y', strtotime($tr->tanggal_rental)); ?></td>
						<td><?php echo date('d/m/Y', strtotime($tr->tanggal_kembali)); ?></td>
						<td>
							
							<?php if($tr->status_rental == "Selesai") { ?>

								<button class="btn btn-sm btn-primary" disabled>Rental Selesai</button>

							<?php } else { ?>

								<a href="<?php echo base_url('customer/transaksi/pembayaran/' . $tr->id_rental) ?>" class="btn btn-sm btn-success">Pembayaran</a>

								<a class="btn btn-sm btn-danger mt-2" data-toggle="modal" data-target="#exampleModal" href="<?php echo base_url('customer/transaksi/batal_transaksi/' . $tr->id_rental) ?>">Batal</a>

								<!--<button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#exampleModal">
								Batal
								</button>-->
							<?php } ?>

						</td>
					</tr>
				<?php endforeach; ?>
			</table>	
		</div>

	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Informasi Batal Transaksi</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Anda yakin ingin mambatalkan pesanan?
      </div>
      <div class="modal-footer">
	  	<button type="button" class="btn btn-sm btn-dark">OK</button>
        <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal">Cancel</button>
      </div>
    </div>
  </div>
</div>