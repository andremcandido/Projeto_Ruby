#language: pt


@Consultar_Produto
Funcionalidade: Consulto produto válido

Cenario: Realizar consulta de produto válido
Dado entro no site
Quando  realizo login
E  pesquiso produto
Entao valido produto valido

Cenario: Consulto produto inválido
Dado  abro neste link
Quando  realizo log
E  pesquiso produto invalido
Entao valido produto invalido