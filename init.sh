#mkdir /home/box/web/logs 2> /dev/null

sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf 
sudo /etc/init.d/nginx restart 
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test 
sudo /etc/init.d/gunicorn restart

#kill -HUP /home/box/web/etc/gunicorn.pid 2> /dev/null
#gunicorn -c etc/gunicorn.conf /etc/gunicorn.d/django.wsgi
