# Выбираем базовый образ
FROM httpd:2.4

# Указываем автора
LABEL maintainer Alexey Smirnov <mastermole@yandex.ru>

# Создаем тестовую страницу для Apache
COPY ./index.html /usr/local/apache2/htdocs/

# Указываем порт
EXPOSE 80

