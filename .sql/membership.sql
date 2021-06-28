/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     8/7/2019 12:07:18 AM                         */
/*==============================================================*/


drop table if exists R_AGAMA;

drop table if exists R_CALON;

drop table if exists R_GOLDARAH;

drop table if exists R_IMAGE;

drop table if exists R_JK;

drop table if exists R_JURUSAN;

drop table if exists R_KERJA;

drop table if exists R_KOTA;

drop table if exists R_PERSONAL;

drop table if exists R_ROLE;

drop table if exists R_STATAKUN;

drop table if exists R_STATBERITA;

drop table if exists R_STATIMAGE;

drop table if exists R_STATKAWIN;

drop table if exists R_TFILE;

drop table if exists R_USERAKUN;

drop table if exists R_USERDATA;

drop table if exists R_WN;

drop table if exists T_BERITA;

drop table if exists T_CALONIMAGE;

drop table if exists T_KELASMEMBER;

drop table if exists T_PERSIMAGE;

/*==============================================================*/
/* Table: R_AGAMA                                               */
/*==============================================================*/
create table R_AGAMA
(
   RAGAMA_KODE          char(1) not null comment 'Kode Agama',
   RAGAMA_NAMA          varchar(15) comment 'Nama Agama',
   primary key (RAGAMA_KODE)
);

alter table R_AGAMA comment 'Ref Kode Agama';

/*==============================================================*/
/* Table: R_CALON                                               */
/*==============================================================*/
create table R_CALON
(
   RCALON_ID            bigint not null comment 'Id Calon',
   RSTATKAWIN_KODE      char(2) comment 'Kode Status Perkawinan',
   RUSERAKUN_NAMA       varchar(15) comment 'Nama akun',
   RJK_KODE             char(1) comment 'Kode Jenis Kelamin',
   RKERJA_ID            int comment 'Id Pekerjaan',
   RGOLDARAH_ID         int comment 'Id Gol darah',
   RKOTA_ID             int comment 'Id Kota',
   RWN_KODE             char(3) comment 'Kode Kewargaangaraan',
   RAGAMA_KODE          char(1) comment 'Kode Agama',
   RCALON_NAMA          varchar(50) comment 'Nama Calon',
   RCALON_PANGGILAN     varchar(30) comment 'Panggilan',
   RCALON_TEMPATLAHIR   varchar(30) comment 'Tempat Lahir',
   RCALON_TGLLAHIR      date comment 'Tanggal Lahir',
   RCALON_ALAMAT        varchar(100) comment 'Alamat',
   RCALON_RT            varchar(3) comment 'RT',
   RCALON_RW            varchar(3) comment 'RW',
   RCALON_KEL           varchar(50) comment 'Kelurahan',
   RCALON_KEC           varchar(50) comment 'Kecamatan',
   RCALON_NOHAPE        varchar(30) comment 'No Hape',
   RCALON_EMAIL         varchar(50) comment 'Email',
   RCALON_TGLEXPIRED    date comment 'Tanggal Expired Id/KTP',
   RCALON_TGLENTRI      date comment 'Tanggal Entri',
   RCALON_TGLVERVAL     date comment 'Tanggal Verifikasi dan Validasi',
   RCALON_TGLUPDATE     date comment 'Tanggal Update terakhir',
   primary key (RCALON_ID)
);

alter table R_CALON comment 'Data calon anggota';

/*==============================================================*/
/* Table: R_GOLDARAH                                            */
/*==============================================================*/
create table R_GOLDARAH
(
   RGOLDARAH_ID         int not null comment 'Id Gol darah',
   RGOLDARAH_KODE       char(2) comment 'Kode Gol darah',
   primary key (RGOLDARAH_ID)
);

alter table R_GOLDARAH comment 'Ref kode golongan darah';

/*==============================================================*/
/* Table: R_IMAGE                                               */
/*==============================================================*/
create table R_IMAGE
(
   RIMAGE_ID            bigint not null comment 'Id Image',
   RTFILE_ID            bigint comment 'Id Tipe file',
   RIMAGE_CAPTION       text comment 'Caption Image',
   RIMAGE_DESK          text comment 'Deskripsi Image',
   RIMAGE_TGLDIBUAT     date comment 'Tanggal Dibuat',
   RIMAGE_TGLUPLOAD     datetime comment 'Waktu upload',
   RIMAGE_NMFLE         text comment 'Nama File',
   RIMAGE_FOLDER        varchar(100) comment 'Folder',
   primary key (RIMAGE_ID)
);

