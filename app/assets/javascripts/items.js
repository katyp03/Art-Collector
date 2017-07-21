document.addEventListener("DOMContentLoaded", function(){
	document.getElementById('moreInfoButton').addEventListener("click", function(){
		document.querySelectorAll(".moreInfo").forEach(element => element.style.display="block");
		document.querySelectorAll(".hideInfoButton").forEach(element => element.style.display="none");
	});
})