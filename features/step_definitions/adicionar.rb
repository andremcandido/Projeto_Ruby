Dado('abrir o site') do
    @home = PaginaInicial.new 
    @home.load
    sleep(5)
    
 end
 
 Quando ('seleciono em login') do
   @login_page = LoginPage.new
   @login_page.verifica_login
   @login_page.digito_usuario
   @login_page.digito_senha
   @login_page.clicar_login
   @login_page.verifica_login_feito
   
end


E ('clico nos fones') do
   @carrinho_page = AdicionarPage.new
   @carrinho_page.clico_fones

end


E ('aperto no primeiro produto') do
   @carrinho_page = AdicionarPage.new
   @carrinho_page.clicar_primeira_opcao

end


Entao ('adiciono ao carrinho') do
   @carrinho_page = AdicionarPage.new
   @carrinho_page.adicionar_ao_carrinho
   @carrinho_page.carrinho_compras

end