$(document).ready(function () {
	console.log('sanity check');

    $('#search-submit').submit(function(e){
        e.preventDefault();
    	if(!$('#search-input').val()){
    		return;
    	}
        let link = "";
        if($('#category-dropdown-button').attr('category') != '/?page=1')
        {
            let link = $('#category-dropdown-button').attr('category') + "&search=" + $('#search-input').val();
        }
        else {
            let link = "/search?page=1&search=" + $('#search-input').val();
        }


    	$.ajax({
    		type: "GET",
    		url: link,
    		success: function(data)
    		{
                document.getElementById("package-display").innerHTML = data;
    		}
    	});

    });

    $('.package-dropdown').click(function(event){
        $('#packages-dropdown-button').text($(this).text());
        $('#packages-dropdown-button').attr('package', $(this).attr('href'));
    });

    $('.category-dropdown').click(function(event){
        $('#category-dropdown-button').text($(this).text());
        $('#category-dropdown-button').attr('category', $(this).attr('href'));
    });

    $('#cart-button').click(function(event){
        event.preventDefault();
        showLoadingModal();
        $.ajax({
            type: "GET",
            url: "/cart",
            success: function(data)
            {
                document.getElementById("modal").innerHTML = data;

                $('#checkout-login-btn').click(function(event){
                    console.log("in checkbout-login-btn click event");
                    showLoadingModal();
                    $.ajax({
                        type: "GET",
                        url: "/login/login",
                        success: function(data)
                        {

                            document.getElementById("modal").innerHTML = data;

                            console.log($('#login-submit').serialize());
                            console.log($('#login-submit'));

                            $('#login-toggle').val($(this).is(':checked'));

                            $('#login-toggle').change(function(){
                                if(!this.checked){
                                    $('#label-login-toggle').text('Register');
                                    $('#login-form').css("display", "block");
                                    $('#register-form').css("display", "none");

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
                                    success: function(data, status, xhr) {
                                        let ct = xhr.getResponseHeader("content-type") || "";

                                        if(ct.indexOf('html') > -1){
                                            document.getElementById("modal").innerHTML = data;
                                        } else if(ct.indexOf('json') > -1){
                                            $('#login-button').text('Welcome ' + data["username"]);                                
                                            $('#modal').modal('hide');
                                        }   
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
                                        $('#login-button').text('Welcome ' + data["username"]);
                                        $('#modal').modal('hide');
                                    }
                                });
                            });

                            $('#logout-button').click(function(event){
                                event.preventDefault();
                                showLoadingModal();
                                $.ajax({
                                    type: "POST",
                                    url: "login/logout",
                                    success: function(data){
                                        document.getElementById("modal").innerHTML = data;
                                        $('#login-button').text('Customer Login');
                                    }
                                });
                            });
                        }
                    });
                });
            }
        });
    });

    $('#login-button').click(function(event){
        event.preventDefault();
        showLoadingModal();
        $.ajax({
            type: "GET",
            url: "login/login",
            success: function(data)
            {
                    document.getElementById("modal").innerHTML = data;

                    console.log($('#login-submit').serialize());
                    console.log($('#login-submit'));


                    $('#login-toggle').val($(this).is(':checked'));

                    $('#login-toggle').change(function(){
                        if(!this.checked){
                            $('#label-login-toggle').text('Register');
                            $('#login-form').css("display", "block");
                            $('#register-form').css("display", "none");

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
                            success: function(data, status, xhr) {
                                let ct = xhr.getResponseHeader("content-type") || "";

                                if(ct.indexOf('html') > -1){
                                    document.getElementById("modal").innerHTML = data;
                                } else if(ct.indexOf('json') > -1){
                                    $('#login-button').text('Welcome ' + data["username"]);                                
                                    $('#modal').modal('hide');
                                }   
                            }
                        });
                    });

                    $('#register-submit-btn').click(function(event){
                        event.preventDefault();
                        showLoadingModal();
                        $.ajax({
                            type: "POST",
                            data: $('#register-user').serialize(),
                            url: "login/register",
                            success: function(data){
                                $('#login-button').text('Welcome ' + data["username"]);
                                $('#modal').modal('hide');
                            }
                        });
                    });

                    $('#logout-button').click(function(event){
                        event.preventDefault();
                        showLoadingModal();
                        $.ajax({
                            type: "POST",
                            url: "login/logout",
                            success: function(data){
                                document.getElementById("modal").innerHTML = data;
                                $('#login-button').text('Customer Login');
                            }
                        });
                    });
            }
        });
    });

});

function showLoadingModal(){
        $('.modal-title').text("Loading...");
        var mBody = document.getElementsByClassName("modal-body");
        for(let i = 0; i < mBody.length; i++){
            mBody[i].innerHTML = $('<div/>', {class: "loader rotation_loader"})[0].outerHTML;
        }
        document.getElementById("modalFooter").innerHTML = "";
}