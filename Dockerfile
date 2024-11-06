FROM ubuntu:latest
RUN apt update
RUN apt install nginx -y
ADD oxer-html /var/www/html
RUN unlink /etc/nginx/sites-enabled/default
ADD webapp.conf /etc/nginx/sites-enabled/webapp.conf 
CMD ["nginx", "-g", "daemon off;"]
