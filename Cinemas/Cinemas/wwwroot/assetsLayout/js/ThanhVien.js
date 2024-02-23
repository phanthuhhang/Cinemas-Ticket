// const dropArea = document.querySelector('.members_check--contain')
// const dragText = dropArea.querySelector('.members_contain--text')
// const btnAddImg = dropArea.querySelector('.members_check--btn')
// const inputImg = dropArea.querySelector('#member_file--image')

// btnAddImg.addEventListener('click', ()=>{
//     inputImg.click();
// })

const btnAddImg = document.querySelector('.members_check--btn');
const inputImg = document.querySelector('#member_file--image');

btnAddImg.addEventListener('click', ()=> {
    inputImg.click();
})

// Đóng mở Modal Ticket
var BuyBtns = document.querySelectorAll('.change_password');
var modal = document.querySelector('.modal');
var modalTickets = document.querySelector('.modal-changePassword');
var modalClose = document.querySelector('.modal-close');

function showModal () {
    modal.classList.add('open');
}

function removeModal () {
    modal.classList.remove('open');
}

function holdModal (event) {
    event.stopPropagation ();
}

for (var BuyBtn of BuyBtns) {
    BuyBtn.addEventListener('click', showModal);
}
modal.addEventListener('click', removeModal);
modalClose.addEventListener('click', removeModal);
modalTickets.addEventListener('click', holdModal);


var comfirm_btn = document.getElementById('comfirm_btn');
comfirm_btn.onclick = function (e) {
    // Lấy giá trị của một input
    function getValue(id) {
        return document.getElementById(id).value.trim();
    }

    // Hiển thị lỗi
    function showError(key, mess) {
        document.getElementById(key + '_error').innerHTML = mess;
    }

    //  Oldpassword
    var password = getValue('oldPassword');
    if (password == '') {
        e.preventDefault();
    showError('oldPassword', 'Không để trống trường này!');
    } else {
        if (password.length < 8) {
            e.preventDefault();
        showError('oldPassword', 'Mật khẩu phải lớn hơn 8 kí tự');
        } else {
            showError('oldPassword', '');
        }
    }

    // 2. newPassword
    var newPassword = getValue('newPassword');
    var regex = /^(?=.*[A-Z])(?=.*\d).+$/;

    if (newPassword == '') {
        e.preventDefault();
    showError('newPassword', 'Không để trống trường này!');
    } else {
        if (newPassword.length < 8) {
            e.preventDefault();
            showError('newPassword', 'Mật khẩu phải lớn hơn 8 kí tự');
        } else if (newPassword === password) {
            e.preventDefault();
            showError('newPassword', 'Mật khẩu mới không được trùng với mật khẩu cũ');
        } else if (regex.test(newPassword)) {
            e.preventDefault();
            showError('newPassword', '');
        } else {
            showError('newPassword', 'Mật khẩu phải chứa ít nhất một chữ cái viết hoa và một chữ số');
        } 
             
    }
    

    

    // 3. confirmNewPassword
    var confirmNewPassword = getValue('confirmNewPassword');
    if (confirmNewPassword == '') {
        e.preventDefault();
    showError('confirmNewPassword', 'Không để trống trường này!');
    } else {
        if (newPassword != confirmNewPassword) {
            e.preventDefault();
        showError('confirmNewPassword', 'Mật khẩu không trùng khớp với mật khẩu mới');
        } else {
            showError('confirmNewPassword', '');
        }   
    }
}


const togglePassword = document.getElementById('togglePassword');
togglePassword.addEventListener('click', function (e) {
    const password = document.getElementById('oldPassword');
    if (password.type === "password") {
        password.type = "text";
    } else {
        password.type = "password";
    }
    // toggle the type attribute
    // const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
    // password.setAttribute('type', type);
    // toggle the eye slash icon
    // this.classList.toggle('fa-eye-slash');
});

const togglePassword2 = document.getElementById('togglePassword2');
togglePassword2.addEventListener('click', function (e) {
    const password = document.getElementById('newPassword');
    if (password.type === "password") {
        password.type = "text";
    } else {
        password.type = "password";
    }

});

const togglePassword3 = document.getElementById('togglePassword3');
togglePassword3.addEventListener('click', function (e) {
    const password = document.getElementById('confirmNewPassword');
    if (password.type === "password") {
        password.type = "text";
    } else {
        password.type = "password";
    }

});
