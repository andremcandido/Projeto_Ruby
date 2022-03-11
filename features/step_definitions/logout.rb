Dado('acesso o site') do
    @home = PaginaInicial.new 
    @home.load
    sleep(5)
    
 end
 
 Quando('click em login') do
   @login_page = LoginPage.new
   @login_page.verifica_login

end
   

E('realizo o login') do
   @login_page = LoginPage.new
   @login_page.digito_usuario
   @login_page.digito_senha
   @login_page.clicar_login

end

E('clico no user') do
   @login_page = LoginPage.new
   @login_page.clicar_usuario

end
   

Entao('seleciono logout') do
   @login_page = LoginPage.new
   @login_page.clicar_logout
   @login_page.validar_logout

end