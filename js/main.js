$('#submit').click(function(e) {
    e.preventDefault();
    const pizza = {
        'pizzaName' : $('#pizza').val(),
        'sizeName' : $('#size').val(),
        'sauceName' : $('#sauce').val()
    };

    $.ajax({
        url: '/php/main.php',
        method: 'post',
        dataType: 'json',
        data : pizza,
        beforeSend: function () {
            $("#overlay").show();
        },
        success: function(data){
            $("#overlay").hide();
            printOrder(pizza, data);
        }
    });
});

function printOrder(pizza, price){
    $('.order').html(`<p>Название пиццы: ${pizza.pizzaName}</p>
                        <p>Размер: ${pizza.sizeName} см.</p>
                        <p>Соус: ${pizza.sauceName}</p>
                        <p>Цена заказа: ${price} руб.</p>`);

    $('.popup-fade').fadeIn();
}

$('.popup-close').click(function() {
    $('.popup-fade').fadeOut();
});

$('.popup-fade').click(function(e) {
    if ($(e.target).closest('.popup').length == 0) {
        $(this).fadeOut();
    }
});