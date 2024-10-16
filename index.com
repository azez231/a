<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>موقع ضيف الله</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }
        .container {
            text-align: center;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 40px;
            max-width: 400px;
            width: 90%;
        }
        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }
        button {
            background-color: #4CAF50; /* لون زر إيجابي */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            margin: 10px;
        }
        button:hover {
            background-color: #45a049; /* لون عند التحويم على الزر */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>انت مع مين؟</h1>
        <p>هل انت مع ضيف الله ولا عمر؟</p>
        <button onclick="checkAnswer('ضيف الله')">ضيف الله</button>
        <button onclick="checkAnswer('عمر')">عمر</button>
    </div>

    <script>
        function checkAnswer(answer) {
            if (answer === 'ضيف الله') {
                alert('الإجابة صحيحة!');
                setTimeout(() => {
                    document.body.innerHTML = '<h1>يلا اطلع برا!</h1>';
                }, 1000);
            } else {
                alert('الإجابة خطأ!');
            }
        }
    </script>
</body>
</html>
