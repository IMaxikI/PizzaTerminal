$(document).ready(function(){
    $.get({
        url: '/php/loading.php',
        method: 'get',
        dataType: 'json',
        success: function(data){
            printOptions(data.pizza, '#pizza');
            printOptions(data.size, '#size');
            printOptions(data.sauce, '#sauce');
        }
    });
});

function printOptions(data, elem){
    $.each(data, function(key, value) {
        $(elem).append('<option value="' + value + '">' + value + '</option>');
    });
}