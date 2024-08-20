# Use a imagem oficial do Nginx
FROM nginx:alpine

# Remova o arquivo de configuração padrão do Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copie o arquivo de configuração do Nginx para o container
COPY nginx.conf /etc/nginx/conf.d

# Copie todos os arquivos do projeto para o diretório padrão do Nginx
COPY . /usr/share/nginx/html

# Exponha a porta 80 para acesso ao website
EXPOSE 80

# Inicie o Nginx
CMD ["nginx", "-g", "daemon off;"]
