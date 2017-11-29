$(document).ready(function () {
	console.log('sanity check')

    $('#search-submit').submit(function(e){
        e.preventDefault();
    	if(!$('#search-input').val()){
    		console.log("there's nothing in the search input");
    		return;
    	}
    	let link = "/search?page=1&search=" + $('#search-input').val();
    	$.ajax({
    		type: "POST",
    		url: link,
    		data: $("search-submit").serialize(),
    		success: function(data)
    		{
                document.getElementById("package-display").innerHTML = data;
    		}
    	});

    });

    $('#cart-button').click(function(event){
        event.preventDefault();
        $.ajax({
            type: "GET",
            url: "/cart",
            success: function(data)
            {
                document.getElementById("modal").innerHTML = data;
            }
        });
    });

    $('#login-button').click(function(event){
        event.preventDefault();
        $.ajax({
            type: "GET",
            url: "login/login",
            success: function(data)
            {
                document.getElementById("modal").innerHTML = data;
            }
        });
    });

});