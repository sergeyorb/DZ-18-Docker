# Домашнее задание-Docker
<ol>
<li> Создать стенд для выполнения домашнего задания </li>
<li> Установка Docker </li>
<li></li>  
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
