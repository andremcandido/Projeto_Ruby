Dado('entro no link') do
    @home = PaginaInicial.new 
    @home.load
    sleep(5)
    
 end
 
 Quando('seleciono usuario') do
    @login_page = LoginPage.new
    @login_page.verifica_login
 
 end
  
 
 E('clico na opção novo cadastro') do
    @cadastro_page = CadastroPage.new
    @cadastro_page.clico_botao_cadastro
 
 end
 
 
 E('preencho informações de cadastro incompleto') do
    @cadastro_page = CadastroPage.new
    @cadastro_page.preencho_usuario_nome
    @cadastro_page.email_incompleto
    @cadastro_page.preencho_senha
    @cadastro_page.preencho_confirma_senha
    @cadastro_page.preencho_nome
    @cadastro_page.preencho_sobrenome
    @cadastro_page.preencho_numero
    @cadastro_page.preencho_cidade
    @cadastro_page.preencho_pais
    @cadastro_page.preencho_endereco
    @cadastro_page.preencho_estado
    @cadastro_page.preencho_codigo_postal
    @cadastro_page.clico_botao_termos
 
 end
 
   Entao('validacao email incompleto') do
    @login_page = LoginPage.new
    find("[class='animated invalid']")
 
 end