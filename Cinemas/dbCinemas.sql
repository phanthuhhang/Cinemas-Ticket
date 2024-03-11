Create database Cinemas

CREATE TABLE Phong(
	IDPhong int IDENTITY (1,1) PRIMARY KEY,
	TenPhong NVARCHAR(10),
	SoGhe int,
	SoGheTrong int,
);
CREATE TABLE Ghe(
	IDGhe int IDENTITY (1,1) PRIMARY KEY,
	TenGhe NVARCHAR(10)
);	
CREATE TABLE Ghe_Phong(
	ID int IDENTITY (1,1) PRIMARY KEY,
	IDGhe int FOREIGN KEY REFERENCES Ghe,
	IDPhong int FOREIGN KEY REFERENCES Phong,
	TrangThaiGhe bit 
);	
CREATE TABLE GioChieu(
	IDGioChieu int IDENTITY (1,1) PRIMARY KEY,
	GioChieu time(0)
);	
CREATE TABLE TinhTrangPhim(
	IDTinhTrangPhim int IDENTITY (1,1) PRIMARY KEY,
	TenTinhTrang nvarchar(50)
	 
);	
CREATE TABLE TheLoaiPhim(
	IDTheLoai int IDENTITY (1,1) PRIMARY KEY,
	TenTheLoai nvarchar(150)
);	
CREATE TABLE Phim(
	IDPhim int IDENTITY (1,1) PRIMARY KEY,
	IDTheLoai int FOREIGN KEY REFERENCES TheLoaiPhim,
	IDTinhTrangPhim int FOREIGN KEY REFERENCES TinhTrangPhim,
	img nvarchar(Max),
	TenPhim nvarchar(250),
	ThoiLuong int,
	Gia decimal(18,0),
	NgayKhoiChieu Date,
	DaoDien Nvarchar(50),
	DienVien nvarchar(250),
	MoTa nvarchar(Max)
);	
CREATE TABLE Accounts(
	IDAccount int IDENTITY (1,1) PRIMARY KEY,
	Username nvarchar(50),
	Password varchar(50),
	RoleID int,
	Avatar varchar(max),
	Active bit
);	
CREATE TABLE KhachHang(
	IDKH int IDENTITY (1,1) PRIMARY KEY,
	IDAccount int FOREIGN KEY REFERENCES Accounts,
	TenKH nvarchar(150),
	Email varchar(100),
	SDT varchar(50),
	NgaySinh date,
	GioiTinh bit,
	DiaChi nvarchar(200)
);	
CREATE TABLE HoaDon(
	IDHoaDon int IDENTITY (1,1) PRIMARY KEY,
	IDKH int FOREIGN KEY REFERENCES KhachHang,
	IDPhong int FOREIGN KEY REFERENCES Phong,
	NgayMuaVe date,
	SoLuongGhe int,
	TenGhe varchar(50),
	TongTien decimal(18,0)
);	
CREATE TABLE LichChieuPhim(
	IDLichChieu int IDENTITY (1,1) PRIMARY KEY,
	NgayChieu datetime,
	IDPhim int FOREIGN KEY REFERENCES Phim,
	IDGioChieu int FOREIGN KEY REFERENCES GioChieu,
	IDPhong int FOREIGN KEY REFERENCES Phong
);	
CREATE TABLE Roles(
	RoleID int IDENTITY (1,1) PRIMARY KEY,
	RoleName nvarchar(100) 
);	



------------ DATABASE CINEMAS ------------
	-- INSERT PHÒNG --
	INSERT INTO Phong 
		VALUES ('P1',100,100),
			   ('P2',100,100),
			   ('P3',100,100),
			   ('P4',100,100),
			   ('P5',100,100)
	SELECT * FROM Phong
	GO

	-- INSERT GHẾ --
	INSERT INTO Ghe 
		VALUES ('A1'),('A2'),('A3'),('A4'),('A5'),('A6'),('A7'),('A8'),('A9'),('A10'),
			   ('B1'),('B2'),('B3'),('B4'),('B5'),('B6'),('B7'),('B8'),('B9'),('B10'),
			   ('C1'),('C2'),('C3'),('C4'),('C5'),('C6'),('C7'),('C8'),('C9'),('C10'),
			   ('D1'),('D2'),('D3'),('D4'),('D5'),('D6'),('D7'),('D8'),('D9'),('D10'),
			   ('E1'),('E2'),('E3'),('E4'),('E5'),('E6'),('E7'),('E8'),('E9'),('E10'),
			   ('F1'),('F2'),('F3'),('F4'),('F5'),('F6'),('F7'),('F8'),('F9'),('F10'),
			   ('G1'),('G2'),('G3'),('G4'),('G5'),('G6'),('G7'),('G8'),('G9'),('G10'),
			   ('H1'),('H2'),('H3'),('H4'),('H5'),('H6'),('H7'),('H8'),('H9'),('H10'),
			   ('I1'),('I2'),('I3'),('I4'),('I5'),('I6'),('I7'),('I8'),('I9'),('I10'),
			   ('J1'),('J2'),('J3'),('J4'),('J5'),('J6'),('J7'),('J8'),('J9'),('J10')
