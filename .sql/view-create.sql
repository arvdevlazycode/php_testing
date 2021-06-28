create view v_calon as
	SELECT  a.rcalon_id, a.rcalon_nama
			, a.rjk_kode, b.rjk_nama
			, a.rcalon_alamat, a.rkota_id, c.rkota_nama
			, a.rcalon_tglentri
	FROM `r_calon` a
	join r_jk b
	on a.rjk_kode=b.rjk_kode
	join r_kota c
	on a.rkota_id=c.rkota_id;
	
	
alter view v_calon as
	SELECT  a.rcalon_id, a.rcalon_nama
			, a.rjk_kode, b.rjk_nama
			, a.rcalon_alamat, a.rkota_id, c.rkota_nama
			, a.rcalon_tglentri
			, a.rstatver_kode
	FROM `r_calon` a
	join r_jk b
	on a.rjk_kode=b.rjk_kode
	join r_kota c
	on a.rkota_id=c.rkota_id;
	
	
ALTER TABLE `r_personal` CHANGE `RPERSONAL_TEMPATLAHR` `RPERSONAL_TEMPATLAHIR` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'Tempat Lahir';

ALTER TABLE `r_personal` CHANGE `RPERSONAL_KECAMATAN` `RPERSONAL_KEC` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'Kecamatan';

create view v_anggota as
	SELECT  a.rpersonal_id, a.rpersonal_nama, a.rpersonal_panggilan
			, a.rjk_kode, b.rjk_nama
			, a.rpersonal_alamat, a.rkota_id, c.rkota_nama
			, a.rkerja_id, d.rkerja_nama
			, a.rpersonal_tglentri
	FROM `r_personal` a
	join r_jk b
	on a.rjk_kode=b.rjk_kode
	join r_kota c
	on a.rkota_id=c.rkota_id
	join r_kerja d
	on a.rkerja_id=d.rkerja_id