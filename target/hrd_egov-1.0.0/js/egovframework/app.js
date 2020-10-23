window.onload = function(){
	tinymce.init({
		selector:"#content",
		plugins: 'advlist autolink link image lists' 
			+ ' charmap print preview codesample emoticons'
			+ ' textcolor',
		codesample_languages:[
			{text: 'HTML/XML', value: 'markup'},
			{text: 'Javascript', value: 'javascript'},
			{text: 'CSS', value: 'css'},
			{text: 'PHP', value: 'php'},
			{text: 'Python', value: 'python'},
			{text: 'Java', value: 'java'},
			{text: 'C', value: 'c'},
			{text: 'C++', value: 'cpp'},
			{text: 'C#', value: 'csharp'},
		],
		toolbar:[
			'undo redo | styleselect | bold italic'
			+ ' | link imageupload codesample |'
			+ ' alignleft aligncenter alignright |'
			+ ' forecolor backcolor emoticons'
		],
		height:400,
		menubar:false,
		setup:function(editor){
			let inp = $(
					`<input id="tinymce-uploader" 
						type="file" name="pic" 
						accept="image/*" 
						style="display:none;">`);
			$(editor.getElement()).parent().append(inp);
			
			editor.addButton('imageupload', {
				icon:'image',
				onclick:function(e){
					inp.trigger('click');
				}
			});
			
			inp.on("change", (e)=>{
				uploadFile(e.target, editor);
			});
			
			function uploadFile(input, editor){
				let data = new FormData();
				data.append("file", input.files[0]);
				
				$.ajax({
					url: '/board/upload',
					type: 'post',
					data: data,
					enctype: 'multipart/form-data',
					dataType: 'json',
					processData: false,
					//프로세스 데이터를 안하면 서버로 보낼때 Parameter로 보내게 된다.
					contentType:false, 
					//꺼주면 제이쿼리가 자동으로 판단해서 파일전송으로 처리한다.
					success:(data, textStatus, jqXHR) => {
						editor.insertContent(
							`<img class='content-img' 
								src='${data.uploadImage}' 
								data-mce-src='${data.uploadImage}'/>`);
					},
					error: (jqXHR, textStatus, errorThrown) => {
						console.log(jqXHR);
						if(jqXHR.responseJSON){
							let data = jqXHR.responseJSON;
							alert(`이미지 업로드 오류 ${data.msg}`);
						}
					}
				});
				
			}
		}
	});
}