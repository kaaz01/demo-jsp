<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Greeting</title>
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .card {
            background: white;
            border-radius: 12px;
            padding: 40px;
            max-width: 480px;
            width: 100%;
            box-shadow: 0 4px 16px rgba(0,0,0,0.1);
            text-align: center;
        }

        .avatar {
            font-size: 56px;
            margin-bottom: 16px;
        }

        h1 {
            font-size: 28px;
            color: #1e293b;
            margin-bottom: 10px;
        }

        p {
            color: #64748b;
            font-size: 15px;
            margin-bottom: 30px;
        }

        a {
            display: inline-block;
            padding: 10px 24px;
            background-color: #6366f1;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-size: 14px;
        }

        a:hover {
            background-color: #4f46e5;
        }
    </style>
</head>
<body>

<div class="card">
    <div class="avatar">👋</div>
    <h1>${greeting}</h1>
    <p>Nice to meet you, <strong>${name}</strong>! Hope you enjoy learning Spring Boot.</p>
    <a href="${pageContext.request.contextPath}/">← Back to Home</a>
</div>

</body>
</html>
