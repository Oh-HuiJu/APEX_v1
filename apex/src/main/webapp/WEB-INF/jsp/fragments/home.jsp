<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="home-content">
    <div class="hero-section">
        <h1>APEX Holdings</h1>
        <p>혁신적인 비즈니스 솔루션을 제공하는 글로벌 기업</p>
        <button class="cta-button">더 알아보기</button>
    </div>
    
    <div class="features-section">
        <div class="feature-card">
            <h3>혁신</h3>
            <p>최신 기술과 창의적 아이디어로 미래를 만들어갑니다.</p>
        </div>
        <div class="feature-card">
            <h3>신뢰</h3>
            <p>고객과의 신뢰 관계를 최우선으로 생각합니다.</p>
        </div>
        <div class="feature-card">
            <h3>성장</h3>
            <p>지속적인 성장과 발전을 추구합니다.</p>
        </div>
    </div>
</div>

<style>
.home-content {
    padding: 40px 20px;
    max-width: 1200px;
    margin: 0 auto;
}

.hero-section {
    text-align: center;
    padding: 60px 0;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    border-radius: 10px;
    margin-bottom: 40px;
}

.hero-section h1 {
    font-size: 3rem;
    margin-bottom: 20px;
    font-weight: bold;
}

.hero-section p {
    font-size: 1.2rem;
    margin-bottom: 30px;
    opacity: 0.9;
}

.cta-button {
    background: #1e40af;
    color: white;
    padding: 15px 30px;
    border: none;
    border-radius: 5px;
    font-size: 1.1rem;
    cursor: pointer;
    transition: background 0.3s ease;
}

.cta-button:hover {
    background: #1d4ed8;
}

.features-section {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 30px;
    margin-top: 40px;
}

.feature-card {
    background: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    text-align: center;
    transition: transform 0.3s ease;
}

.feature-card:hover {
    transform: translateY(-5px);
}

.feature-card h3 {
    color: #1e40af;
    font-size: 1.5rem;
    margin-bottom: 15px;
}

.feature-card p {
    color: #6b7280;
    line-height: 1.6;
}

@media (max-width: 768px) {
    .hero-section h1 {
        font-size: 2rem;
    }
    
    .hero-section p {
        font-size: 1rem;
    }
    
    .features-section {
        grid-template-columns: 1fr;
    }
}
</style>
