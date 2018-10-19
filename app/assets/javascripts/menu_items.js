var loginButton = document.getElementsByClassName('login')[0];
var registerButton = document.getElementsByClassName('register')[0];
var closeButton = document.getElementsByClassName('close-btn')[0];
var closeButton2 = document.getElementsByClassName('close-btn')[1];
var loginModal = document.getElementsByClassName('login-modal')[0];
var registerModal = document.getElementsByClassName('register-modal')[0];
var goLogin = document.getElementsByClassName('go-login')[0];
var goRegister = document.getElementsByClassName('go-register')[0];
var hamburgerMenu = document.getElementsByClassName('hamburger-menu')[0];

if(loginButton) {
  loginButton.addEventListener("click",function() {
     toggle_visibility_login("modal");
  });
}

if(registerButton) {
  registerButton.addEventListener("click",function() {
     toggle_visibility_register("modal");
  });
}

if(goLogin) {
  goLogin.addEventListener("click", function() {
    toggle_visibility_login("modal");
  })
}

if(goRegister) {
  goRegister.addEventListener("click", function() {
    toggle_visibility_register("modal");
  })
}

if(closeButton) {
  closeButton.addEventListener("click", function() {
    close_visibility("modal");
  })
  closeButton2.addEventListener("click", function() {
    close_visibility("modal");
  })
}

if(hamburgerMenu) {
  hamburgerMenu.addEventListener("click", function() {
    open_menu("menu");
  })
}

function toggle_visibility_login(modal) {
  var show = document.getElementsByClassName(modal)[0];
  if(show.style.display == 'none') {
    show.style.display = 'block';
    if(registerModal.style.display == 'block')
      registerModal.style.display = 'none';
    loginModal.style.display = 'block';
    document.body.style.overflow = 'hidden';
  }
}

function toggle_visibility_register(modal) {
  var show = document.getElementsByClassName(modal)[0];
  if(show.style.display == 'none') {
    show.style.display = 'block';
    if(loginModal.style.display == 'block')
      loginModal.style.display = 'none';
    registerModal.style.display = 'block';
    document.body.style.overflow = 'hidden';
  }
}

function close_visibility(modal) {
  var show = document.getElementsByClassName(modal)[0];
  if(show.style.display == 'block') {
    show.style.display = 'none';
    registerModal.style.display = 'none';
    loginModal.style.display = 'none';
    document.body.style.overflow = 'visible';
  }
}

function open_menu(modal) {
  var show = document.getElementsByClassName(modal)[0];
  if(show.style.display != 'none')
    show.style.display = 'none';
  else
    show.style.display = 'flex';
}