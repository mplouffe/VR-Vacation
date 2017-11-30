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
                $('#login-toggle').val($(this).is(':checked'));

                $('#login-toggle').change(function(){
                    if(!this.checked){
                        $('#label-login-toggle').text('Register');
                        $('#login-form').css("display", "block");
                        $('#register-form').css("display", "none")
                    }
                    else {
                        $('#label-login-toggle').text('Log in');
                        $('#login-form').css("display", "none");
                        $('#register-form').css("display", "block");                       
                    }
                });

                $('#login-submit-btn').click(function(event){
                    event.preventDefault();
                    $.ajax({
                        type: "POST",
                        data: $('#login-submit').serialize(),
                        url: "login/login",
                        success: function(data) {
                            $('#modal').modal('hide');
                        }
                    });
                });

                $('#register-submit-btn').click(function(event){
                    event.preventDefault();
                    $.ajax({
                        type: "POST",
                        data: $('#register-user').serialize(),
                        url: "login/register",
                        success: function(data){
                            $('#modal').modal('hide');
                        }
                    })
                })
            }
        });
    });

});