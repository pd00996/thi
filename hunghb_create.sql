-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-08-22 00:59:23.905




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV int  NOT NULL,
    TenNV varchar(50)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh varchar(3)  NOT NULL,
    Email varchar(50)  NOT NULL,
    Mucluong int  NOT NULL,
    Maphong int  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    Maphong int  NOT NULL,
    Tenphong varchar(25)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (Maphong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)


ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (Maphong)
    REFERENCES TPhongban (Maphong)
;





-- End of file.

