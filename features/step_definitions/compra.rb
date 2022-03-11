Dado('abrir o link do site') do
    @home = PaginaInicial.new 
    @home.load
    sleep(5)
    
 end
 
 Quando ('seleciono para logar') do
   @login_page = LoginPage.new
   @login_page.verifica_login
   @login_page.digito_usuario
   @login_page.digito_senha
   @login_page.clicar_login
   @login_page.verifica_login_feito
   
end


E ('clico em headset') do
   @carrinho_page = AdicionarPage.new
   @carrinho_page.clico_fones

end


E ('aperto no primeiro headset') do
   @carrinho_page = AdicionarPage.new
   @carrinho_page.clicar_primeira_opcao

end


Entao ('incluo ao carrinho') do
   @carrinho_page = AdicionarPage.new
   @carrinho_page.adicionar_ao_carrinho

end

E ('abro o carrinho') do
    @carrinho_page = AdicionarPage.new
    @carrinho_page.carrinho_compras
end

E ('realizo o checkout') do 
    @carrinho_page = AdicionarPage.new
    @carrinho_page.realizar_checkout
    @carrinho_page.next

end

Entao ('confirmo pagamento') do
    @carrinho_page = AdicionarPage.new
    @carrinho_page.concluir_pagamento
    @carrinho_page.validar_pagamento
end

