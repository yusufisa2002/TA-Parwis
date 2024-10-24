<div class="main-content">
	<div class="section">
		<div class="section-header">
			<h1>Form Update Rekening</h1>
		</div>
	</div>

	<?php foreach ($rekening as $rk) : ?>
	<form method="POST" action="<?php echo base_url('admin/data_rekening/update_rekening_aksi') ?>">
		
		<div class="form-group">
			<label>Rekening</label>
			<input type="hidden" name="id_rekening" value="<?php echo $rk->id_rekening ?>">
			<input type="text" name="nama_rekening" class="form-control" value="<?php echo $rk->nama_rekening ?>"> 
        	<?php echo form_error('nama_rekening','<div class="text-small text-danger">','</div>') ?>
		</div>

		<div class="form-group">
			<label>No Rekening</label>
			<input type="text" name="no_rekening" class="form-control" value="<?php echo $rk->no_rekening ?>"> 
        	<?php echo form_error('no_rekening','<div class="text-small text-danger">','</div>') ?>
		</div>

        <div class="form-group">
            <label>Atas Nama</label>
            <input type="text" name="atas_nama" class="form-control" value="<?php echo $rk->atas_nama ?>"> 
            <?php echo form_error('atas_nama','<div class="text-small text-danger">','</div>') ?>
        </div>

		<button type="submit" class="btn btn-primary">
			Simpan
		</button>
		<button type="reset" class="btn btn-danger">
			Reset
		</button>


	</form>
<?php endforeach; ?>

</div>