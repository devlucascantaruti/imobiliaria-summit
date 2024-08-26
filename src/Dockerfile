# Use a imagem nginx como base
FROM nginx:alpine

# Copie os arquivos HTML e CSS para o diretório padrão do nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY ./views /usr/share/nginx/html
COPY ./static/style /usr/share/nginx/html/style

# Exponha a porta 80 para o tráfego HTTP
EXPOSE 80

# Comando para iniciar o nginx quando o contêiner for iniciado
CMD ["nginx", "-g", "daemon off;"]
