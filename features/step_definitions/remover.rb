Dado('janela do site') do
    @home = PaginaInicial.new 
    @home.load
    sleep(5)
    
 end
 
 Quando('pressiono em login') do 
    @home = LoginPage.new
    @home.verifica_login
 end
 
 E ('preencho login') do
    @home = LoginPage.new
    @home.digito_usuario
    @home.digito_senha
    @home.clicar_login
 end
  
 E ('aperto no carrinho') do
    @home = RemoverPage.new
    @home.clicar_carrinho
 end

 Entao ('removo do carrinho') do
    @home = RemoverPage.new
    @home.remover_carrinho
 end