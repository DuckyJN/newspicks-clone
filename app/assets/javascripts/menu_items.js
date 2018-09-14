var loginButton = document.getElementsByClassName('login')[0];
var registerButton = document.getElementsByClassName('register')[0];
var modalContent = document.getElementsByClassName('modal')[0];
var searchBar= document.getElementsByClassName('search')[0];
var go_login = document.getElementsByClassName('go-login')[0];
var go_register = document.getElementsByClassName('go-register')[0];
var content_dialog = document.getElementsByClassName('modal-content-dialog')[0];

if(loginButton) {
  loginButton.addEventListener("click", function() {
     toggle_visibility_login("modal");
  });
}

if(go_login) {
  go_login.addEventListener("click", function() {
    toggle_visibility_login("modal");
  })
}

if(go_register) {
  go_register.addEventListener("click", function() {
    toggle_visibility_register("modal");
  })
}

if(registerButton) {
  registerButton.addEventListener("click", function() {
     toggle_visibility_register("modal");
  });
}

if(content_dialog) {
  content_dialog.addEventListener("click", function() {
    document.getElementsByClassName("modal")[0];
    document.body.style.overflow = 'hidden';
  })
}

if(modalContent) {
    modalContent.addEventListener("click", function() {
      close_visibility("modal");
    })
}

function toggle_visibility_login(modal) {
  var show = document.getElementsByClassName(modal)[0];
  if(show.style.display == 'none') {
    show.style.display = 'block';
    document.body.style.overflow = 'hidden';
    document.getElementsByClassName("registration-wrapper")[0].style.display = "none";
    document.getElementsByClassName("login-wrapper")[0].style.display = "block";
  }
}

function toggle_visibility_register(modal) {
  var show = document.getElementsByClassName(modal)[0];
  if(show.style.display == 'none') {
    show.style.display = 'block';
    document.body.style.overflow = 'hidden';
    document.getElementsByClassName("login-wrapper")[0].style.display = "none";
    document.getElementsByClassName("registration-wrapper")[0].style.display = "block";
  }
}

function close_visibility(modal) {
  var show = document.getElementsByClassName(modal)[0];
  if(show.style.display == 'block') {
    show.style.display = 'none';
    document.body.style.overflow = 'visible';
  }
}