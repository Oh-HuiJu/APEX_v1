<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<header>
    <!-- 메인 헤더 바 -->
    <div class="header-main">
        <div class="header-container">
            <!-- 로고 -->
            <div class="header-logo">
                <span class="logo-apex">
                    <span class="logo-ap">AP</span>
                    <span class="logo-ex">Ex</span>
                </span>
            </div>
            
            <!-- 네비게이션 메뉴 -->
            <nav class="header-nav">
                <a href="#" class="nav-link" data-route="/">About Us</a>
                <a href="#" class="nav-link" data-route="/our-business">Our Business</a>
                <a href="#" class="nav-link" data-route="/portfolio">Future & Portfolio</a>
                <a href="#" class="nav-link" data-route="/news">News & Insights</a>
                <a href="#" class="nav-link" data-route="/contact">Contact</a>
            </nav>
            
            <!-- 언어 선택기 -->
            <div class="language-selector">
                <span class="lang-item active" data-lang="en-US">EN</span>
                <span class="lang-separator">|</span>
                <span class="lang-item" data-lang="ko-KR">KR</span>
                <span class="lang-separator">|</span>
                <span class="lang-item" data-lang="zh-CN">CH</span>
            </div>
        </div>
    </div>
</header>

<style>
header {
    width: 100%;
    font-family: Arial, sans-serif;
    position: sticky;
    top: 0;
    z-index: 1000;
}

/* 상단 헤더 바 */
.header-top {
    background-color: #2c2c2c;
    padding: 8px 0;
}

.header-top-content {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.header-icon {
    color: #8b5cf6;
    margin-right: 8px;
}

.header-title {
    color: #a78bfa;
    font-size: 14px;
}

/* 메인 헤더 바 */
.header-main {
    background-color: white;
    padding: 20px 0;
    border-bottom: 1px solid #e5e7eb;
}

.header-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

/* 로고 */
.header-logo {
    flex: 0 0 auto;
}

.logo-apex {
    font-size: 28px;
    font-weight: bold;
    line-height: 1;
}

.logo-ap {
    color: #1e40af;
}

.logo-ex {
    color: #3b82f6;
    position: relative;
}

.logo-ex::before {
    content: '';
    position: absolute;
    top: 0;
    left: -2px;
    width: 2px;
    height: 100%;
    background: linear-gradient(to bottom, #3b82f6, #3b82f6);
}

/* 네비게이션 */
.header-nav {
    flex: 1;
    display: flex;
    justify-content: center;
    gap: 40px;
}

.nav-link {
    color: #374151;
    text-decoration: none;
    font-size: 16px;
    font-weight: 500;
    transition: color 0.3s ease;
    padding: 8px 0;
}

.nav-link:hover,
.nav-link.is-active {
    color: #1e40af;
}

/* 언어 선택기 */
.language-selector {
    flex: 0 0 auto;
    display: flex;
    align-items: center;
    gap: 8px;
}

.lang-item {
    color: #9ca3af;
    font-size: 14px;
    font-weight: 500;
    cursor: pointer;
    transition: color 0.3s ease;
    padding: 4px 8px;
}

.lang-item.active {
    color: #374151;
}

.lang-item:hover {
    color: #1e40af;
}

.lang-separator {
    color: #d1d5db;
    font-size: 14px;
}

/* 반응형 디자인 */
@media (max-width: 768px) {
    .header-container {
        flex-direction: column;
        gap: 20px;
    }
    
    .header-nav {
        flex-direction: column;
        gap: 15px;
        text-align: center;
    }
    
    .language-selector {
        order: -1;
    }
    
    .logo-apex {
        font-size: 24px;
    }
}

@media (max-width: 480px) {
    .header-nav {
        flex-wrap: wrap;
        justify-content: center;
        gap: 10px;
    }
    
    .nav-link {
        font-size: 14px;
    }
}
</style>

<script>
// 언어 선택 기능
document.addEventListener('DOMContentLoaded', function() {
    const langItems = document.querySelectorAll('.lang-item');
    
    langItems.forEach(item => {
        item.addEventListener('click', function() {
            const lang = this.dataset.lang;
            
            // 활성 상태 변경
            langItems.forEach(lang => lang.classList.remove('active'));
            this.classList.add('active');
            
            // 서버에 언어 변경 요청
            fetch('/api/change-language', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: 'lang=' + encodeURIComponent(lang)
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    // 페이지 새로고침 또는 필요한 경우 콘텐츠 업데이트
                    console.log('Language changed to:', lang);
                } else {
                    console.error('Failed to change language');
                }
            })
            .catch(error => {
                console.error('Error changing language:', error);
            });
        });
    });
});
</script>
