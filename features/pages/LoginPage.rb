class LoginPage < SitePrism::Page

    element :nome, "input[name='username']"
    element :senha, "input[name='password']"
    element :botaologin, :xpath, "//button[@id='sign_in_btnundefined']"
    element :botaousuario, :xpath, "//a[@id='menuUserLink']"
     element :botaologout, :xpath, "//label[@ng-click='signOut($event)']"

    def clicar_usuario
        botaousuario.click
        sleep(5)

    end
 
 
    def verifica_login
         @home = LoginPage.new
         @home.clicar_usuario
         find('span[class="facebook ng-scope"]')
 
    end
 
 
    def verifica_login_feito
         @home = LoginPage.new
         @home.clicar_usuario
         find('label[translate="My_account"]')

    end
 
 
    def clicar_login
         botaologin.click
         sleep(5)

    end
 
 
    def digito_usuario
         nome.send_keys('Barrigudo')
         sleep(3)

    end
 
 
    def digito_senha
         senha.send_keys('Abc123')
         sleep(3)

    end 

    def senha_errada
          senha.send_keys('abc123')
          sleep(3)
    end

    def validar_erro
          find('label[id="signInResultMessage"]')
    end

    def clicar_logout
          botaologout.click
          sleep(5)
     end

     def validar_logout
          @home = LoginPage.new
          @home.verifica_login
     end

end