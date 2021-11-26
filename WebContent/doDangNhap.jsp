<%@page import="model.GiangVien"%>
<%@page import="model.HoTen"%>
<%@page import="dao.*"%>
<%@page import="model.ThanhVien"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Đăng nhập</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		ThanhVienDAO dao = new ThanhVienDAO();
		
		ThanhVien tv = new ThanhVien();
		tv.setTaiKhoan(username);
		tv.setMatKhau(password);

		boolean kq = dao.kiemTraDangNhap(tv);
		
		if (kq == true && tv.getPhanQuyen().equals("QTV")) {
			session.setAttribute("admin", tv);
			response.sendRedirect("admin.jsp");
		} else if (kq == true && tv.getPhanQuyen().equals("HV")) {
			session.setAttribute("hocvien", tv.getID());
			response.sendRedirect("hoc-vien/gdChinhHV.jsp");
			
		} else if (kq == true && tv.getPhanQuyen().equals("GV")) {
			GiangVien gv = (new GiangVienDAO()).getLayMaGiangVien(tv.getID());
			String hoten = null;
			if(tv != null) {
				HoTen ht = (new HoTenDAO()).getLayHoTen(tv.getID());
				hoten = ht.getHo() + " " + ht.getTenDem() + " " + ht.getTen();
			}
			session.setAttribute("giangvienID", tv.getID());
			System.out.print(tv.getID());
			session.setAttribute("giangvien", "giangvien");
			session.setAttribute("magv", gv.getMaGiangVien());
			session.setAttribute("hoten", hoten);
			response.sendRedirect("giang-vien/gdChinhGV.jsp");
		} else if (kq == true && tv.getPhanQuyen().equals("NV")) {
			session.setAttribute("nhanvien", tv);
			response.sendRedirect("gdChinhNV.jsp");
		}else if (kq == true && tv.getPhanQuyen().equals("QL")) {
			session.setAttribute("quanli", tv);
			response.sendRedirect("quan-ly/gdChinhQL.jsp");
		}else {
			session.setAttribute("sai", "Vui long xem lai thong tin dang nhap!");
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			response.sendRedirect("index.jsp");
		}
		
	%>
</body>
</html>