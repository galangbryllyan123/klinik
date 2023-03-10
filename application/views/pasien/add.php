<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Form <?= $title; ?></h3>

                <div class="card-tools">
                    <a href="<?= base_url('pasien') ?>" class="btn btn-tool">
                        <i class="fas fa-times"></i>
                    </a>
                </div>
                <!-- /.card-tools -->
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <?= form_open_multipart(); ?>
                <input type="hidden" name="created_at" value="<?= date('Y-m-d H:i:s'); ?>">
                <div class="form-group">
                    <label for="namaPasien">Nama Pasien</label>
                    <input value="<?= set_value('namaPasien'); ?>" type="text" name="namaPasien" id="namaPasien" class="form-control" placeholder="Nama Pasien">
                    <?= form_error('namaPasien'); ?>
                </div>
                <div class="form-group">
                    <label>Foto</label><br />
                    <label class="file-upload btn btn-outline-secondary">
                        Cari Berkas... <input type="file" name="file_path">
                    </label>
                </div>
                <div class="form-group">
                    <label for="NIK">NIK</label>
                    <input value="<?= set_value('NIK'); ?>" type="text" name="NIK" id="NIK" class="form-control" placeholder="NIK">
                    <?= form_error('NIK'); ?>
                </div>
                <div class="form-group">
                    <label>Jenis Kelamin</label>
                    <div class="row">
                        <div class="col">
                            <div class="custom-control custom-radio">
                                <input <?= set_radio('jenisKelamin', 'Laki-laki'); ?> value="Laki-laki" class="custom-control-input" type="radio" id="laki-laki" name="jenisKelamin">
                                <label for="laki-laki" class="custom-control-label">Laki-laki</label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="custom-control custom-radio">
                                <input <?= set_radio('jenisKelamin', 'Perempuan'); ?> value="Perempuan" class="custom-control-input" type="radio" id="perempuan" name="jenisKelamin">
                                <label for="perempuan" class="custom-control-label">Perempuan</label>
                            </div>
                        </div>
                    </div>
                    <?= form_error('jenisKelamin'); ?>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input value="<?= set_value('email'); ?>" type="text" name="email" id="email" class="form-control" placeholder="Email">
                    <?= form_error('email'); ?>
                </div>
                <div class="form-group">
                    <label for="alamat">Alamat</label>
                    <textarea name="alamat" id="alamat" rows="4" class="form-control" placeholder="Alamat"><?= set_value('alamat'); ?></textarea>
                    <?= form_error('alamat'); ?>
                </div>
                <div class="form-group">
                    <label for="noTelp">Nomor Telepon</label>
                    <input value="<?= set_value('noTelp'); ?>" type="text" name="noTelp" id="noTelp" class="form-control" placeholder="Nomor Telepon">
                    <?= form_error('noTelp'); ?>
                </div>
                <div class="form-group">
                    <label for="noBPJS">Nomor BPJS Kesehatan</label>
                    <input value="<?= set_value('noBPJS'); ?>" type="text" name="noBPJS" id="noBPJS" class="form-control" placeholder="Nomor BPJS Kesehatan">
                    <?= form_error('noBPJS'); ?>
                </div>
                <div class="text-right">
                    <button type="reset" class="btn btn-default bg-gradient-light">Reset</button>
                    <button type="submit" class="btn btn-info bg-gradient-info">Simpan</button>
                </div>
                <?= form_close(); ?>
            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->
    </div>
</div>