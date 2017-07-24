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
	document.addEventListener("ajax:complete",function(event){
	// check to see whether the event.target has our .artwork.status-change class...
	// if so, update the wordage to reflect the current status
	if( event.target.className == 'artwork-status-change' ) {
		const elStatus = event.target.parentNode.querySelector(".artwork-status"),
			 response = JSON.parse(event.detail[0].response),
			 responseURL = event.detail[0].responseURL;
		elStatus.innerText = response.status;
		// to do: distinguish upgrade from downgrade
		if( /upgrade$/.test(responseURL) ) {
			elStatus.className = "artwork-status upgrade";
		} else {
			elStatus.className = "artwork-status downgrade";
		}
	}
	console.log( event );
	});
})
