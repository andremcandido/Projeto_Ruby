class CadastroPage < SitePrism::Page
    
    element :botao_cadastro, :xpath, "//a[@translate='CREATE_NEW_ACCOUNT']"
    element :nome, :xpath, "//input[@name='usernameRegisterPage']"
    element :email, :xpath, "//input[@name='emailRegisterPage']"
    element :senha, :xpath, "//input[@name='passwordRegisterPage']"
    element :confirma_senha, :xpath, "//input[@name='confirm_passwordRegisterPage']"
    element :primeiro_nome, :xpath, "//input[@name='first_nameRegisterPage']"
    element :sobrenome, :xpath, "//input[@name='last_nameRegisterPage']"
    element :numero_cel, :xpath, "//input[@name='phone_numberRegisterPage']"
    element :cidade, :xpath, "//input[@name='cityRegisterPage']"
    element :pais, :xpath, "//option[@label='Andora']"
    element :endereco, :xpath, "//input[@name='addressRegisterPage']"
    element :estado, :xpath, "//input[@name='state_/_province_/_regionRegisterPage']"
    element :codigo_postal, :xpath, "//input[@name='postal_codeRegisterPage']"    
    element :botao_termos, :xpath, "//input[@name='i_agree']"
    element :botao_registro, :xpath, "//button[@id='register_btnundefined']"


    def clico_botao_cadastro
        botao_cadastro.click
        sleep(5)

    end


    def preencho_usuario_nome
        nome.send_keys('teste8164')
        sleep(3)

    end


    def preencho_email
        email.send_keys('teste8164@gmail.com')
        sleep(3)

    end


    def preencho_senha
        senha.send_keys('Teste8160')
        sleep(3)

    end


    def preencho_confirma_senha
        confirma_senha.send_keys('Teste8160')
        sleep(3)

    end


    def preencho_nome
        primeiro_nome.send_keys('Testador')
        sleep(3)

    end
    

    def preencho_sobrenome
        sobrenome.send_keys('Junior')
        sleep(3)

    end
    

    def preencho_numero
        numero_cel.send_keys('61 999995879')
        sleep(3)

    end


    def preencho_cidade
        cidade.send_keys('Brasilia')
        sleep(3)

    end

    def preencho_pais
        pais.click
        sleep(3)

    end


    def preencho_endereco
        endereco.send_keys('Qnp 34')
        sleep(3)

    end


    def preencho_estado
        estado.send_keys('DF')
        sleep(3)

    end


    def preencho_codigo_postal
        codigo_postal.send_keys('72236410')
        sleep(3)

    end


    def clico_botao_termos
        botao_termos.click
        sleep(3)

    end


    def clico_botao_registro
        botao_registro.click
        sleep(5)

    end

    def email_incompleto
        email.send_keys('asdasdad')
        sleep(3)
    end
    
end