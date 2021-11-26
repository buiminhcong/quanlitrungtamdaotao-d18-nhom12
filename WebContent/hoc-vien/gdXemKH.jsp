<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,dao.*,model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Khóa học | Hoc Vien</title>

<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/poper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

</head>
<body>

	<%
		
		ArrayList<MonHoc_KhoaHoc> listMonHoc_KhoaHoc = new MonHoc_KhoaHocDAO().getTatCaKhoaHoc();
		String idHV = session.getAttribute("hocvien").toString();
		session.setAttribute("listMonHoc_KhoaHoc", listMonHoc_KhoaHoc);
	%>

   <div class="container pt-5">
    <div class="row mt-5">
      <div class="col-md-1"></div>
      <div class="card col-md-10 shadow-lg p-3 mb-5 bg-white rounded border-0">
        <div class="card-body">
          <h2 class="text-center font-italic">Đăng ký học</h2>
          <hr>
          <div class="row">
            <ul>
              <li><em>Mã hoc vien: </em><strong>HV01</strong></li>
              <li><em>Họ và tên: </em><strong>Bui Minh Cong</strong></li>
            </ul>
          </div>
          <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">STT</th>
                <th scope="col">Tên khóa học</th>
                <th scope="col">Mô tả</th>
                <th scope="col">Thời gian bắt đầu</th>
                <th scope="col">Thời gian kết thúc</th>
                <th scope="col">Hoc Phi</th>
                <th scope="col"></th>
              </tr>
            </thead>
            <tbody>
            	
            	<% 
            		int i = 1;
            		for(MonHoc_KhoaHoc mh_kh : listMonHoc_KhoaHoc) {
            	%>
              <tr>
                <th scope="row"><%= i++ %></th>
                <td><%= mh_kh.getKhoaHoc().getTen() %></td>
                <td><%= mh_kh.getKhoaHoc().getMoTa() %></td>
                <td><%= mh_kh.getKhoaHoc().getThoiGianBatDau() %></td>
                <td><%= mh_kh.getKhoaHoc().getThoiGianKetThuc() %></td>
                <td><%= mh_kh.getKhoaHoc().getHocPhi() %></td>
                <td>
                  <form action="gdXemChiTietKH.jsp" method="POST">
                    <input type="text" name="khoahocid" value="<%= mh_kh.getKhoaHoc().getID() %>" hidden>
                    <button type="submit" class="btn btn-primary">Xem</button>
                  </form>
                </td>
              </tr>
              
              	<% } %>
            </tbody>
          </table>

          <br>
          <button class="btn btn-info">Quay trở lại</button>
        </div>
      </div>
    </div>
  </div>




</body>
</html>