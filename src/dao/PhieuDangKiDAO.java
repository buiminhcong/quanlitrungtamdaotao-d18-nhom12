package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;

public class PhieuDangKiDAO extends DAO {

	public PhieuDangKiDAO() {
		super();
	}

	// kiem tra luu dang ki lich day ***********************************
	public boolean ktkuuDK(String ngayDangKy, int KiemTraThanhToan, int HocVienThanhVienID, int LichDayID,
			String TenKhoaHoc, String hocPhi) {
		String sql = "select * from phieudangki\r\n" + 
				"where lichdayid= ? and hocvienthanhvienid = ?";

		String sql1 = "INSERT INTO phieudangki (NgayDangKy, KiemTraThanhToan,\r\n"
				+ "				 HocVienThanhVienID, LichDayID, TenKhoaHoc, HocPhi)\r\n" + "VALUES (?, ?, ?, ?, ?, ?);";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, LichDayID);
			ps.setInt(2, HocVienThanhVienID);
			ResultSet rs = ps.executeQuery();

			int count = 0;

			while (rs.next()) {
				count++;
			}

			if (count == 0) {
				ps = con.prepareStatement(sql1);
				ps.setDate(1, Date.valueOf(ngayDangKy));
				ps.setInt(2, KiemTraThanhToan);
				ps.setInt(3, HocVienThanhVienID);
				ps.setInt(4, LichDayID);
				ps.setString(5, TenKhoaHoc);
				ps.setString(6, hocPhi);
				ps.executeUpdate();
				return true;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

}
