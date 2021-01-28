# SQL_DEMO
## Демонстрация навыков работы с языком SQL.

### План.

1. Необходимый софт.
2. Инструкция по развёртыванию.  
3. Инструкция по подключению клиента к базе данных.
4. Демонстрационные скрипты.

* Установка docker
* Установка docker-compose
* Установка postgresql



### 1. Установка Docker.

1. Обновляем существующий перечень пакетов:
(sudo apt update)
2. Устанавливаем необходимые пакеты, которые позволяют apt использовать пакеты по HTTPS:
(sudo apt install apt-transport-https ca-certificates curl software-properties-common)
3. Добавляем в свою систему ключ GPG официального репозитория Docker:
(curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -)
4. Добавляем репозиторий Docker в список источников пакетов APT:
(sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable")
5. Обновляем базу данных пакетов информацией о пакетах Docker из вновь добавленного репозитория:
(sudo apt update)
6. Подтверждаем, что мы устанавливаем Docker из репозитория Docker, а не из репозитория по умолчанию Ubuntu:
(apt-cache policy docker-ce)
7. Устанавливаем Docker:
(sudo apt install docker-ce)
8. Docker установлен, демон запущен, и процесс будет запускаться при загрузке системы.  Убедимся, что процесс запущен:
(sudo systemctl status docker)
9. Чтобы не вводить sudo каждый раз при запуске команды docker, добавьте имя своего пользователя в группу docker:
(sudo usermod -aG docker ${USER})
10. Для применения этих изменений в составе группы необходимо разлогиниться и снова залогиниться на сервере или задать следующую команду:
(su - ${USER})
11. Проверяем, что пользователь добавлен в группу docker можно следующим образом:
(id -nG)

 
### 2. Установка Docker-compose.

1. Проверяем текущую версию и при необходимости обновляем её:
(sudo curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose)
2. После этого мы настраиваем разрешения:
(sudo chmod +x /usr/local/bin/docker -compose)
3. После установки проверяем, что она прошла успешно, с помощью проверки версии:
(docker -compose --version)(Output: docker -compose --version 1.27.4, build 40524192)
        
### 3. Установка Postgresql.

1. Сначала создаём docker-compose.yml
2. В него заносим необходимый код
3. После этого вводим команду
(docker-compose up -d)
4. Дожидаемся инициализации
5. Переходим по адресу http://localhost:8080                                      
        
### 4. Вход в систему.

1. Заполняем необходимые поля: System(PostgreSQL), Server(db), Username(postgres), Password(example)
2. Логинемся в системе.
