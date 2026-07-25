from django.http import HttpResponse

def home(request):
    return HttpResponse("""
    <!DOCTYPE html>
    <html>
    <head><title>DZ 33 Docker</title></head>
    <body style="font-family: Arial; text-align: center; padding: 50px;">
        <h1 style="color: #009688;">🐳 DZ 33: Docker контейнеризация</h1>
        <p>Приложение на Django успешно запущено внутри Docker!</p>
        <p><strong>Автор:</strong> Виктор Куличенко</p>
        <div style="background: #4CAF50; color: white; padding: 10px; border-radius: 5px; display: inline-block;">✅ Статус: Работает</div>
    </body>
    </html>
    """)