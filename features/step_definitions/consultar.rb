Dado('entro no site') do
    @home = PaginaInicial.new 
    @home.load
    sleep(5)
    
 end
 
 Quando('realizo login') do
   @login_page = LoginPage.new
   @login_page.verifica_login
   @login_page.digito_usuario
   @login_page.digito_senha
   @login_page.clicar_login
   @login_page.verifica_login_feito

end

E('pesquiso produto') do
    @consultar_page = ConsultarPage.new
    @consultar_page.fazer_pesquisa
end

Entao('valido produto valido') do 
    @consultar_page = ConsultarPage.new
    @consultar_page.validacao_produto
end
