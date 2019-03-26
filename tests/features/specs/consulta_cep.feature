#language: pt
@buscando_enderecos
Funcionalidade: Buscar Endereco
    Cenario: Buscar Endereco com sucesso
        Dado que envio solicitacao de endereco com o cep "04055041"
        Entao retorna o codigo do ibge "3550308"
    
    Cenario: Buscar Endereco invalido
        Dado que envio solicitacao de endereco com o cep "5412154"
        Entao retorna o codigo de falha 400

