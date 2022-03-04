$(document).ready(function() {
	$(".author-insert-update").on("click", function(event) {
		const chk = confirm("등록하시겠습니까?");
		
		if (chk) {
			console.log("enrolled");
			document.querySelector(".author-insert-update").submit();
		} else {
			event.preventDefault();
			console.log("xxxxx");
		}
	})
})