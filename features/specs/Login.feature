#language: pt


@login
Funcionalidade: Fazer Login

Cenario: Fazer Login com sucesso
Dado  acessar o site
Quando  aperto em login
E  insiro login
E  insiro um password
E  clico em realizar login
Entao realizo o login com sucesso


Cenario: Fazer Login com erro
Dado  inicia o site
Quando escolho login
E  informo login
E  insiro um password errado
E  aperto em logi
Entao  apresenta mensagem de erro