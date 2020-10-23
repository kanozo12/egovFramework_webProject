let bno = '${board.id}'; //게시글 번호
let comWriter = '${user.userid}';
let userName = '${username}';
let comContent = document.getElementByid('#comContent');
$('[name=commentInsertBtn').click(function(){
	let insertData = {
		bno: bno,
		comWriter: comWriter,
		userName: userName,
		comContent: comContent
	};
	commentInsert(insertData);
})

//댓글 목록
//function commentList() {
//	$.ajax({
//		url: '/board/replyList',
//		type: 'get',
//		data: {'bno':bno},
//		success: function(data) {
//			let a = '';
//			
//		}
//	})
//}


//댓글 등록
//function commentInsert(insertData) {
//	$.ajax({
//		url: '/board/replyInsert',
//		type: 'post',
//		data: insertData,
//		success: function(data) {
//			if(data == 1) {
//				$('[name=comContent]').val('');
//			}
//		}
//	});
//}

