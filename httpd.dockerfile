FROM httpd

RUN sed -i 's/Listen 80/Listen 8080/g' /usr/local/apache2/conf/httpd.conf
