$(document).ready(function() {
    $('#found_site').on('change', function() {
        $(this).val() == "other" ? $('#specify').closest('.form-group').show() : $('#specify').closest('.form-group').hide();
    })



$('input[type="checkbox"]').on('change', function(e){
    if(e.target.checked){
        $('#myModal').modal();
    }
});

    $(function(){
        $('#companyIndex').on('submit', function(e){
            e.preventDefault();
            $.ajax({
                url: '/companyIndex', //this is the submit URL
                type:  'POST',
                data: $('#companyIndex').serialize(),
                success: function(data){
                    alert('successfully submitted')
                }
            });
        });
    });





})