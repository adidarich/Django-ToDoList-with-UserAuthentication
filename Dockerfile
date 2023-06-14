# Указывает Docker использовать официальный образ python с dockerhub в качестве базового образа
FROM python:3.10.6

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Устанавливает рабочий каталог контейнера — "app"
WORKDIR /app

# Копирует все файлы из нашего локального проекта в контейнер
ADD ./app

# Запускает команду pip install для всех библиотек, перечисленных в requirements.txt
RUN pip install -r requirements.txt