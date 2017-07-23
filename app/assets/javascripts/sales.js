document.addEventListener("turbolinks:load", function(){
	const elEditUserButton = document.querySelector('#editUserButton');
	if(elEditUserButton) {
		elEditUserButton.addEventListener("click", function(){
			document.querySelectorAll(".hiddenForm").forEach(element => element.style.display="block");
			document.querySelectorAll(".hideEditButton").forEach(element => element.style.display="none");
		});
	}
})