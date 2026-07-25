# Используем официальный легковесный образ Python
FROM python:3.10-slim

# Устанавливаем переменные окружения для оптимальной работы Python в Docker
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Устанавливаем зависимости
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Копируем исходный код проекта в контейнер
COPY . .

# Открываем порт, который будет использовать приложение
EXPOSE 8000

# Команда для запуска приложения (runserver для демонстрации)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]