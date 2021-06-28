ALTER TABLE r_calon 		drop foreign key FK_RELATIONSHIP_25;
ALTER TABLE r_calon 		drop foreign key FK_RELATIONSHIP_28;
ALTER TABLE r_personal 		drop foreign key FK_RELATIONSHIP_5 ;
ALTER TABLE r_personal 		drop foreign key FK_RELATIONSHIP_8 ;
ALTER TABLE r_userakun 		drop foreign key FK_RELATIONSHIP_15;
ALTER TABLE t_calonimage 	drop foreign key FK_RELATIONSHIP_29;
ALTER TABLE t_calonimage 	drop foreign key FK_RELATIONSHIP_30;
ALTER TABLE t_kelasmember 	drop foreign key FK_RELATIONSHIP_10;
ALTER TABLE t_persimage 	drop foreign key FK_RELATIONSHIP_11;
ALTER TABLE t_persimage 	drop foreign key FK_RELATIONSHIP_12;

ALTER TABLE `r_image` CHANGE `RIMAGE_ID` `RIMAGE_ID` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'Id Image';
ALTER TABLE `r_calon` CHANGE `RCALON_ID` `RCALON_ID` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'Id Calon';
ALTER TABLE `r_personal` CHANGE `RPERSONAL_ID` `RPERSONAL_ID` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'Id Personal';
ALTER TABLE `r_kerja` CHANGE `RKERJA_ID` `RKERJA_ID` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'Id Pekerjaan';
ALTER TABLE `r_kota` CHANGE `RKOTA_ID` `RKOTA_ID` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'Id Kota';
ALTER TABLE `t_berita` CHANGE `TBERITA_ID` `TBERITA_ID` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'Id berita';

alter table R_CALON add constraint FK_RELATIONSHIP_25 foreign key (RKERJA_ID)
      references R_KERJA (RKERJA_ID) on delete restrict on update restrict;

alter table R_CALON add constraint FK_RELATIONSHIP_28 foreign key (RKOTA_ID)
      references R_KOTA (RKOTA_ID) on delete restrict on update restrict;

alter table R_PERSONAL add constraint FK_RELATIONSHIP_5 foreign key (RKOTA_ID)
      references R_KOTA (RKOTA_ID) on delete restrict on update restrict;

alter table R_PERSONAL add constraint FK_RELATIONSHIP_8 foreign key (RKERJA_ID)
      references R_KERJA (RKERJA_ID) on delete restrict on update restrict;

alter table R_USERAKUN add constraint FK_RELATIONSHIP_15 foreign key (RPERSONAL_ID)
      references R_PERSONAL (RPERSONAL_ID) on delete restrict on update restrict;

alter table T_CALONIMAGE add constraint FK_RELATIONSHIP_29 foreign key (RIMAGE_ID)
      references R_IMAGE (RIMAGE_ID) on delete restrict on update restrict;

alter table T_CALONIMAGE add constraint FK_RELATIONSHIP_30 foreign key (RCALON_ID)
      references R_CALON (RCALON_ID) on delete restrict on update restrict;

alter table T_KELASMEMBER add constraint FK_RELATIONSHIP_10 foreign key (RPERSONAL_ID)
      references R_PERSONAL (RPERSONAL_ID) on delete restrict on update restrict;

alter table T_PERSIMAGE add constraint FK_RELATIONSHIP_11 foreign key (RPERSONAL_ID)
      references R_PERSONAL (RPERSONAL_ID) on delete restrict on update restrict;

alter table T_PERSIMAGE add constraint FK_RELATIONSHIP_12 foreign key (RIMAGE_ID)
      references R_IMAGE (RIMAGE_ID) on delete restrict on update restrict;


 
 