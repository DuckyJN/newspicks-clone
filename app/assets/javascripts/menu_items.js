function toggle_visibility(modal) {
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