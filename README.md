# Imobiliária Summit

## Descrição do Projeto
O projeto "Imobiliária Summit" é um site de imóveis desenvolvido utilizando HTML, CSS e JavaScript, com a possibilidade de integração com Node.js no futuro. O objetivo do site é permitir que os usuários visualizem opções de imóveis disponíveis para compra e aluguel. "Imobiliária Summit" é o nome da nossa empresa, que também será utilizado como o nome da imobiliária.

## Desenvolvimento
Atualmente, estamos desenvolvendo o site e criando um backend para conectar com um banco de dados. Este banco de dados será implantado em um deployment no Kubernetes. Estamos no processo de integração do projeto em contêineres, com a criação do Dockerfile e da pipeline para build e deploy no ambiente Kubernetes. A ideia é que tanto o banco de dados quanto o site sejam hospedados no Kubernetes, utilizando o Google Cloud Platform (GCP) como provedor de cloud. Pretendemos também registrar um DNS para o site na GCP.

## Como Clonar o Repositório

### Pré-requisitos
- Se você estiver utilizando Linux/WSL, é necessário ter o GitLab instalado.

### Comandos para Clonar o Repositório
1. Clone o repositório da branch principal (main):
    ```bash
    git clone git@github.com:Imobiliaria-Summit/WebSite.git
    ```

2. Crie uma nova branch após clonar na sua máquina:
    ```bash
    git checkout -b feature/<nome-do-recurso>
    ```

3. Valide se você está na branch que acabou de criar:
    ```bash
    git branch
    ```

4. Após finalizar as alterações, adicione os arquivos modificados:
    ```bash
    git add .
    ```

5. Faça o commit das suas alterações:
    ```bash
    git commit -m "<aqui coloca um resumo do que mudou>"
    ```

6. Por fim, faça o push da sua branch para o repositório remoto:
    ```bash
    git push --set-upstream origin feature/
    ```

7. Crie uma Pull Request (PR) da sua branch para a branch principal (main) e aguarde a aprovação.

