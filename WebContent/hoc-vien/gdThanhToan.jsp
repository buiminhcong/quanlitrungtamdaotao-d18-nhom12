<%@page import="dao.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Date"%>
<%@page import="model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/poper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

</head>
<body>

	<%
		String idLD = request.getParameter("lichdayid");
		String idHV = session.getAttribute("hocvien").toString();
		int HocVienThanhVienID = Integer.parseInt(idHV);
		boolean kt = true;
		int id = Integer.parseInt(idLD);
		String err = "";

		ArrayList<LichDay> lichdays = (ArrayList<LichDay>) session.getAttribute("lich-day");

		LichDay ld = new LichDay();

		for (int i = 0; i < lichdays.size(); i++) {
			if (lichdays.get(i).getId() == id) {
				ld = lichdays.get(i);
				break;
			}
		}

		PhieuDangKiDAO dao = new PhieuDangKiDAO();

		kt = dao.ktkuuDK(java.time.LocalDate.now().toString(), 1, HocVienThanhVienID, ld.getId(),
				ld.getKhoaHoc().getTen(), ld.getKhoaHoc().getHocPhi());

		if (kt == true) {
			session.setAttribute("thanhcong", "Bạn đã đăng ký học thành công");
		} else {
			kt = false;
			err = "Bạn đã đăng kí khóa này rồi!";
		}

	%>


	<div style="padding: 50px"
		class="row no-gutters bg-light position-relative">

		<div class="col-md-6 position-static p-4 pl-md-0">

			<h1 class="text-danger">

				<%=err%>
			</h1>

			<h1>
				Bạn đang đăng kí khóa hoc:
				<%=ld.getKhoaHoc().getTen()%>
			</h1>
			<h5 class="mt-0 text-primary">Hãy nộp học phí theo thông tin
				dưới đây!</h5>
			<h5 class="mt-0 text-primary">
				Học phí:
				<%=ld.getKhoaHoc().getHocPhi()%></h5>
			<p>STT : 13214141421412</p>
			<p>Tên người hưởng thụ : Bùi Minh Công</p>
			<p>Ngân Hàng : Agribank</p>
			<p>
				Nhập mã khi gửi: NOP_HOC_PHI-<%=HocVienThanhVienID%></p>
			<p>Các thông tin sẽ sớm được thông báo sau khi hệ thông kiểm tra


			
			<p>
			<form action="gdChinhHV.jsp" method="POST">

				<button type="submit" class="btn btn-primary">Quay về trang
					chủ</button>
			</form>
		</div>
	</div>
</body>
</html>