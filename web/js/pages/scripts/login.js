$('document').ready(function ()
{
    $('.alert-danger',$('.form-signin')).hide();
    $('.alert-warning',$('.form-signin')).hide();
    $('.alert-success',$('.form-signin')).hide();
    /* validation */
    $("#login-form").validate({
        rules:
                {
                    password: {
                        required: true
                    },
                    user_email: {
                        required: true,
                        email: true
                    }
                },
        messages:
                {
                    password: {
                        required: "Please enter your password"
                    },
                    user_email:{
                        user_email: "Please enter your email address"
                    }            
                },
        submitHandler: submitForm
    });
    /* validation */

    /* login submit */
    function submitForm()
    {
        var data = $("#login-form").serialize();

        $.ajax({
            type: 'POST',
            url: 'userLogin',
            data: data,
            beforeSend: function ()
            {
                $("#error").fadeOut();
                $("#btn-login").html('<span class="glyphicon glyphicon-transfer"></span> &nbsp; sending ...');
            },
            success: function (response)
            {
                if (response == "ok") {
                    $('.alert-danger',$('.form-signin')).hide();
                    $('.alert-warning',$('.form-signin')).hide();
                    $('.alert-success',$('.form-signin')).show(500);
                    //$("#btn-login").html('<img src="css/btn-ajax-loader.gif" /> &nbsp; Signing In ...');
                    setTimeout(' window.location.href = "index.jsp"; ', 4000);

                } else {

                    $("#error").fadeIn(1000, function () {
                        //$("#error").html('<div class="alert alert-danger"> <span class="glyphicon glyphicon-info-sign"></span> &nbsp; ' + response + ' !</div>');
                    $('.alert-warning',$('.form-signin')).show(500);
                        $("#btn-login").html('<span class="glyphicon glyphicon-log-in"></span> &nbsp; Sign In');
                    });
                }
            }
        });
        
        setTimeout(function() {
        $('.alert-danger',$('.form-signin')).hide(1000);
        $('.alert-warning',$('.form-signin')).hide(1000);
        $('.alert-success',$('.form-signin')).hide(1000);
    }, 5000);

      return true;
    }
});