CREATE TABLE "ilceler"(
    "ilce_id" SMALLINT NOT NULL,
    "ilce_adi" NVARCHAR(16) NOT NULL,
    "il_id" TINYINT NOT NULL
);
ALTER TABLE
    "ilceler" ADD CONSTRAINT "ilceler_ilce_id_primary" PRIMARY KEY("ilce_id");
CREATE TABLE "adres"(
    "adres_id" INT NOT NULL,
    "il_id" TINYINT NOT NULL,
    "ilce_id" SMALLINT NOT NULL,
    "mahalle_id" INT NOT NULL,
    "sokak_adi" NVARCHAR(255) NOT NULL,
    "bina_no" SMALLINT NOT NULL,
    "daire_no" SMALLINT NOT NULL,
    "acik_adres" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "adres" ADD CONSTRAINT "adres_adres_id_primary" PRIMARY KEY("adres_id");
CREATE TABLE "konut_tipi"(
    "emlak_tipi_id" TINYINT NOT NULL,
    "emlak_tipi" NVARCHAR(55) NOT NULL
);
ALTER TABLE
    "konut_tipi" ADD CONSTRAINT "konut_tipi_emlak_tipi_id_primary" PRIMARY KEY("emlak_tipi_id");
CREATE TABLE "konutlar"(
    "konut_id" INT NOT NULL,
    "bina_yapim_yili" DATE NOT NULL,
    "oda_sayisi" TINYINT NOT NULL,
    "bulundugu_kat" TINYINT NOT NULL,
    "bina_kat_sayisi" TINYINT NOT NULL,
    "isitma" NVARCHAR(255) NOT NULL,
    "banyo_sayisi" TINYINT NOT NULL,
    "balkon_sayisi" TINYINT NOT NULL,
    "asansor_var_mi" BIT NOT NULL,
    "otopark" NVARCHAR(100) NOT NULL,
    "esyali_mi" BIT NOT NULL,
    "depozito" BIT NOT NULL,
    "aidat_ucret" DECIMAL(8, 2) NOT NULL,
    "aciklama" NVARCHAR(550) NOT NULL,
    "alan" DECIMAL(8, 2) NOT NULL,
    "emlak_aktiflik" BIT NOT NULL,
    "emlak_sahibi_tc" VARCHAR(11) NOT NULL,
    "emlak_tipi_id" TINYINT NOT NULL,
    "emlak_durumu_id" BIT NOT NULL,
    "kira_mi_satilik_mi" TINYINT NOT NULL,
    "satilik_fiyat" DECIMAL(8, 2) NOT NULL,
    "kira_fiyat" DECIMAL(8, 2) NOT NULL,
    "adres_id" INT NOT NULL,
    "cephe_id" TINYINT NOT NULL
);
ALTER TABLE
    "konutlar" ADD CONSTRAINT "konutlar_konut_id_primary" PRIMARY KEY("konut_id");
CREATE TABLE "isyeri"(
    "isyeri_id" BIGINT NOT NULL,
    "emlak_tipi_id" TINYINT NOT NULL,
    "isyeri_tur_id" TINYINT NOT NULL,
    "alan" DECIMAL(8, 2) NOT NULL,
    "bolum_sayisi" TINYINT NOT NULL,
    "aidat_ucret" DECIMAL(8, 2) NOT NULL,
    "isitma" NVARCHAR(255) NOT NULL,
    "yapim_yili" DATE NOT NULL,
    "emlak_sahibi_tc" VARCHAR(11) NOT NULL,
    "depozito" BIT NOT NULL,
    "column_11" BIGINT NOT NULL
);
ALTER TABLE
    "isyeri" ADD CONSTRAINT "isyeri_isyeri_id_primary" PRIMARY KEY("isyeri_id");
CREATE TABLE "mahalle"(
    "mahalle_id" INT NOT NULL,
    "mahalle_adi" NVARCHAR(255) NOT NULL,
    "ilce_id" SMALLINT NOT NULL,
    "il_id" TINYINT NOT NULL
);
ALTER TABLE
    "mahalle" ADD CONSTRAINT "mahalle_mahalle_id_primary" PRIMARY KEY("mahalle_id");
CREATE TABLE "cinsiyet"(
    "cinsiyet_id" BIT NOT NULL,
    "cinsiyet" VARCHAR(5) NOT NULL
);
ALTER TABLE
    "cinsiyet" ADD CONSTRAINT "cinsiyet_cinsiyet_id_primary" PRIMARY KEY("cinsiyet_id");
CREATE TABLE "cephe"(
    "cephe_id" TINYINT NOT NULL,
    "cephe_adi" NVARCHAR(5) NOT NULL
);
ALTER TABLE
    "cephe" ADD CONSTRAINT "cephe_cephe_id_primary" PRIMARY KEY("cephe_id");
CREATE TABLE "emlakci"(
    "emlakci_tc" VARCHAR(11) NOT NULL,
    "ad" NVARCHAR(50) NOT NULL,
    "soyad" NVARCHAR(50) NOT NULL,
    "telefon" NVARCHAR(10) NOT NULL,
    "email" NVARCHAR(250) NULL,
    "adres_id" INT NOT NULL,
    "dogum_tarihi" DATE NOT NULL,
    "cinsiyet_id" BIT NOT NULL
);
ALTER TABLE
    "emlakci" ADD CONSTRAINT "emlakci_emlakci_tc_primary" PRIMARY KEY("emlakci_tc");
CREATE TABLE "musteri"(
    "musteri_tc" VARCHAR(11) NOT NULL,
    "adi" NVARCHAR(55) NOT NULL,
    "soyadi" NVARCHAR(55) NOT NULL,
    "telefon" VARCHAR(11) NOT NULL,
    "email" NVARCHAR(250) NULL,
    "dogum_tarihi" DATE NOT NULL,
    "aciklama" NVARCHAR(550) NOT NULL,
    "cinsiyet" BIT NOT NULL,
    "adres_id" INT NOT NULL
);
ALTER TABLE
    "musteri" ADD CONSTRAINT "musteri_musteri_tc_primary" PRIMARY KEY("musteri_tc");
CREATE TABLE "isyeri_turleri"(
    "isyeri_tur_id" TINYINT NOT NULL,
    "tur_aciklamasi" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "isyeri_turleri" ADD CONSTRAINT "isyeri_turleri_isyeri_tur_id_primary" PRIMARY KEY("isyeri_tur_id");
CREATE TABLE "emlak_durum"(
    "emlak_durumu_id" BIT NOT NULL,
    "emlak_durumu_aciklama" NVARCHAR(50) NOT NULL
);
ALTER TABLE
    "emlak_durum" ADD CONSTRAINT "emlak_durum_emlak_durumu_id_primary" PRIMARY KEY("emlak_durumu_id");
CREATE TABLE "iller"(
    "il_id" TINYINT NOT NULL,
    "il_adi" NVARCHAR(14) NOT NULL
);
ALTER TABLE
    "iller" ADD CONSTRAINT "iller_il_id_primary" PRIMARY KEY("il_id");
CREATE TABLE "imar_durumlari"(
    "imar_cesidi_id" TINYINT NOT NULL,
    "imar_cesidi" NVARCHAR(200) NOT NULL
);
ALTER TABLE
    "imar_durumlari" ADD CONSTRAINT "imar_durumlari_imar_cesidi_id_primary" PRIMARY KEY("imar_cesidi_id");
CREATE TABLE "arsa"(
    "arsa_id" INT NOT NULL,
    "imar_cesidi_id" TINYINT NOT NULL,
    "ada_no" INT NOT NULL,
    "parsel_no" INT NOT NULL,
    "kaks_id" INT NOT NULL,
    "gabari_id" INT NOT NULL,
    "tapu_durumu_id" INT NOT NULL,
    "emlak_sahibi_tc" VARCHAR(11) NOT NULL,
    "emlak_tipi_id" TINYINT NOT NULL,
    "alan" DECIMAL(8, 2) NOT NULL,
    "fiyat" DECIMAL(8, 2) NOT NULL,
    "takas_bilgisi" BIT NOT NULL,
    "depozito" BIT NOT NULL,
    "column_14" BIGINT NOT NULL
);
ALTER TABLE
    "arsa" ADD CONSTRAINT "arsa_arsa_id_primary" PRIMARY KEY("arsa_id");
ALTER TABLE
    "musteri" ADD CONSTRAINT "musteri_cinsiyet_foreign" FOREIGN KEY("cinsiyet") REFERENCES "cinsiyet"("cinsiyet_id");
ALTER TABLE
    "konutlar" ADD CONSTRAINT "konutlar_emlak_tipi_id_foreign" FOREIGN KEY("emlak_tipi_id") REFERENCES "konut_tipi"("emlak_tipi_id");
ALTER TABLE
    "konutlar" ADD CONSTRAINT "konutlar_emlak_durumu_id_foreign" FOREIGN KEY("emlak_durumu_id") REFERENCES "emlak_durum"("emlak_durumu_id");
ALTER TABLE
    "konutlar" ADD CONSTRAINT "konutlar_emlak_sahibi_tc_foreign" FOREIGN KEY("emlak_sahibi_tc") REFERENCES "musteri"("musteri_tc");
ALTER TABLE
    "adres" ADD CONSTRAINT "adres_ilce_id_foreign" FOREIGN KEY("ilce_id") REFERENCES "ilceler"("ilce_id");
ALTER TABLE
    "mahalle" ADD CONSTRAINT "mahalle_il_id_foreign" FOREIGN KEY("il_id") REFERENCES "iller"("il_id");
ALTER TABLE
    "konutlar" ADD CONSTRAINT "konutlar_cephe_id_foreign" FOREIGN KEY("cephe_id") REFERENCES "cephe"("cephe_id");
ALTER TABLE
    "ilceler" ADD CONSTRAINT "ilceler_il_id_foreign" FOREIGN KEY("il_id") REFERENCES "iller"("il_id");
ALTER TABLE
    "arsa" ADD CONSTRAINT "arsa_imar_cesidi_id_foreign" FOREIGN KEY("imar_cesidi_id") REFERENCES "imar_durumlari"("imar_cesidi_id");
ALTER TABLE
    "mahalle" ADD CONSTRAINT "mahalle_ilce_id_foreign" FOREIGN KEY("ilce_id") REFERENCES "ilceler"("ilce_id");
ALTER TABLE
    "isyeri" ADD CONSTRAINT "isyeri_emlak_sahibi_tc_foreign" FOREIGN KEY("emlak_sahibi_tc") REFERENCES "musteri"("musteri_tc");
ALTER TABLE
    "emlakci" ADD CONSTRAINT "emlakci_cinsiyet_id_foreign" FOREIGN KEY("cinsiyet_id") REFERENCES "cinsiyet"("cinsiyet_id");
ALTER TABLE
    "musteri" ADD CONSTRAINT "musteri_adres_id_foreign" FOREIGN KEY("adres_id") REFERENCES "adres"("adres_id");
ALTER TABLE
    "emlakci" ADD CONSTRAINT "emlakci_adres_id_foreign" FOREIGN KEY("adres_id") REFERENCES "adres"("adres_id");
ALTER TABLE
    "arsa" ADD CONSTRAINT "arsa_emlak_sahibi_tc_foreign" FOREIGN KEY("emlak_sahibi_tc") REFERENCES "musteri"("musteri_tc");
ALTER TABLE
    "adres" ADD CONSTRAINT "adres_il_id_foreign" FOREIGN KEY("il_id") REFERENCES "iller"("il_id");
ALTER TABLE
    "konutlar" ADD CONSTRAINT "konutlar_adres_id_foreign" FOREIGN KEY("adres_id") REFERENCES "adres"("adres_id");
ALTER TABLE
    "adres" ADD CONSTRAINT "adres_mahalle_id_foreign" FOREIGN KEY("mahalle_id") REFERENCES "mahalle"("mahalle_id");
ALTER TABLE
    "isyeri" ADD CONSTRAINT "isyeri_isyeri_tur_id_foreign" FOREIGN KEY("isyeri_tur_id") REFERENCES "isyeri_turleri"("isyeri_tur_id");