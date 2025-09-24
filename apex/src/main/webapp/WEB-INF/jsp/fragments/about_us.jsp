<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="about-content">
    <div class="about-hero">
        <h1>About Us</h1>
        <p>APEX Holdings에 대해 알아보세요</p>
    </div>
    
    <div class="about-section">
        <h2>회사 소개</h2>
        <p>APEX Holdings는 혁신적인 비즈니스 솔루션을 제공하는 글로벌 기업입니다. 우리는 고객의 성공을 위해 최선을 다하고 있습니다.</p>
        
        <h2>비전</h2>
        <p>세계 최고의 비즈니스 파트너가 되어 고객과 함께 성장하는 것입니다.</p>
        
        <h2>미션</h2>
        <p>혁신적인 기술과 서비스로 고객의 비즈니스 가치를 극대화합니다.</p>
    </div>
</div>

<style>
.about-content {
    padding: 40px 20px;
    max-width: 1200px;
    margin: 0 auto;
}

.about-hero {
    text-align: center;
    padding: 40px 0;
    background: linear-gradient(135deg, #1e40af 0%, #3b82f6 100%);
    color: white;
    border-radius: 10px;
    margin-bottom: 40px;
}

.about-hero h1 {
    font-size: 2.5rem;
    margin-bottom: 10px;
    font-weight: bold;
}

.about-hero p {
    font-size: 1.1rem;
    opacity: 0.9;
}

.about-section {
    background: white;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.about-section h2 {
    color: #1e40af;
    font-size: 1.8rem;
    margin-bottom: 15px;
    margin-top: 30px;
}

.about-section h2:first-child {
    margin-top: 0;
}

.about-section p {
    color: #6b7280;
    line-height: 1.8;
    font-size: 1.1rem;
    margin-bottom: 20px;
}

@media (max-width: 768px) {
    .about-hero h1 {
        font-size: 2rem;
    }
    
    .about-section {
        padding: 20px;
    }
    
    .about-section h2 {
        font-size: 1.5rem;
    }
}
</style>
