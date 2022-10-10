/**
 * 
 */
 
 const imgDiv=document.querySelector('profile-pic-change');
 const img=document.querySelector("#photo");
 const file=document.querySelector('#file');
 const uploadBtn=document.querySelector('#uploadBtn');
 
 
 img.addEventListener('mouseenter',function(){
	uploadBtn.style.display="block";
});




file.addEventListener('change',function(){
	const choosedFile=this.files[0];
	if(choosedFile){
		const reader=new FileReader();
		 
		reader.addEventListener('load',function(){
			img.setAttribute('src',reader.result);
		});
		reader.readAsDataURL(choosedFile);
	}
});