alter table R_IMAGE comment 'Data image';

/*==============================================================*/
/* Table: R_JK                                                  */
/*==============================================================*/
create table R_JK
(
   RJK_KODE             char(1) not null comment 'Kode Jenis Kelamin',
   RJK_NAMA             varchar(15) comment 'Jenis Kelamin',
   primary key (RJK_KODE)
);

alter table R_JK comment 'Ref Jenis Kelamin';

/*==============================================================*/
/* Table: R_JURUSAN                                             */
/*==============================================================*/
create table R_JURUSAN
(
   RJURUSAN_KODE        char(2) not null comment 'Kode Jurusan',
   RJURUSAN_NAMA        varchar(50) comment 'Nama Jurusan',
   primary key (RJURUSAN_KODE)
);

alter table R_JURUSAN comment 'Jurusan';

/*==============================================================*/
/* Table: R_KERJA                                               */
/*==============================================================*/
create table R_KERJA
(
   RKERJA_ID            int not null comment 'Id Pekerjaan',
   RKERJA_NAMA          varchar(50) comment 'Nama Pekerjaan',
   primary key (RKERJA_ID)
);

alter table R_KERJA comment 'Ref Kode Pekerjaan';

/*==============================================================*/
/* Table: R_KOTA                                                */
/*==============================================================*/
create table R_KOTA
(
   RKOTA_ID             int not null comment 'Id Kota',
   RKOTA_KODE           char(3) comment 'Kode Kota',
   RKOTA_NAMA           varchar(50) comment 'Nama Kota ',
   primary key (RKOTA_ID)
);

alter table R_KOTA comment 'Daftar Kota';

/*==============================================================*/
/* Table: R_PERSONAL                                            */
/*==============================================================*/
create table R_PERSONAL
(
   RPERSONAL_ID         bigint not null comment 'Id Personal',
   RGOLDARAH_ID         int comment 'Id Gol darah',
   RJK_KODE             char(1) comment 'Kode Jenis Kelamin',
   RSTATKAWIN_KODE      char(2) comment 'Kode Status Perkawinan',
   RKERJA_ID            int comment 'Id Pekerjaan',
   RWN_KODE             char(3) comment 'Kode Kewargaangaraan',
   RKOTA_ID             int comment 'Id Kota',
   RAGAMA_KODE          char(1) comment 'Kode Agama',
   RPERSONAL_NAMA       varchar(50) comment 'Nama ',
   RPERSONAL_PANGGILAN  varchar(30) comment 'Panggilan',
   RPERSONAL_TEMPATLAHR varchar(30) comment 'Tempat Lahir',
   RPERSONAL_TGLLAHIR   date comment 'Tanggal Lahir',
   RPERSONAL_ALAMAT     varchar(100) comment 'Alamat',
   RPERSONAL_RT         varchar(3) comment 'RT',
   RPERSONAL_RW         varchar(3) comment 'RW',
   RPERSONAL_KEL        varchar(50) comment 'Kelurahan',
   RPERSONAL_KECAMATAN  varchar(50) comment 'Kecamatan',
   RPERSONAL_NOHAPE     varchar(30) comment 'No Hape',
   RPERSONAL_EMAIL      varchar(50) comment 'Email',
   RPERSONAL_TGLEXPIRED date comment 'Tanggal Expired Id/KTP',
   RPERSONAL_TGLENTRI   date comment 'Tanggal Entri',
   RPERSONAL_TGLVERVAL  date comment 'Tanggal Verifikasi dan Validasi',
   RPERSONAL_TGLUPDATE  date comment 'Tangaal update terakhir',
   primary key (RPERSONAL_ID)
);

alter table R_PERSONAL comment 'Data personal';

/*==============================================================*/
/* Table: R_ROLE                                                */
/*==============================================================*/
create table R_ROLE
(
   RROLE_KODE           char(1) not null comment 'Kode Role',
   RROLE_NAMA           varchar(50) comment 'Nama Role',
   RROLE_DESK           text comment 'Desk Role',
   primary key (RROLE_KODE)
);

