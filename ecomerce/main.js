function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}


function fetch(){
	var county = $("#jimbo").val();
	$.ajax({
		url: 'county.php',
		method: 'POST',
		data: 'county=' + county
	}).done(function(data){
		console.log(data);
		data = JSON.parse(data);
		$('#constituency').empty();
		data.forEach(function(data){
			$('#constituency').append('<option>' + data.constituency + '</option>')
		})
	})
}
