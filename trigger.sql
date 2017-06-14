
CREATE TRIGGER tg_ThemCTDDH
ON CTDDH
FOR INSERT
AS
begin
	declare @sl int = (select SOLUONG from inserted)
	declare @masp int = (select MASP from inserted)
	update SANPHAM set SOLUONGTON = SOLUONGTON - @sl where MASP = @masp
end


CREATE TRIGGER tg_SuaCTDDH
ON CTDDH
FOR update
AS
begin
	declare @sl int = (select soluong from inserted)
	declare @maspt nvarchar(10) = (select masp from inserted)
	update SANPHAM set SOLUONGTON = SOLUONGTON + @sl where masp = @maspt
	
	declare @sls int = (select soluong from deleted)
	declare @maspx nvarchar(10) = (select masp from deleted)
	update SANPHAM set SOLUONGTON = SOLUONGTON - @sl where masp = @maspx
end

CREATE TRIGGER tg_XoaCTDDH
ON CTDDH
FOR Delete
AS
begin
	declare @sl int = (select soluong from deleted)
	declare @maspx nvarchar(10) = (select masp from deleted)
	update SANPHAM set SOLUONGTON = SOLUONGTON - @sl where masp = @maspx
end

