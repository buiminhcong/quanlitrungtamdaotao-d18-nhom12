<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,dao.*,model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết khóa học | Học viên</title>

<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/poper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

</head>
<body>

	<%
		ArrayList<MonHoc_KhoaHoc>listMonHoc_KhoaHoc = (ArrayList<MonHoc_KhoaHoc>) session.getAttribute("listMonHoc_KhoaHoc");
	
		LichDayDAO dao = new LichDayDAO();

		String khoahocID = request.getParameter("khoahocid");
		
		int id = Integer.parseInt(khoahocID);

		ArrayList<MonHoc_KhoaHoc> listMH_KH = (new MonHoc_KhoaHocDAO()).getChiTietKhoaHocTLV(khoahocID);

		ArrayList<LichDay> lichday = dao.getKhungGioHoc(khoahocID);
		
		String tenMon = "";
		
		for(int i = 0; i < listMonHoc_KhoaHoc.size(); i++) {
			if(listMonHoc_KhoaHoc.get(i).getKhoaHoc().getID() == id) {
				tenMon+= listMonHoc_KhoaHoc.get(i).getMonHoc().getTenMon() + ", ";
			}
		}
		
		tenMon = tenMon.substring(0, tenMon.lastIndexOf(","));
		
		session.setAttribute("lich-day", lichday);
	%>


	<div class="container">
		<div class="row mt-5">
			<div class="col-md-12"></div>
			<div
				class="card col-md-12 shadow-lg p-3 mb-5 bg-white rounded border-0">
				<div class="card-body">
					<h2 class="text-center font-italic">Thông tin chi tiết về khóa học</h2>
					<hr>
					<p><strong>Môn học: </strong> <%= tenMon %> </p>
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">STT</th>
								<th scope="col">Tên khóa học</th>
								<th scope="col">Mô tả</th>
								<th scope="col">Thời gian bắt đầu</th>
								<th scope="col">Thời gian kết thúc</th>
								<th scope="col">Sĩ số</th>
								<th scope="col">Thứ dạy</th>
								<th scope="col">giờ dạy</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>

							<%
								int i = 1;
								for (LichDay ld : lichday) {
							%>
							<tr>
								<th scope="row"><%=i++%></th>
								<td><%=ld.getKhoaHoc().getTen()%></td>
								<td><%=ld.getKhoaHoc().getMoTa()%></td>
								<td><%=ld.getKhoaHoc().getThoiGianBatDau()%></td>
								<td><%=ld.getKhoaHoc().getThoiGianKetThuc()%></td>
								<td><%=ld.getKhoaHoc().getSiSoToiDa()%></td>
								<td><%=ld.getThuDay().getTen()%></td>
								<td><%=ld.getGioDay().getTen()%></td>
								<td>
									<form action="gdThanhToan.jsp" method="POST">
										<input type="text" name="lichdayid" value="<%= ld.getId()%>"
											hidden >
										
										<button type="submit" class="btn btn-primary">Đăng ký</button>
									</form>
								</td>
							</tr>

							<%
								}
							%>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>




</body>
</html>