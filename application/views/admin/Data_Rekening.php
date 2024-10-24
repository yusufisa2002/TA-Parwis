<div class="main-content">
	<div class="section">
		<div class="section-header">
			<h1>Data Rekening</h1>
		</div>
	</div>

	<a class="btn btn-primary mb-3" href="<?php echo base_url('admin/data_rekening/tambah_rekening') ?>">Tambah Rekening</a>

	<?php echo $this->session->flashdata('pesan') ?>

	<table class="table table-hover table-bordered table-striped">
		<thead>
			<tr>
				<th width="20px">No</th>
				<th>Rekening</th>
				<th>No Rekening</th>
				<th>Atas Nama</th>
				<th width="180px">Aksi</th>
			</tr>
		</thead>

		<tbody>
			<?php 
			$no = 1;
			foreach ($rekening as $rk ) : ?>

				<tr>
					<td><?php echo $no++ ?></td>
					<td><?php echo $rk->nama_rekening ?></td>
					<td><?php echo $rk->no_rekening ?></td>
					<td><?php echo $rk->atas_nama ?></td>
					<td>
						<a class="btn btn-sm btn-primary" href="<?php echo base_url('admin/data_rekening/update_rekening/' . $rk->id_rekening) ?>"><i class="fas fa-edit"></i></a>
						<a class="btn btn-sm btn-danger" href="<?php echo base_url('admin/data_rekening/delete_rekening/' . $rk->id_rekening) ?>"><i class="fas fa-trash"></i></a>
					</td>
				</tr>

			<?php endforeach; ?>
		</tbody>
	</table>


</div>