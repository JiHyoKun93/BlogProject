
/******************************************* header *******************************************/

const header = document.querySelector('header');

const menuContainer = header.querySelector('#menu_wrap');
const removeMenuTransition = function(e) {
    menuContainer.style.transition = '';
}
const addMenuTransition = function() {
    menuContainer.style.transition = '0.2s ease-in-out';
}

menuContainer.addEventListener('transitionend', removeMenuTransition);

header.querySelector('#menu_icon').addEventListener('click', (e) => {
    addMenuTransition();
    header.classList.add('open');
});

header.querySelectorAll('#menu_logo, #menu_dim, .menu_item, .menu_close').forEach(item => {
    item.addEventListener('click', (e) => {
        addMenuTransition();
        header.classList.remove('open');
    });
});


