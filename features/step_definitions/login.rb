Dado('acessar o site') do
    @home = PaginaInicial.new 
    @home.load
    sleep(5)
    
 end
 
 Quando('aperto em login') do
   @login_page = LoginPage.new
   @login_page.verifica_login

end
   

E('insiro login') do
   @login_page = LoginPage.new
   @login_page.digito_usuario

end
 
E('insiro um password') do
   @login_page = LoginPage.new
   @login_page.digito_senha

end

E('clico em realizar login') do
   @login_page = LoginPage.new
   @login_page.clicar_login

end
   

Entao('realizo o login com sucesso') do
   @login_page = LoginPage.new
   @login_page.verifica_login_feito

end