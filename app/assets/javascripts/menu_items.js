var loginButton = document.getElementsByClassName('login')[0];
var registerButton = document.getElementsByClassName('register')[0];
var modalContent = document.getElementsByClassName('modal')[0];

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
  }
}

function toggle_visibility_register(modal) {
  var show = document.getElementsByClassName(modal)[0];
  if(show.style.display == 'none') {
    show.style.display = 'block';
    document.body.style.overflow = 'hidden';
  }
}

function close_visibility(modal) {
  var show = document.getElementsByClassName(modal)[0];
  if(show.style.display == 'block') {
    show.style.display = 'none';
    document.body.style.overflow = 'visible';
  }
}