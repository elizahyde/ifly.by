$(document).ready(function() {
  var departure_airport = $('#departure_airport');
  var arrival_airport = $('#arrival_airport');

  var compare_destination_and_departure = function() {
    // if they're the same
    //   oh snap.
    // else
    //   you got it dude


      if (departure_airport.find(":selected").text() === arrival_airport.find(":selected").text()){
        alert("theyre the same bozo!!!");
      }
      else {
        alert("that's better.")

      }
  }

  departure_airport.on('change', compare_destination_and_departure )
  arrival_airport.on('change', compare_destination_and_departure )

});




