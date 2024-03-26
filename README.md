## Backend

O backend do Perfumaria é construído com Ruby on Rails e fornece uma API para o frontend do [Perfumaria](https://github.com/NatanBatista/perfumaria-next), permitindo que os usuários visualizem e gerenciem informações sobre perfumes, perfumistas e notícias relacionadas à perfumaria.

### Requisitos

- Ruby 3.2.2
- Rails 6.1.7.7
- PostgreSQL 16.2
- Podman 4.9.3 (Rodando Postgres dentro do container)

### Instalação

1. Clone o repositório:
```Bash
   https://github.com/NatanBatista/perfumaria-api
```

2. Instale as dependências:
```Bash
   bundle install
```
3. Adicione um .env na raiz do projeto:
   `DATABASE_USERNAME=""`,
   `DATABASE_PASSWORD=""`,
   `DATABASE_HOST=""`

4. Configure o banco de dados:
```Bash
   rails db:create
   rails db:migrate
```
5. Inicie o servidor:
```Bash
   rails s
   ## utilize a flag -p para trocar a porta caso entre em conflito com o fonrtend
   rails s -p 3001
```


### API Endpoints criados até o momento

- **GET /articles:** Retorna uma lista de notícias.
- **GET /articles/:id:** Retorna informações detalhadas sobre uma notícia específica.
- **POST /articles:** Cria uma nova notícia.
- **PUT /articles/:id:** Atualiza as informações de uma notícias existente.
- **DELETE /articles/:id:** Remove uma notícia.
- **GET /articles10** Lista somente 10 notícias