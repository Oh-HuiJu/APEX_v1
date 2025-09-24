// Sub JavaScript functionality
console.log('sub.js loaded');

// 서브 페이지 관련 기능들
const subPage = {
    // 초기화
    init: function() {
        this.bindEvents();
        this.loadContent();
    },
    
    // 이벤트 바인딩
    bindEvents: function() {
        // 페이지 로드 시 실행
        document.addEventListener('DOMContentLoaded', () => {
            this.init();
        });
    },
    
    // 콘텐츠 로드
    loadContent: function() {
        console.log('Sub page content loaded');
    },
    
    // 유틸리티 함수들
    utils: {
        // 스크롤 애니메이션
        scrollToTop: function() {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        },
        
        // 요소 표시/숨김
        toggleElement: function(elementId) {
            const element = document.getElementById(elementId);
            if (element) {
                element.style.display = element.style.display === 'none' ? 'block' : 'none';
            }
        }
    }
};

// 전역 객체로 노출
window.subPage = subPage;