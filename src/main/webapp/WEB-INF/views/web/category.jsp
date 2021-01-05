<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var ="homeURL" value="/trang-chu"/>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Thể Loại</title>
</head>

<body>
	<div class="row">

		<div class="col-lg-3">
			<h1 class="my-4" style="padding-left: 40px;">Category</h1>
			<div class="list-group">
				<ul id="myid">
					<c:forEach var="item" items="${listCategoryModel}" >
				    	<li class="list-group-item" value="${item.code}">${item.name}</li>
				    </c:forEach>
				</ul>			
			</div>

		</div>
		<!-- /.col-lg-3 -->

		<div class="col-lg-9">

			<div class="row">
			
				<c:forEach var="item" items="${model.listResult}">
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="<c:url value='/bai-viet/chi-tiet?id=${item.id}' />"><img class="card-img-top" src="${item.base64}" alt="" style="height: 250px;"></a>
							<div class="card-footer">
								<h6 class="card-text">${item.title}</h6>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
			<!-- /.row -->

		</div>
		<!-- /.col-lg-9 -->

	</div>
   <script type="text/javascript">
   $("#myid li").on('click', function() {
        var code = $(this).attr("value");
        window.location.href = "${categoryURL}?code="+code+"";
    });

	</script>
</body>

</html>