$(document).ready(function(){
	$("td.seat").on("click", function(e){
		var td_element = $(this);

		if (!td_element.hasClass('available')) return;

		if (td_element.hasClass('success')) {
			td_element.html('Purchased');
		} else {
			td_element.html('Available');
		}

		td_element.toggleClass('error');
		td_element.toggleClass('success');
	});



	$("#buy").on("click", function(e){
		var listOfPurchasedSeats = [];
		$("td.error.available").each(function (el) {
			listOfPurchasedSeats.push(el.data('seat'));
		});

		$.post("/flights/" + flight_id, {
      seats: listOfPurchasedSeats.join(',')
    })

	});
});