alter table R_ROLE comment 'Ref Role';

/*==============================================================*/
/* Table: R_STATAKUN                                            */
/*==============================================================*/
create table R_STATAKUN
(
   RSTATAKUN_KODE       char(1) not null comment 'Kode Status Akun',
   RSTATAKUN_NAMA       varchar(35) comment 'Nama Status Akun',
   primary key (RSTATAKUN_KODE)
);

alter table R_STATAKUN comment 'Status Akun';

/*==============================================================*/
/* Table: R_STATBERITA                                          */
/*==============================================================*/
create table R_STATBERITA
(
   RSTATBERITA_KODE     char(12) not null comment 'Kode Status berita',
   RSTATBERITA_NAMA     varchar(50) comment 'Nama Status Berita',
   primary key (RSTATBERITA_KODE)
);

alter table R_STATBERITA comment 'Status berita - draft - publish - hold';

/*==============================================================*/
/* Table: R_STATIMAGE                                           */
/*==============================================================*/
create table R_STATIMAGE
(
   RSTATIMAGE_KODE      char(2) not null comment 'Kode Status Image',
   RSTATIMAGE_DESK      varchar(35) comment 'Uraian Status Image',
   primary key (RSTATIMAGE_KODE)
);

alter table R_STATIMAGE comment 'Ref Kode Status Image';

/*==============================================================*/
/* Table: R_STATKAWIN                                           */
/*==============================================================*/
create table R_STATKAWIN
(
   RSTATKAWIN_KODE      char(2) not null comment 'Kode Status Perkawinan',
   RSTATKAWIN_NAMA      varchar(25) comment 'Nama Status Perkawinan',
   primary key (RSTATKAWIN_KODE)
);

alter table R_STATKAWIN comment 'Ref Status Perkawinan';

/*==============================================================*/
/* Table: R_TFILE                                               */
/*==============================================================*/
create table R_TFILE
(
   RTFILE_ID            bigint not null comment 'Id Tipe file',
   RTFILE_EXT           varchar(4) comment 'Ekstensi file',
   RTFILE_DESK          varchar(255) comment 'Desk tipe file',
   primary key (RTFILE_ID)
);

alter table R_TFILE comment 'Tipe file';

/*==============================================================*/
/* Table: R_USERAKUN                                            */
/*==============================================================*/
create table R_USERAKUN
(
   RUSERAKUN_NAMA       varchar(15) not null comment 'Nama akun',
   RSTATAKUN_KODE       char(1) comment 'Kode Status Akun',
   RPERSONAL_ID         bigint not null comment 'Id Personal',
   RROLE_KODE           char(1) comment 'Kode Role',
   RUSERAKUN_PASSW      text comment 'Password',
   RUSERAKUN_TGLCREATE  date comment 'Tanggal dibuat',
   RUSERAKUN_TGLVER     datetime comment 'Tanggal verifikasi',
   RUSERAKUN_TGLEXPIRED date comment 'Tanggal expired',
   primary key (RUSERAKUN_NAMA)
);

alter table R_USERAKUN comment 'Akun pengguna';

/*==============================================================*/
/* Table: R_USERDATA                                            */
/*==============================================================*/
create table R_USERDATA
(
   RUSERAKUN_NAMA       varchar(15) not null comment 'Nama akun',
   RUSERDATA_TAHUN      int not null comment 'Tahun masuk',
   RSTATAKUN_KODE       char(1) comment 'Kode Status Akun',
   RUSERDATA_TGLMULAI   date comment 'Tanggal mulai',
   primary key (RUSERAKUN_NAMA, RUSERDATA_TAHUN)
);

alter table R_USERDATA comment 'Penanggung jawab data';

/*==============================================================*/
/* Table: R_WN                                                  */
/*==============================================================*/
create table R_WN
(
   RWN_KODE             char(3) not null comment 'Kode Kewargaangaraan',
   RWN_NAMA             varchar(25) comment 'Deskripsi Warga Kewarganegaraan',
   primary key (RWN_KODE)
);

alter table R_WN comment 'Ref Kode Warga Negara';

