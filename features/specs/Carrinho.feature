#language: pt


@Adicionar

Funcionalidade: Adicionar e Remover Produto
Cenario: Adicionar Produto
Dado  abrir o site
Quando  seleciono em login
E clico nos fones
E aperto no primeiro produto
Entao adiciono ao carrinho

@Remover
Cenario: Remover Produto

Dado  janela do site
Quando  pressiono em login
E  preencho login
E aperto no carrinho
Entao removo do carrinho

@compra
Cenario: Comprar produto
Dado  abrir o link do site
Quando  seleciono para logar
E clico em headset
E aperto no primeiro headset
E incluo ao carrinho
E abro o carrinho
E realizo o checkout
Entao confirmo pagamento