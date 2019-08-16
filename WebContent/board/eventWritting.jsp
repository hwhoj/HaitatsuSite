<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
	<meta charset="utf-8">
	<title>이벤트 글 작성</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
a:link {text-decoration: none; color: #333333;}
a:visited {text-decoration: none; color: #333333;}
a:active {text-decoration: none; color: #333333;}
a:hover {text-d"WebContent/board/eventboard.jsp"ecoration: underline; color: red;}
body {
        color: #333;
        background: #fafafa;
        font-family: "Patua One", sans-serif;
    }
    .contact-form {
        padding: 30px;
        margin: 15px 0;
    }
    .contact-form h1 {
        color: #6dc97e;
        font-weight: bold;
        margin: 0 0 5px;
    }
    .contact-form .form-control, .contact-form .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .contact-form .form-control:focus {
        border-color: #6dc97e;
    }
    .contact-form .btn-primary {
        color: #fff;
        min-width: 150px;
        font-size: 16px;
        background: #6dc97e;
        border: none;
    }
    .contact-form .btn-primary:hover {
        background: #15a487; 
    }
    .contact-form label {
        opacity: 0.7;
    }
    .contact-form textarea {
        resize: vertical;
    }
    .hint-text {
        font-size: 15px;
        padding-bottom: 20px;
        opacity: 0.6;
    }
    .container input[readonly] {background-color: white !important;}
</style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1 m-auto">
            <div class="contact-form">
                <h1>이벤트 글 작성</h1><br/>
                <p class="hint-text">회원님들께 보여줄 이벤트 내용을 작성해주세요</p> 
                <form action="ybbs_insert_event.ad" method="post">
             	   <input type="hidden" class="form-control" name="userId" value="${users.userId}" />
               	     <div class="row">
               	        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="inputName">작성자</label>
                                <input type="text" class="form-control" id="inputName" required readonly value="${users.userId}">
                            </div>
                        </div>                
                            </div>       
                    <div class="form-group">
                        <label for="inputSubject">제목</label>
                        <input type="text" class="form-control" id="inputSubject" name="evSubject" required>
                    </div>
                    <div class="form-group">
                        <label for="inputMessage">내용</label>
                        <textarea class="form-control" id="inputMessage" name ="evComment" rows="10" style="width:100%" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary" style="margin:4px">글 쓰기</button>
                </form>
                <a href="ybbs_eventList?reqPage=1"><button class="btn btn-primary" style="margin:4px">뒤로가기</button></a>
            </div>
        </div>
    </div>
</div>
</body>
</html>