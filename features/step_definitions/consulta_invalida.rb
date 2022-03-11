Dado('abro neste link') do
    @home = PaginaInicial.new 
    @home.load
    sleep(5)
    
 end
 
 Quando('realizo log') do
   @login_page = LoginPage.new
   @login_page.verifica_login
   @login_page.digito_usuario
   @login_page.digito_senha
   @login_page.clicar_login
   @login_page.verifica_login_feito

end

E('pesquiso produto invalido') do
    @consultar_page = ConsultarPage.new
    @consultar_page.pesquisa_invalida
end

Entao('valido produto invalido') do 
    @consultar_page = ConsultarPage.new
    @consultar_page.validacao_invalido
end
