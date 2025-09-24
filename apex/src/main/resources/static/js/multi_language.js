// 다국어 처리
document.addEventListener("DOMContentLoaded", () => {
    const LANG_MAP = {
        'ko-KR': 'KO', 
        'en-US': 'EN', 
        'zh-CN': 'CN', 
        'ja-JP': 'JP'
    };

    // 언어 변경
    const changeLanguage = (langCode) => {
        setCookie('apex_lang', langCode, 30);

        fetch('/api/change-language', {
            method: 'POST',
            headers: {'Content-Type': 'application/x-www-form-urlencoded'},
            body: 'lang=' + encodeURIComponent(langCode)
        })
        .then(() => {
            window.location.href = window.location.pathname;
        })
        .catch(() => {
            window.location.href = window.location.pathname;
        });
    };

    // 현재 언어 업데이트 표시
    const updateCurrentLanguage = () => {
        const currentLang = getCookie('apex_lang') || 'ko-KR';
        const langDisplay = document.querySelector('.selected-lang');

        if (langDisplay && LANG_MAP[currentLang]) {
            langDisplay.textContent = LANG_MAP[currentLang];
        }

        // 선택 언어 옵션 표시
        document.querySelectorAll('.lang-option').forEach(option => {
            option.classList.toggle('selected', option.dataset.lang === currentLang);
        });
    };

    const langOptions = document.querySelectorAll('.lang-option');

    langOptions.forEach(option => {
        option.addEventListener('click', (e) => {
            e.preventDefault();
            e.stopPropagation();

            const selectedLang = e.target.dataset.lang;
            const langDisplay = document.querySelector('.select-lang');

            if (langDisplay && selectedLang && LANG_MAP[selectedLang]) {
                langDisplay.textContent = LANG_MAP[selectedLang];
            }

            const langBox = document.querySelector('.box-lang');
            if (langBox) langBox.classList.remove('is-open');

            if (selectedLang) {
                changeLanguage(selectedLang);
            }
        });
    });

    updateCurrentLanguage();

    document.addEventListener('route:loaded', updateCurrentLanguage);
});