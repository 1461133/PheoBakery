
CREATE TRIGGER tg_ThemCTDDH
ON CTDDH
FOR INSERT
AS
begin
	declare @sl int = (select soluong from inserted)
	declare @masp int = (select masp from inserted)
	update SANPHAM set SOLUONGTON = SOLUONGTON - @sl where masp = @masp
end
