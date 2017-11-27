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

    console.log($('#cart-button'));

    $('#cart-button').click(function(event){
        console.log("in cart button call");
        event.preventDefault();
        $.ajax({
            type: "GET",
            url: "/cart",
            success: function(data)
            {
                console.log("successfully fetched");
                document.getElementById("modalcontent").innerHTML = data;
            }
        });
    });


});