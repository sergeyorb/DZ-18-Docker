# Домашнее задание-Docker
<ol>
<li> Создать стенд для выполнения домашнего задания </li>
<li> Установка Docker </li>
<li> Написать Dockerfile</li>
<li> Создать образ<\li>
<li> Запустить контейнер на базе созданного контейнера<\li>
<li> Проверить работу nginx<\li>  
</ol>
  
# Создать стенд для выполнения домашнего задания  
<ul>
<p>Для выполнения ДЗ была развёрнута VM 
</ul>

# Установка Docker  
<ul>
<p>- Обновить локальную базу пакетов:</p>
<p>sudo yum check-update</p>
<p>sudo yum upgrade</p>
<p>- Добавил репозиторий и установит docker</p>
<p>curl -fsSL https://get.docker.com/ | sh</p>
<p>- Добавил пользователя в группу Docker</p>
<p>sudo usermod -aG docker <имя пользователя></p>  
<p>- Запустил демон Docker</p>  
<p>sudo systemctl start docker<\p>
<p>- Проверил что демон Docker стартовал без ошибок</p>
<p>sudo systemctl status docker</p>  
</ul>  

# Написать Dockerfile
<ul>
<p>Создал Dockerfile на основе базового пакета alpine
<p>FROM alpine
<p>RUN apk add --update-cache && apk add nginx
<p>CMD ["nginx","-g","daemon off;"]

<p>Создал Dockerfile на основе базового пакета ubuntu
<p>FROM ubuntu:18.04
<p>RUN apt-get -y update
<p>RUN apt-get install -y  nginx
<p># Указываем Nginx запускаться на переднем плане (daemon off)
<p>RUN echo "daemon off;" >> /etc/nginx/nginx.conf
<p># В индексном файле меняем первое вхождение nginx на docker-nginx
<p>RUN sed -i "0,/nginx/s/nginx/docker-nginx/i" /usr/share/nginx/html/index.html
<p># Запускаем Nginx. CMD указывает, какую команду необходимо запустить, когда контейнер запущен.
<p>CMD [ "nginx" ]
<\ul> 
 
# Создать образ
<ul>  
<p>На основе созданного Dockerfile создал образ командой
<p>docker build -f dockerfile -t nginx_custom .
<\ul>
  
# Запустить контейнер на базе созданного контейнера
<ul>
<p>docker run -p 80:80 -d nginx_custom
<\ul>
 
# Проверить работу nginx
<ul>
<p>Открыл в браузере nginx
<p>Открылась приветственная страница nginx  
<\ul>  
