
<script>
$(document).ready(function(){
$("#county").change(function(){
	var county = $("#county").val();
	$.ajax({
		url: 'county.php',
		method: 'POST',
		data: 'county=' + county
	}).done(function(data){
		console.log(data);
		data = JSON.parse(data);
		$('#subcounty').empty();
		data.forEach(function(data){
			$('#subcounty').append('<option>' + data.constituency + '</option>')
		})
	})
})
})

</script>

</body>
</html>
