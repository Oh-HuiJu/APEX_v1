<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<footer>
    <!-- Footer Header Section -->
    <!-- Main Footer Content -->
    <div class="footer-main">
        <div class="footer-container">
            <!-- Left Column - Company Info -->
            <div class="footer-left">
                <div class="footer-logo">
                    <div class="logo-text">
                        <span class="logo-apex">
                            <span class="logo-ap">AP</span>
                            <span class="logo-ex">Ex</span>
                        </span>
                    </div>
                    <div class="logo-holdings">holdings</div>
                </div>
                <div class="footer-copyright">
                    © 2025 APEX. All Rights Reserved.
                </div>
            </div>
            
            <!-- Right Column - Navigation Links -->
            <div class="footer-right">
                <div class="footer-nav">
                    <div class="nav-row">
                        <a href="#" class="nav-link">About Us</a>
                        <a href="#" class="nav-link">Our Business</a>
                        <a href="#" class="nav-link">Portfolio</a>
                        <a href="#" class="nav-link">News & Insights</a>
                        <a href="#" class="nav-link">Contact</a>
                    </div>
                    <div class="nav-row">
                        <a href="#" class="nav-link">About Us</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

<style>
    footer {
        width: 100%;
        font-family: Arial, sans-serif;
    }

    .footer-header {
        background-color: #2c2c2c;
        padding: 8px 0;
    }

    .footer-header-content {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
    }

    .footer-icon {
        color: #8b5cf6;
        margin-right: 8px;
    }

    .footer-title {
        color: #a78bfa;
        font-size: 14px;
    }

    .footer-main {
        background-color: white;
        padding: 40px 0;
    }

    .footer-container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
    }

    .footer-left {
        flex: 1;
    }

    .footer-logo {
        margin-bottom: 15px;
    }

    .logo-text {
        margin-bottom: 5px;
    }

    .logo-apex {
        font-size: 32px;
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

    .logo-holdings {
        color: #374151;
        font-size: 16px;
        font-weight: normal;
    }

    .footer-copyright {
        color: #374151;
        font-size: 14px;
    }

    .footer-right {
        flex: 1;
        display: flex;
        justify-content: flex-end;
    }

    .footer-nav {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .nav-row {
        display: flex;
        gap: 30px;
        justify-content: flex-end;
    }

    .nav-link {
        color: #374151;
        text-decoration: none;
        font-size: 14px;
        transition: color 0.3s ease;
    }

    .nav-link:hover {
        color: #1e40af;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .footer-container {
            flex-direction: column;
            gap: 30px;
        }
        
        .footer-right {
            justify-content: flex-start;
        }
        
        .nav-row {
            justify-content: flex-start;
            flex-wrap: wrap;
            gap: 20px;
        }
        
        .logo-apex {
            font-size: 28px;
        }
    }
</style>
