# 🐳 DZ33 — Docker: Контейнеризация Django-приложения

[![Python](https://img.shields.io/badge/Python-3.10-blue.svg)](https://www.python.org/)
[![Django](https://img.shields.io/badge/Django-4.2-green.svg)](https://www.djangoproject.com/)
[![Docker](https://img.shields.io/badge/Docker-Ready-blue.svg)](https://www.docker.com/)
[![Status](https://img.shields.io/badge/Status-Completed-brightgreen.svg)]()

**Автор:** Виктор Куличенко  
**Занятие:** #33 — Docker контейнеры. Создание контейнеров для web-приложений  
**Статус:** ✅ Завершено

---

## 📌 О проекте

В рамках данного задания был разработан и настроен Dockerfile для контейнеризации веб-приложения на Django. Проект демонстрирует базовые принципы работы с Docker: создание образа, управление портами и запуск изолированного контейнера.

### 🎯 Выполненные задачи:
- ✅ Написан оптимизированный Dockerfile на базе python:3.10-slim
- ✅ Настроен .dockerignore для исключения лишних файлов из образа
- ✅ Образ успешно собран и контейнер запущен
- ✅ Приложение доступно по порту 8000

---

## 🚀 Быстрый старт

### 1. Сборка образа
  ash
docker build -t dz33-django-app .
  

### 2. Запуск контейнера
  ash
docker run -d -p 8000:8000 --name dz33_container dz33-django-app
  

### 3. Проверка работы
Откройте в браузере: **http://127.0.0.1:8000**

### 4. Остановка и удаление контейнера
  ash
docker stop dz33_container
docker rm dz33_container
  

---

## 📸 Демонстрация работы

### 1. Статус контейнера (docker ps -a)
![Docker PS](docs/screenshots/01_docker_ps.png)
*Контейнер успешно запущен и работает в фоновом режиме (статус Up).*

### 2. Работающее Django-приложение
![App Running](docs/screenshots/02_app_running.png)
*Веб-приложение Django успешно отвечает на запросы через проброшенный порт 8000.*

---

## 📂 Структура проекта

  	ext
DZ_33_Docker/
├── myproject/          # Исходный код Django-проекта
│   ├── manage.py
│   └── myproject/
├── docs/
│   └── screenshots/    # Скриншоты для отчета
├── .dockerignore       # Исключения для Docker
├── Dockerfile          # Инструкции для сборки образа
├── requirements.txt    # Зависимости Python
└── README.md           # Этот файл
  

---

## 🔍 Анализ Dockerfile

| Директива | Назначение |
|-----------|------------|
| FROM python:3.10-slim | Использование легковесного официального образа |
| ENV PYTHONDONTWRITEBYTECODE=1 | Запрет создания .pyc файлов |
| ENV PYTHONUNBUFFERED=1 | Вывод логов Python напрямую в консоль Docker |
| WORKDIR /app | Установка рабочей директории внутри контейнера |
| COPY requirements.txt . | Копирование файла зависимостей |
| RUN pip install ... | Установка зависимостей в образ |
| COPY . . | Копирование исходного кода проекта |
| EXPOSE 8000 | Документирование используемого порта |
| CMD [...] | Команда по умолчанию для запуска контейнера |

---

## 👤 Автор

**Viktor Kulichenko**  
*Software Engineer / Information Security Specialist*  
[GitHub](https://github.com/VictorKVS)

---

*© 2026 Виктор Куличенко. Проект выполнен в рамках курса "Python-разработчик I".*