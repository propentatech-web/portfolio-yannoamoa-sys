FROM propentatech/portfolios-formation-dev-web2026:latest

RUN mkdir -p /usr/share/nginx/html/portfolio-yannoamoa-sys/
RUN rm -rf /usr/share/nginx/html/portfolio-yannoamoa-sys/*

COPY . /usr/share/nginx/html/portfolio-yannoamoa-sys/

RUN sed -i 's|root   /usr/share/nginx/html;|root   /usr/share/nginx/html/portfolio-yannoamoa-sys;|g' /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