/*==============================================================*/
/* Table: T_BERITA                                              */
/*==============================================================*/
create table T_BERITA
(
   TBERITA_ID           bigint not null comment 'Id berita',
   RSTATBERITA_KODE     char(12) comment 'Kode Status berita',
   RUSERAKUN_NAMA       varchar(15) comment 'Nama akun',
   TBERITA_TGL          date comment 'Tanggal Berita',
   TBERITA_JUDUL        varchar(255) comment 'Judul Berita',
   TBERITA_DESK         text comment 'Deskripsi',
   TBERITA_URL          varchar(100) comment 'URL Berita luar',
   TBERITA_TGLENTRI     date comment 'Tanggal Entri ',
   primary key (TBERITA_ID)
);

alter table T_BERITA comment 'Data berita - informasi untuk anggota';

/*==============================================================*/
/* Table: T_CALONIMAGE                                          */
/*==============================================================*/
create table T_CALONIMAGE
(
   RIMAGE_ID            bigint not null comment 'Id Image',
   RCALON_ID            bigint not null comment 'Id Calon',
   TCALONIMAGE_TGLMAP   date comment 'Tanggal pemetaan',
   primary key (RIMAGE_ID, RCALON_ID)
);

alter table T_CALONIMAGE comment 'Image/foto calon';

/*==============================================================*/
/* Table: T_KELASMEMBER                                         */
/*==============================================================*/
create table T_KELASMEMBER
(
   RJURUSAN_KODE        char(2) not null comment 'Kode Jurusan',
   RPERSONAL_ID         bigint not null comment 'Id Personal',
   TKLSMEMBER_NO        varchar(15) comment 'No kelas',
   TKLSMEMBER_THN       int comment 'Tahun',
   primary key (RJURUSAN_KODE, RPERSONAL_ID)
);

/*==============================================================*/
/* Table: T_PERSIMAGE                                           */
/*==============================================================*/
create table T_PERSIMAGE
(
   RIMAGE_ID            bigint not null comment 'Id Image',
   RPERSONAL_ID         bigint comment 'Id Personal',
   RSTATIMAGE_KODE      char(2) comment 'Kode Status Image',
   TPERSIMAGE_TGLMAP    datetime comment 'Tanggal mapping',
   primary key (RIMAGE_ID)
);

alter table T_PERSIMAGE comment 'Personal Image';

alter table R_CALON add constraint FK_RELATIONSHIP_21 foreign key (RUSERAKUN_NAMA)
      references R_USERAKUN (RUSERAKUN_NAMA) on delete restrict on update restrict;

alter table R_CALON add constraint FK_RELATIONSHIP_22 foreign key (RAGAMA_KODE)
      references R_AGAMA (RAGAMA_KODE) on delete restrict on update restrict;

alter table R_CALON add constraint FK_RELATIONSHIP_23 foreign key (RGOLDARAH_ID)
      references R_GOLDARAH (RGOLDARAH_ID) on delete restrict on update restrict;

alter table R_CALON add constraint FK_RELATIONSHIP_24 foreign key (RJK_KODE)
      references R_JK (RJK_KODE) on delete restrict on update restrict;

alter table R_CALON add constraint FK_RELATIONSHIP_25 foreign key (RKERJA_ID)
      references R_KERJA (RKERJA_ID) on delete restrict on update restrict;

alter table R_CALON add constraint FK_RELATIONSHIP_26 foreign key (RWN_KODE)
      references R_WN (RWN_KODE) on delete restrict on update restrict;

alter table R_CALON add constraint FK_RELATIONSHIP_27 foreign key (RSTATKAWIN_KODE)
      references R_STATKAWIN (RSTATKAWIN_KODE) on delete restrict on update restrict;

alter table R_CALON add constraint FK_RELATIONSHIP_28 foreign key (RKOTA_ID)
      references R_KOTA (RKOTA_ID) on delete restrict on update restrict;

alter table R_IMAGE add constraint FK_RELATIONSHIP_13 foreign key (RTFILE_ID)
      references R_TFILE (RTFILE_ID) on delete restrict on update restrict;

alter table R_PERSONAL add constraint FK_RELATIONSHIP_3 foreign key (RJK_KODE)
      references R_JK (RJK_KODE) on delete restrict on update restrict;

