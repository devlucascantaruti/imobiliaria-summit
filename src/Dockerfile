# FROM nginx:alpine

# RUN rm /etc/nginx/conf.d/default.conf

# COPY nginx.conf /etc/nginx/conf.d

# COPY . /usr/share/nginx/html

# EXPOSE 8080

# CMD ["nginx", "-g", "daemon off;"]



# Use a imagem nginx como base
FROM nginx:alpine

# Copie os arquivos HTML e CSS para o diretório padrão do nginx
COPY /views /usr/share/nginx/html
#COPY style.css /usr/share/nginx/html

# Exponha a porta 80 para o tráfego HTTP
EXPOSE 80

# Comando para iniciar o nginx quando o contêiner for iniciado
CMD ["nginx", "-g", "daemon off;"]
