<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot Demo</title>
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

        .badge {
            display: inline-block;
            background-color: #d1fae5;
            color: #065f46;
            padding: 4px 14px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        h1 {
            font-size: 26px;
            color: #1e293b;
            margin-bottom: 10px;
        }

        p {
            color: #64748b;
            font-size: 15px;
            margin-bottom: 30px;
        }

        .form-row {
            display: flex;
            gap: 8px;
        }

        input[type="text"] {
            flex: 1;
            padding: 10px 14px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            font-size: 14px;
            outline: none;
        }

        input[type="text"]:focus {
            border-color: #6366f1;
        }

        button {
            padding: 10px 20px;
            background-color: #6366f1;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            cursor: pointer;
        }

        button:hover {
            background-color: #4f46e5;
        }

        .info {
            margin-top: 24px;
            font-size: 13px;
            color: #94a3b8;
        }
    </style>
</head>
<body>

<div class="card">
    <span class="badge">● ${status}</span>
    <h1>${message}</h1>
    <p>Enter your name below to get a personalised greeting.</p>

    <form action="${pageContext.request.contextPath}/greet" method="get">
        <div class="form-row">
            <input type="text" name="name" placeholder="Enter your name..." />
            <button type="submit">Greet Me</button>
        </div>
    </form>

    <div class="info">Spring Boot + JSP &nbsp;|&nbsp; Port 8081</div>
</div>

</body>
</html>
