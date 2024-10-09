# Data Warehouse

Este projeto implementa um Data Warehouse utilizando **dbt** (data build tool) com **PostgreSQL**. O objetivo é organizar e transformar dados para análise, facilitando a criação de relatórios e visualizações.
Esse projeto é um complemento para [Pipeline Gen AI](https://github.com/am-moreira/pipeline-ai)

## Tecnologias Utilizadas

- **dbt**: Ferramenta para transformação de dados em data warehouses.
- **PostgreSQL**: Sistema de gerenciamento de banco de dados relacional.

## Estrutura do Projeto

O projeto é organizado em diferentes camadas:

- **Bronze(RAW)**: Dados brutos importados.
- **Silver**: Dados transformados e limpos.
- **Gold**: Dados prontos para análise.

## Modelos

Os seguintes modelos foram criados:

- `gold_vendas_7_dias`: Resumo das vendas dos últimos 7 dias, com totais por produto.
- `gold_vendas_por_vendedor`: Resumo das vendas dos últimos 7 dias, agrupadas por vendedor.
- `silver_vendas`: Resumo das vendas, mantendo apenas vendas válidas e com valor adequado.

## Documentação

A documentação do projeto foi gerada usando o comando:
```bash
dbt docs generate
```
Para visualizar a documentação localmente, use o comando:
```bash
dbt docs serve
```
Acesse a documentação em seu navegador no endereço http://localhost:8080.

## Como Executar o Projeto
Instale as dependências: Certifique-se de que você possui o dbt e o driver do PostgreSQL instalados.

```bash
pip install dbt-postgres
```
Configure o arquivo `profiles.yml`: Ajuste as configurações de conexão no seu arquivo `profiles.yml` para conectar ao seu banco de dados PostgreSQL.

Execute o dbt: Para rodar os modelos, utilize o comando:

```bash
dbt run
```
Gere a documentação: Para atualizar a documentação, execute:
```bash
dbt docs generate
```

## Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests.

## Licença
Este projeto está licenciado sob a MIT License.

### Instruções

- **Personalize**: Sinta-se à vontade para ajustar as seções conforme necessário, adicionar informações sobre como configurar o ambiente ou detalhes específicos sobre o projeto.
- **Salve**: Coloque esse conteúdo em um arquivo chamado `README.md` na raiz do seu projeto no GitHub.

Se precisar de mais alguma coisa, é só avisar!