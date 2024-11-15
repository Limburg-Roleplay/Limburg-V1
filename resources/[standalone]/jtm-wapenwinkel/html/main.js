var currency = "€"
var UserData = {money: 0, bank: 0}
var locale = 'Waiting...'
const Elm = ['weapons', 'attachments', 'bullets', 'overig']

$(function() {
    window.addEventListener("message", (event) => {
        let data = event.data
        switch (event.data.action) {
            case 'menu':
                if (data.show) {
                    $('#shop').fadeIn(500);
                    user_info(data.user_data)
                } else {
                    $('#shop').fadeOut(500);
                }
            break;
            case 'insert':
                locale = data.locale
                addweapons(data.weapons)
                addattachments(data.attachments)
                addbullets(data.bullets)
                addoverig(data.overig)
                currency = data.currency
                document.getElementById('l_weapons').innerHTML = locale['weapons']
                document.getElementById('l_attachments').innerHTML = locale['attachments']
                document.getElementById('l_bullets').innerHTML = locale['bullets']
                document.getElementById('l_overig').innerHTML = locale['overig']
            break;
            case 'notify':
                notify(data.icon, data.text, data.duration)
            break;
            case 'pickmenu':
                user_info(data.user_data)
                pickmenu(data.text, data.price)
            break;
        }         
    })
});

function next(data) {
    document.getElementById('l_' + data.next).className = 'active'
    for (let i = 0; i < Elm.length; i++) {
        if (Elm[i] != data.next) {
            $('#' + Elm[i]).fadeOut(400);
            document.getElementById('l_' + Elm[i]).className = ''
        }
    }
    setTimeout(() => {
        $('#' + data.next).fadeIn(500);
    }, 400)
}

function addweapons(array) {
    var elem = document.getElementById("weapons")

    for (let i = 0; i < array.length; i++) {
        elem.innerHTML += `
        <div class="weapon">
            <a class="name">${array[i].name}</a><br>
            <a class="subname">${array[i].class}</a>
            <div class="image">
                <img src="./img/weapons/${array[i].weapon}.png">
            </div>
            <div class="info">
                <a class="price">${currency}${array[i].price}</a>
            </div>
            <div class="buttons">
                <button onclick="openbuy('${array[i].weapon}', '${array[i].price}', 'weapon')">${locale['buy']}</button>
            </div>
        </div>
        `
    }
    elem.style.display = 'none'
}

function addattachments(array) {
    var elem = document.getElementById("attachments")

    for (let i = 0; i < array.length; i++) {
        elem.innerHTML += `
        <div class="weapon">
            <a class="name">${array[i].name}</a><br>
            <a class="subname">${array[i].class}</a>
            <div class="image">
                <img src="./img/attachments/${array[i].attachment}.png">
            </div>
            <div class="info">
                <a class="price">${currency}${array[i].price}</a>
            </div>
            <div class="buttons">
                <button onclick="openbuy('${array[i].attachment}', '${array[i].price}', 'attachment')">${locale['buy']}</button>
            </div>
        </div>
        `
    }
}

function addbullets(array) {
    var elem = document.getElementById("bullets")

    for (let i = 0; i < array.length; i++) {
        elem.innerHTML += `
        <div class="weapon">
            <a class="name">${array[i].name}</a><br>
            <a class="subname">${array[i].class}</a>
            <div class="image">
                <img src="./img/bullets/${array[i].bullet}.png">
            </div>
            <div class="info">
                <i class="fa-brands fa-stack-overflow"></i>
                <a class="bullet">${array[i].ammount}</a>
                <i class="fa-solid fa-money-bill55 icon"></i> 
                <a class="price">${currency}${array[i].price}</a>
            </div>
            <div class="buttons">
                <button onclick="openbuy('${array[i].bullet}', '${array[i].price}', 'bullet')">${locale['buy']}</button>
            </div>
        </div>
        `
    }
}

function addoverig(array) {
    var elem = document.getElementById("overig")

    for (let i = 0; i < array.length; i++) {
        elem.innerHTML += `
        <div class="weapon">
            <a class="name">${array[i].name}</a><br>
            <a class="subname">${array[i].class}</a>
            <div class="image">
                <img src="./img/overig/${array[i].overig}.png">
            </div>
            <div class="info">
                  <a class="price">${currency}${array[i].price}</a>
            </div>
            <div class="buttons">
                <button onclick="openbuy('${array[i].overig}', '${array[i].price}', 'overig')">${locale['buy']}</button>
            </div>
        </div>
        `
    }
}

function user_info(data) {
    document.getElementById('user_money').innerHTML = currency + data.money;
    document.getElementById('user_bank').innerHTML = currency + data.bank;
    UserData.money = data.money
    UserData.bank = data.bank
}

function openbuy(item, price, item_type) {
    document.getElementById("notify").style.display = 'block'
    document.getElementById("notify").innerHTML = `
        <i class="fa-solid fa-xmark cl_icon" onclick="noticlose()"></i>
        <a class="text">${locale['want_pay']}</a><br>
        <div class="buttons">
            <button onclick="payment('bank', '${item}', '${price}', '${item_type}')">${locale['bank']}</button> 
            <button onclick="payment('money', '${item}', '${price}', '${item_type}')">${locale['cash']}</button>
        </div>
    `
    document.getElementById("notify").className = "open"
}

function pickmenu(text, price) {
    document.getElementById("notify").style.display = 'block'
    document.getElementById("notify").innerHTML = `
        <i class="fa-solid fa-xmark cl_icon" onclick="noticlose2()"></i>
        <a class="text" style="font-size: 20px;">${text}</a><br>
        <div class="buttons">
            <button onclick="license('${price}')">${locale['yes']}</button> 
            <button onclick="noticlose2()">${locale['no']}</button>
        </div>
    `
    document.getElementById("notify").className = "open"
}

function payment(type, item, price, item_type) {
    document.getElementById("notify").className = "close";
    setTimeout(() => {
        document.getElementById("notify").style.display = "none";
    }, 900);
    if (UserData[type] >= price) {
        $.post(`https://${GetParentResourceName()}/buy`, JSON.stringify({type: type, item: item, price: price, item_type: item_type}));
    }
}

window.onload = (event) => {
    const closeMenu = document.querySelector('#close');
    closeMenu.addEventListener('click', function(event) {
        $.post(`https://${GetParentResourceName()}/close`, JSON.stringify({}));
    });
};