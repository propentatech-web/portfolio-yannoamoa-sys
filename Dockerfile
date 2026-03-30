FROM propentatech/portfolios-formation-dev-web2026:latest

RUN mkdir -p /usr/share/nginx/html/portfolio-yannoamoa-sys/
RUN rm -rf /usr/share/nginx/html/portfolio-yannoamoa-sys/*

COPY . /usr/share/nginx/html/portfolio-yannoamoa-sys/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
