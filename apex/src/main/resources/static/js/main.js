console.log('main.js loaded');

function initHeaderSubmeni() {
    const header = document.querySelector('header');
    const nav = header.querySelector('nav');
    const subProd = header.querySelector('.sub-prod');
    const subComp = header.querySelector('.sub-comp');
    if (!nav) return;

    const subMenuMap = {
        
    }

    const items = Array.from(nav.querySelectorAll('[data-route]'));
    let hideTimer = null;
    
    function hideAll() {
        [subProd, subComp].forEach(el => el && el.classList.remove('is-open'));
    }

    function openFor(route) {
        clearTimeout(hideTimer);
        hideAll();
        const sub = subMenuMap[route];
        if (!sub) return;
        sub.classList.add('is-open');
    }

    function scheduleHide() {
        clearTimeout(hideTimer);
        hideTimer = setTimeout(hideAll, 300);
    }
    
}