FROM nginx:alpine

RUN rm -rf /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY html/index.html /usr/share/nginx/html/index.html
COPY html/signup.html /usr/share/nginx/html/signup.html
COPY html/login.html /usr/share/nginx/html/login.html
COPY html/post.html /usr/share/nginx/html/post.html
COPY html/profile.html /usr/share/nginx/html/profile.html
COPY html/users.html /usr/share/nginx/html/users.html
COPY html/users/ /usr/share/nginx/html/users/
COPY css/ /usr/share/nginx/html/css/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
