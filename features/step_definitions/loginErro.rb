Dado('inicia o site') do
    @home = PaginaInicial.new 
    @home.load
    sleep(5)
    
 end
 
 Quando('escolho login') do
   @login_page = LoginPage.new
   @login_page.verifica_login

end
   

E('informo login') do
   @login_page = LoginPage.new
   @login_page.digito_usuario

end
 
E('insiro um password errado') do
   @login_page = LoginPage.new
   @login_page.senha_errada

end

E('aperto em logi') do
   @login_page = LoginPage.new
   @login_page.clicar_login

end
   

Entao('apresenta mensagem de erro') do
   @login_page = LoginPage.new
   @login_page.validar_erro

end