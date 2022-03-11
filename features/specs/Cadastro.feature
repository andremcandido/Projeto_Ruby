#language: pt


@Realizar_Cadastro
Funcionalidade: Realizar Cadastro

Cenario: Realizar Cadastro com sucesso
Dado eu abro o site
Quando clico no usuario
E seleciono opção novo cadastro
E preencho informações de cadastro
E clico em registrar
Entao realizo cadastro com sucesso


Cenario: Realizar Cadastro com falha
Dado entro no link
Quando seleciono usuario
E clico na opção novo cadastro
E preencho informações de cadastro incompleto
Entao validacao email incompleto