alter table R_PERSONAL add constraint FK_RELATIONSHIP_4 foreign key (RGOLDARAH_ID)
      references R_GOLDARAH (RGOLDARAH_ID) on delete restrict on update restrict;

alter table R_PERSONAL add constraint FK_RELATIONSHIP_5 foreign key (RKOTA_ID)
      references R_KOTA (RKOTA_ID) on delete restrict on update restrict;

alter table R_PERSONAL add constraint FK_RELATIONSHIP_6 foreign key (RAGAMA_KODE)
      references R_AGAMA (RAGAMA_KODE) on delete restrict on update restrict;

alter table R_PERSONAL add constraint FK_RELATIONSHIP_7 foreign key (RSTATKAWIN_KODE)
      references R_STATKAWIN (RSTATKAWIN_KODE) on delete restrict on update restrict;

alter table R_PERSONAL add constraint FK_RELATIONSHIP_8 foreign key (RKERJA_ID)
      references R_KERJA (RKERJA_ID) on delete restrict on update restrict;

alter table R_PERSONAL add constraint FK_RELATIONSHIP_9 foreign key (RWN_KODE)
      references R_WN (RWN_KODE) on delete restrict on update restrict;

alter table R_USERAKUN add constraint FK_RELATIONSHIP_15 foreign key (RPERSONAL_ID)
      references R_PERSONAL (RPERSONAL_ID) on delete restrict on update restrict;

alter table R_USERAKUN add constraint FK_RELATIONSHIP_16 foreign key (RROLE_KODE)
      references R_ROLE (RROLE_KODE) on delete restrict on update restrict;

alter table R_USERAKUN add constraint FK_RELATIONSHIP_17 foreign key (RSTATAKUN_KODE)
      references R_STATAKUN (RSTATAKUN_KODE) on delete restrict on update restrict;

alter table R_USERDATA add constraint FK_RELATIONSHIP_20 foreign key (RSTATAKUN_KODE)
      references R_STATAKUN (RSTATAKUN_KODE) on delete restrict on update restrict;

alter table R_USERDATA add constraint FK_RELATIONSHIP_31 foreign key (RUSERAKUN_NAMA)
      references R_USERAKUN (RUSERAKUN_NAMA) on delete restrict on update restrict;

alter table T_BERITA add constraint FK_RELATIONSHIP_18 foreign key (RUSERAKUN_NAMA)
      references R_USERAKUN (RUSERAKUN_NAMA) on delete restrict on update restrict;

alter table T_BERITA add constraint FK_RELATIONSHIP_19 foreign key (RSTATBERITA_KODE)
      references R_STATBERITA (RSTATBERITA_KODE) on delete restrict on update restrict;

alter table T_CALONIMAGE add constraint FK_RELATIONSHIP_29 foreign key (RIMAGE_ID)
      references R_IMAGE (RIMAGE_ID) on delete restrict on update restrict;

alter table T_CALONIMAGE add constraint FK_RELATIONSHIP_30 foreign key (RCALON_ID)
      references R_CALON (RCALON_ID) on delete restrict on update restrict;

alter table T_KELASMEMBER add constraint FK_RELATIONSHIP_10 foreign key (RPERSONAL_ID)
      references R_PERSONAL (RPERSONAL_ID) on delete restrict on update restrict;

alter table T_KELASMEMBER add constraint FK_RELATIONSHIP_2 foreign key (RJURUSAN_KODE)
      references R_JURUSAN (RJURUSAN_KODE) on delete restrict on update restrict;

alter table T_PERSIMAGE add constraint FK_RELATIONSHIP_11 foreign key (RPERSONAL_ID)
      references R_PERSONAL (RPERSONAL_ID) on delete restrict on update restrict;

alter table T_PERSIMAGE add constraint FK_RELATIONSHIP_12 foreign key (RIMAGE_ID)
      references R_IMAGE (RIMAGE_ID) on delete restrict on update restrict;

alter table T_PERSIMAGE add constraint FK_RELATIONSHIP_32 foreign key (RSTATIMAGE_KODE)
      references R_STATIMAGE (RSTATIMAGE_KODE) on delete restrict on update restrict;

