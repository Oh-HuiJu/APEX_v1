document.addEventListener("DOMContentLoaded", () => {
    // 설정
    const setCookie = (name, value, days) => {
        const expires = new Date();
        expires.setTime(expires.getTime() + (days * 24 * 60 * 60 * 1000));

        const isLocalhost = window.location.hostname === 'localhost' || window.location.hostname === '127.0.0.1';
        const domainPart = isLocalhost ? '' : ';domain=.apex.com';
        document.cookie = `${name}=${value};expires=${expires.toUTCString()};path=/${domainPart}`;
    };

    // 조회
    const getCookie = (name) => {
        const nameEQ = name + '=';
        const ca = document.cookie.split(';');
        for (let i = 0; i < ca.length; i++) {
            let c = ca[i].trim();
            if (c.indexOf(nameEQ) === 0) {
                return c.substring(nameEQ.length);
            }
        }
        return null;
    };

    // 삭제
    const deleteCookie = (name) => {
        const isLocalhost = window.location.hostname === 'localhost' || window.location.hostname === '127.0.0.1';
        const domainPart = isLocalhost ? '' : ';domain=.apex.com';
        document.cookie = `${name}=;expires=Thu, 01 Jan 1970 00:00:00 UTC;path=/${domainPart}`;
    };

    window.setCookie = setCookie;
    window.getCookie = getCookie;
    window.deleteCookie = deleteCookie;
});