select*from Ghe
	-- INSERT CHI TIẾT PHÒNG (GHE_PHONG) --
	INSERT INTO Ghe_Phong (IDPhong,IDGhe,TrangThaiGhe)
		VALUES (1,1,1),(1,2,1),(1,3,1),(1,4,1),(1,5,1),(1,6,1),(1,7,1),(1,8,1),(1,9,1),(1,10,1),
			   (1,16,1),(1,17,1),(1,18,1),(1,19,1),(1,20,1),(1,21,1),(1,22,1),(1,23,1),(1,24,1),(1,25,1),
			   (1,26,1),(1,27,1),(1,28,1),(1,29,1),(1,30,1),(1,31,1),(1,32,1),(1,33,1),(1,34,1),(1,35,1),
			   (1,36,1),(1,37,1),(1,38,1),(1,39,1),(1,40,1),(1,41,1),(1,42,1),(1,43,1),(1,44,1),(1,45,1),
			   (1,46,1),(1,47,1),(1,48,1),(1,49,1),(1,50,1),(1,51,1),(1,52,1),(1,53,1),(1,54,1),(1,55,1),
			   (1,56,1),(1,57,1),(1,58,1),(1,59,1),(1,60,0),(1,61,0),(1,62,1),(1,63,1),(1,64,1),(1,65,1),
			   (1,66,1),(1,67,1),(1,68,1),(1,69,1),(1,70,1),(1,71,1),(1,72,1),(1,73,1),(1,74,1),(1,75,1),
			   (1,76,1),(1,77,1),(1,78,1),(1,79,1),(1,80,1),(1,81,1),(1,82,1),(1,83,1),(1,84,1),(1,85,1),
			   (1,86,1),(1,87,1),(1,88,1),(1,89,1),(1,90,1),(1,91,1),(1,92,1),(1,93,1),(1,94,1),(1,95,1),
			   (1,96,1),(1,97,1),(1,98,1),(1,99,1),(1,100,1)
	INSERT INTO Ghe_Phong (IDPhong,IDGhe,TrangThaiGhe)
		VALUES (2,1,1),(2,2,1),(2,3,1),(2,4,1),(2,5,1),(2,6,1),(2,7,1),(2,8,1),(2,9,1),(2,10,1),
			   (2,16,1),(2,17,1),(2,18,1),(2,19,1),(2,20,1),(2,21,1),(2,22,1),(2,23,1),(2,24,1),(2,25,1),
			   (2,26,1),(2,27,1),(2,28,1),(2,29,1),(2,30,1),(2,31,1),(2,32,1),(2,33,1),(2,34,1),(2,35,1),
			   (2,36,1),(2,37,1),(2,38,1),(2,39,1),(2,40,1),(2,41,1),(2,42,1),(2,43,1),(2,44,1),(2,45,1),
			   (2,46,1),(2,47,1),(2,48,1),(2,49,1),(2,50,1),(2,51,1),(2,52,1),(2,53,1),(2,54,1),(2,55,1),
			   (2,56,1),(2,57,1),(2,58,1),(2,59,1),(2,60,1),(2,61,1),(2,62,1),(2,63,1),(2,64,1),(2,65,1),
			   (2,66,1),(2,67,1),(2,68,1),(2,69,1),(2,70,1),(2,71,1),(2,72,1),(2,73,1),(2,74,1),(2,75,1),
			   (2,76,1),(2,77,1),(2,78,1),(2,79,1),(2,80,1),(2,81,1),(2,82,1),(2,83,1),(2,84,1),(2,85,1),
			   (2,86,1),(2,87,1),(2,88,1),(2,89,1),(2,90,1),(2,91,1),(2,92,1),(2,93,1),(2,94,1),(2,95,1),
			   (2,96,1),(2,97,1),(2,98,1),(2,99,1),(2,100,1)
	INSERT INTO Ghe_Phong (IDPhong,IDGhe,TrangThaiGhe)
		VALUES (3,1,1),(3,2,1),(3,3,1),(3,4,1),(3,5,1),(3,6,1),(3,7,1),(3,8,1),(3,9,1),(3,10,1),
			   (3,16,1),(3,17,1),(3,18,1),(3,19,1),(3,20,1),(3,21,1),(3,22,1),(3,23,1),(3,24,1),(3,25,1),
			   (3,26,1),(3,27,1),(3,28,1),(3,29,1),(3,30,1),(3,31,1),(3,32,1),(3,33,1),(3,34,1),(3,35,1),
			   (3,36,1),(3,37,1),(3,38,1),(3,39,1),(3,40,1),(3,41,1),(3,42,1),(3,43,1),(3,44,1),(3,45,1),
			   (3,46,1),(3,47,1),(3,48,1),(3,49,1),(3,50,1),(3,51,1),(3,52,1),(3,53,1),(3,54,1),(3,55,1),
			   (3,56,1),(3,57,1),(3,58,1),(3,59,1),(3,60,1),(3,61,1),(3,62,1),(3,63,1),(3,64,1),(3,65,1),
			   (3,66,1),(3,67,1),(3,68,1),(3,69,1),(3,70,1),(3,71,1),(3,72,1),(3,73,1),(3,74,1),(3,75,1),
			   (3,76,1),(3,77,1),(3,78,1),(3,79,1),(3,80,1),(3,81,1),(3,82,1),(3,83,1),(3,84,1),(3,85,1),
			   (3,86,1),(3,87,1),(3,88,1),(3,89,1),(3,90,1),(3,91,1),(3,92,1),(3,93,1),(3,94,1),(3,95,1),
			   (3,96,1),(3,97,1),(3,98,1),(3,99,1),(3,100,1)
	INSERT INTO Ghe_Phong (IDPhong,IDGhe,TrangThaiGhe)
		VALUES (4,1,0),(4,2,1),(4,3,1),(4,4,1),(4,5,1),(4,6,1),(4,7,1),(4,8,1),(4,9,1),(4,10,1),
			   (4,16,1),(4,17,1),(4,18,1),(4,19,1),(4,20,1),(4,21,1),(4,22,1),(4,23,1),(4,24,1),(4,25,1),
			   (4,26,1),(4,27,1),(4,28,1),(4,29,1),(4,30,1),(4,31,1),(4,32,1),(4,33,1),(4,34,1),(4,35,1),
			   (4,36,1),(4,37,1),(4,38,1),(4,39,1),(4,40,1),(4,41,1),(4,42,1),(4,43,1),(4,44,1),(4,45,1),
			   (4,46,1),(4,47,1),(4,48,1),(4,49,1),(4,50,1),(4,51,1),(4,52,1),(4,53,1),(4,54,1),(4,55,1),
			   (4,56,1),(4,57,1),(4,58,1),(4,59,1),(4,60,1),(4,61,1),(4,62,1),(4,63,1),(4,64,1),(4,65,1),
			   (4,66,1),(4,67,1),(4,68,1),(4,69,1),(4,70,1),(4,71,1),(4,72,1),(4,73,1),(4,74,1),(4,75,1),
			   (4,76,1),(4,77,1),(4,78,1),(4,79,1),(4,80,1),(4,81,1),(4,82,1),(4,83,1),(4,84,1),(4,85,1),
			   (4,86,1),(4,87,1),(4,88,1),(4,89,1),(4,90,1),(4,91,1),(4,92,1),(4,93,1),(4,94,1),(4,95,1),
			   (4,96,1),(4,97,1),(4,98,1),(4,99,1),(4,100,1)

	INSERT INTO Ghe_Phong (IDPhong,IDGhe,TrangThaiGhe)
		VALUES (5,1,1),(5,2,1),(5,3,1),(5,4,1),(5,5,1),(5,6,1),(5,7,1),(5,8,1),(5,9,1),(5,10,1),
			   (5,16,1),(5,17,1),(5,18,1),(5,19,1),(5,20,1),(5,21,1),(5,22,1),(5,23,1),(5,24,1),(5,25,1),
			   (5,26,1),(5,27,1),(5,28,1),(5,29,1),(5,30,1),(5,31,1),(5,32,1),(5,33,1),(5,34,1),(5,35,1),
			   (5,36,1),(5,37,1),(5,38,1),(5,39,1),(5,40,1),(5,41,1),(5,42,1),(5,43,1),(5,44,1),(5,45,1),
			   (5,46,1),(5,47,1),(5,48,1),(5,49,1),(5,50,1),(5,51,1),(5,52,1),(5,53,1),(5,54,1),(5,55,1),
			   (5,56,1),(5,57,1),(5,58,1),(5,59,1),(5,60,1),(5,61,1),(5,62,1),(5,63,1),(5,64,1),(5,65,1),
			   (5,66,1),(5,67,1),(5,68,1),(5,69,1),(5,70,1),(5,71,1),(5,72,1),(5,73,1),(5,74,1),(5,75,1),
			   (5,76,1),(5,77,1),(5,78,1),(5,79,1),(5,80,1),(5,81,1),(5,82,1),(5,83,1),(5,84,1),(5,85,1),
			   (5,86,1),(5,87,1),(5,88,1),(5,89,1),(5,90,1),(5,91,1),(5,92,1),(5,93,1),(5,94,1),(5,95,1),
			   (5,96,1),(5,97,1),(5,98,1),(5,99,1),(5,100,1)
	SELECT * FROM Ghe_Phong
	GO

	-- Insert giờ chiếu
	INSERT INTO GioChieu 
		VALUES ('09:00'),
			   ('09:30'),
			   ('10:00'),
			   ('10:30'),
			   ('11:00'),
			   ('11:30'),
			   ('12:00'),
			   ('12:30'),
			   ('13:00'),
			   ('13:30'),
			   ('14:00'),
			   ('14:30'),
			   ('15:00'),
			   ('15:30'),
			   ('16:00'),
			   ('16:30'),
			   ('17:00'),
			   ('17:30'),
			   ('18:00'),
			   ('18:30'),
			   ('19:00'),
			   ('19:30'),
			   ('20:00'),
			   ('20:30'),
			   ('21:00'),
			   ('21:30'),
			   ('22:00'),
			   ('22:30'),
			   ('23:00')
	
	SELECT 	*  FROM GioChieu
	GO

	-- INSERT TÌNH TRẠNG PHIM --
	INSERT INTO TinhTrangPhim 
		VALUES (N'Sắp chiếu'),
			   (N'Đang chiếu'),
			   (N'Ngừng chiếu')
	SELECT * FROM TinhTrangPhim
	GO
	-- INSERT THỂ LOẠI PHIM --
	INSERT INTO TheLoaiPhim 
		VALUES ('Kinh dị'),
			   ('Hài hước'),
			   ('Khoa học viễn tưởng'),
			   ('Hành động'),
			   ('Hoạt hình 2D'),
			   ('Chiến tranh'),
			   ('Hoạt hình 3D'),
			   ('Ca nhạc'),
			   ('Kiếm hiệp'),
			   ('Cổ trang'),
			   ('Lịch sử'),
			   ('Tâm lý tội phạm'),
			   ('Phiêu lưu'),
			   ('Chính kịch'),
			   ('Tâm lý'),
			   ('Khiêu dâm')
	
	SELECT * FROM TheLoaiPhim
	GO

	-- INSERT PHIM --
	INSERT INTO Phim 
		VALUES (15,2,'drpn.jpg',N'Đất Rừng Phương Nam',110,50000,'2023-10-10',N'Nguyễn Quang Dũng',N'Hồng Ánh, Huỳnh Hạo Khang, Mai Tài Phến, Công Ninh, Hứa Vĩ Văn, Tuyền Mập, Tuấn Trần',N'Đất Rừng Phương Nam phiên bản điện ảnh được kế thừa và phát triển từ tiểu thuyết cùng tên của nhà văn Đoàn Giỏi và tác phẩm truyền hình nổi tiếng “Đất Phương Nam” của đạo diễn Nguyễn Vinh Sơn. Bộ phim kể về hành trình phiêu lưu của An - một cậu bé chẳng may mất mẹ trên đường đi tìm cha. Cùng với An, khán giả sẽ trải nghiệm sự trù phú của thiên nhiên và nét đẹp văn hóa đặc sắc của vùng đất Nam Kì Lục Tỉnh, sự hào hiệp của những người nông dân bám đất bám rừng và tinh thần yêu nước kháng Pháp đầu thế kỉ 20. Bên cạnh đó, tình cảm gia đình, tình bạn, tình người, tình thầy trò, tình yêu nước là những cung bậc cảm xúc sâu sắc sẽ đọng lại qua mỗi bước chân của An và đồng bạn.'),
			   (1,2,'qln.jpg',N'Kumanthong: Quỷ Linh Nhi',87,50000,'2023-10-16',N'Thitipan Raksasat',N'Thanachat Tullayachat, Savika Chaiyadej, Denkhun Ngamnet, Panisara Rikulsurakan',N'Ging đưa con trai đi nghỉ mát ở căn nhà gỗ nằm giữa rừng cây. Tuy nhiên, cậu bé đã bị bắt cóc vào lúc nửa đêm. Sau bao nỗ lực tìm kiếm, manh mối duy nhất của vụ án đều hướng về người đàn ông tên In, làm nghề mai táng ở đền thờ. Quá tuyệt vọng, Ging đành nhờ cậy thầy đồng địa phương thực hiện nghi lễ hiến tế giữa rừng để tìm tung tích con trai. Những bí ẩn trong ngôi nhà ven rừng dần lộ ra, những cơn ác mộng máu me và hàng loạt cái chết đột ngột ập tới, liệu Ging có đang vướng vào một âm mưu tà ám. Và rằng con trai cô có thật sự đang mất tích?'),
			   (1,2,'qa.jpg',N'Quỷ Ám: Tín Đồ',111,50000,'2023-10-16',N'David Gordon Green',N'Jennifer Nettles, Ellen Burstyn, Leslie Odom Jr.',N'Phần tiếp theo của bộ phim năm 1973 kể về một cô bé 12 tuổi bị một thực thể ma quỷ bí ẩn chiếm hữu, buộc mẹ cô phải tìm đến sự giúp đỡ của hai linh mục để cứu cô.'),
			   (12,2,'tpng.jpg',N'Thành Phố Ngủ Gật',73,50000,'2023-10-15',N'Lương Đình Dũng',N'Quốc Toàn, Minh Hiền, Đức Trí, Tạ Xuân Tuế, Ba Trường',N'Nhân vật chính là một chàng thanh niên 26 tuổi, sống đơn độc giữa trung tâm thành phố nhộn nhịp, mưu sinh bằng nghề mổ gà. Một ngày, sự xuất hiện của nhóm giang hồ và một cô gái điếm đã tác động đến cuộc sống của anh. Điều đó đã làm cho bản năng hoang dã của chàng thanh niên trỗi dậy không kiểm soát.'),
			   (2,2,'cmat.jpg',N'Cú Máy Ăn Tiền',132,50000,'2023-10-13',N'Kim Jee-Woon',N'Um Tae-goo, Yeom Hye-ran, Jung Woo-Sung, Jung Mi-hyeong, Jung Kyung-ho',N'Cú Máy Ăn Tiền lấy bối cảnh thực tế và câu chuyện làm phim những năm 1970 ở Hàn Quốc. Kim Yeol (Song Kang Ho thủ vai) - một đạo diễn điện ảnh có bộ phim đầu tay được giới phê bình khen ngợi, nhưng sự nghiệp của ông tuột dốc không phanh khi liên tiếp ra đời những tác phẩm bị coi là “phim rác”. Sau khi hoàn thành xong bộ phim mới nhất là Cobweb, đạo diễn Kim cảm thấy cần quay lại cái kết để có thể tạo ra một kiệt tác. Tuy nhiên, kịch bản mới không vượt qua được khâu kiểm duyệt và các diễn viên cũng không thể hiểu được cái kết mới của ông. Giữa lịch trình rối rắm, sự phản đối từ nhà sản xuất, sự can thiệp của cơ quan kiểm duyệt và những mâu thuẫn đang xung đột trước mắt khiến đạo diễn Kim như muốn phát điên, nhưng ông vẫn tiếp tục một cách bất chấp: “Nếu tôi có thể thay đổi cái kết, một kiệt tác sẽ xuất hiện. Tất cả những gì tôi cần là 2 ngày”.'),

			   (2,2,'8675.jpg',N'Giao Lộ 8675',107 ,50000,'2023-10-8',N'Tân DS',N'Isaac, Rocker Nguyễn, La Thành, Emma Lê, Lợi Trần, Ngọc Hồ',N'Bộ phim xoay quanh câu chuyện về các bạn trẻ dù xuất hiện tại những bối cảnh khác nhau và đối mặt vấn đề riêng, tất cả cùng có chung một điểm là những người trẻ đang đứng trước những ''ngọn núi" phải chinh phục của chính mình.'),

			   (7,3,'paw.jpg',N'PAW Patrol: Phim Siêu Đẳng',93,50000,'2023-09-20',N'Cal Brunker',N'Kim Roberts, Chris Rock, Saint West, Nylan Parthipan, Christian Corrao',N'Một mảnh thiên thạch kỳ diệu đã rơi xuống Thành Phố Phiêu Lưu, mang đến siêu năng lực cho những chú cún PAW Patrol và biến chúng thành Những Chú Cún Quyền Năng.'),

			   (1,2,'md.jpg',N'Mộng Du',94 ,50000,'2023-10-15',N'Jason Yu',N'Lee Sun Kyun, Jung Yu Mi, Kim Gook Hee',N'Được Bong Joon Ho nhận xét là “phim kinh dị độc đáo nhất của thập kỷ", ngôi vương phòng vé Hàn Quốc - MỘNG DU xoay quanh chuỗi sự kiện ma quái quấy rối giấc ngủ của một cặp vợ chồng trẻ. “Nó" sẽ thức tỉnh lúc nửa đêm.'),
			   (4,1,'ksbd.jpg',N'Kị Sĩ Bóng Đêm',152,60000,'2023-10-26',N'Christopher Nolan',N'Christian Bale, Michael Caine, Heath Ledger, Aaron Eckhart',N'Kị Sĩ Bóng Đêm mở đầu bằng cuộc oanh tạc của Joker tại ngân hàng thành phố Gotham. Hắn gài bẫy nhóm cướp và rời đi một mình cùng số tiền khổng lồ. Trong khi đó, Batman, công tố viên Harvey Dent cùng ủy viên James Gordon liên minh và đưa ra sắc lệnh chống tội phạm trong thành phố. Tuy nhiên, Joker với tính cách điên loạn vẫn không dừng lại, hắn bắt đầu thâu tóm các băng đảng tội phạm và gây ra các cuộc thanh trừng người vô tội để vạch trần danh tính Batman, từng bước đẩy người hùng bóng đêm và các cộng sự vào những cái bẫy vô cùng tinh vi.'),
			   (12,1,'vtm.jpg',N'Vầng Trăng Máu',206 ,55000,'2023-10-26',N'Martin Scorsese',N'Leonardo DiCaprio, Robert De Niro, Lily Gladstone',N'Dựa trên một sự kiện có thật và được kể thông qua mối quan hệ giữa Ernest Burkhart và Mollie Kyle, Vầng Trăng Máu là một bộ phim sử thi tội phạm, nhưng cũng là câu chuyện khi tình yêu đích thực bị cắt ngang bởi sự phản bội không thể nói rõ.')

	SELECT * FROM Phim
	GO

	-- INSERT LỊCH CHIẾU --
	INSERT INTO LichChieuPhim 
		VALUES ('2023-10-18',2,1,1)

	SELECT * FROM LichChieuPhim
	SELECT * FROM Phim
	SELECT * FROM Phong
	SELECT * FROM GioChieu
	GO
	
	
	-- INSERT ROLE --
	INSERT INTO Roles 
		VALUES ('Amin'),
			   ('User')

	SELECT * FROM Roles
	GO

	-- INSERT ACCOUNTS --
	INSERT INTO Accounts 
		VALUES ('thangchimbe','111',2,'thang-avt.jpg',1),
			   ('phongchebim','1111',1,'phong-avt.jpg',1)

	SELECT * FROM Accounts	
	GO

	-- INSERT KHÁCH HÀNG --
	INSERT INTO KhachHang 
		VALUES (1,N'Việt Thắng','thangchimbe@gmail.com','0988474666','2002-12-01',0,N'Hà Nội'),
			   (2,N'Hoàng Phong','phongchebim@gmail.com','0999999999','2002-05-31',1,N'Thanh Hóa')

	SELECT * FROM KhachHang
	SELECT * FROM Accounts	
	GO
	
	-- INSERT HÓA ĐƠN --
	INSERT INTO HoaDon 
		VALUES (1,1,'20230202', 2, N'A1,A2',0)

	SELECT * FROM HoaDon
	Select*from Phim
	GO
