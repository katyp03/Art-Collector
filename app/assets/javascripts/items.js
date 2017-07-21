function showAppModal(){
	document.getElementById('modalBody').style.display = "block";
}
function closeAppModal(){
	document.getElementById('modalBody').style.display = "none";
}

document.addEventListener("turbolinks:load", function(){
	const elMoreInfoButton = document.querySelector('#moreInfoButton');
	if(elMoreInfoButton) {
		elMoreInfoButton.addEventListener("click", function(){
			document.querySelectorAll(".moreInfo").forEach(element => element.style.display="block");
			document.querySelectorAll(".hideInfoButton").forEach(element => element.style.display="none");
		});
	}
})