// function fade(element) {
//     var op = 1;
//     var timer = setInterval(function () {
//         if (op <= 0.1){
//             clearInterval(timer);
//             element.style.display = 'none';
//         }
//         element.style.opacity = op;
//         element.style.filter = 'alpha(opacity=' + op * 100 + ")";
//         op -= op * 0.2;
//     }, 50);
// }
//
// document.addEventListener('turbolinks:load', function() {
//
//     var notification = document.querySelector('.alert');
//     if (notification) {
//         window.setTimeout(function() {
//             fade(notification);
//         }, 2000)
//     }
// });