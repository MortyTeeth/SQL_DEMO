# SQL_DEMO
Демонстрация навыков работы с языком SQL.
0)Необходимый софт.(объяснить как мы поставили докер,word)
1)Инструкция по развёртыванию.  
2)Инструкция по подключению клиента к базе данных.
3)Демонстрационные скрипты.



    0)
    0.1)
        Reference from: https://www.digitalocean.com/community/tutorials/docker-ubuntu-18-04-1-ru
        
        Установка Docker.
        1)Сначала обновляем существующий перечень пакетов:
        (sudo apt update)
        2)устанавливаем необходимые пакеты, которые позволяют apt использовать пакеты по HTTPS:
        (sudo apt install apt-transport-https ca-certificates curl software-properties-common)
        3)Затем добавляем в свою систему ключ GPG официального репозитория Docker:
        (curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -)
        4)Добавляем репозиторий Docker в список источников пакетов APT:
        (sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable")
        5)Затем обновим базу данных пакетов информацией о пакетах Docker из вновь добавленного репозитория:
        (sudo apt update)
        6)Следует убедиться, что мы устанавливаем Docker из репозитория Docker, а не из репозитория по умолчанию Ubuntu:
        (apt-cache policy docker-ce)
        7)Далее устанавливаем Docker:
        (sudo apt install docker-ce)
        8)Теперь Docker установлен, демон запущен, и процесс будет запускаться при загрузке системы.  Убедимся, что процесс запущен:
        (sudo systemctl status docker)
        9)Чтобы не вводить sudo каждый раз при запуске команды docker, добавьте имя своего пользователя в группу docker:
        (sudo usermod -aG docker ${USER})
        10)Для применения этих изменений в составе группы необходимо разлогиниться и снова залогиниться на сервере или задать следующую команду:
        (su - ${USER})
        11)Убедиться, что пользователь добавлен в группу docker можно следующим образом:
        (id -nG)
        
    0.2)
        Установка Docker-compose.
        1)Проверяем текущую версию и при необходимости обновляем её:
        (sudo curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose)
        2)После этого мы настраиваем разрешения:
        (sudo chmod +x /usr/local/bin/docker -compose)
        3)После установки проверяем, что она прошла успешно, с помощью проверки версии:
        (docker -compose --version)(Output: docker -compose --version 1.27.4, build 40524192)
        
    1)
        Reference from: https://hub.docker.com/_/postgres
        
        1)Сначала создаём docker-compose.yml
        2)В него заносим необходимый код
        (# Use postgres/example user/password credentials
                                         version: '3.1'
                                         
                                         services:
                                         
                                           db:
                                             image: postgres
                                             restart: always
                                             environment:
                                               POSTGRES_PASSWORD: example
                                         
                                           adminer:
                                             image: adminer
                                             restart: always
                                             ports:
                                               - 8080:8080)
        3)После этого вводим команду
        (docker-compose up -d)
        4)Дожидаемся инициализации
        5)Переходим по адресу http://localhost:8080                                      
        
    2)
        1)Заполняем необхлдимые поля: System(PostgreSQL), Server(db), Username(postgres), Password(example)
        2)Логинемся в системе.
