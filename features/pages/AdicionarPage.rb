class AdicionarPage < SitePrism::Page

    element :headphones, :xpath, "//div[@id='headphonesImg']"
    element :primeiro_head, :xpath, "//img[@id='15']"
    element :adicionar_carrinho, :xpath, "//button[@translate='ADD_TO_CART']"
    element :clicar_carrinho, :xpath, "//a[@id='shoppingCartLink']"
    element :botao_remover_item, :xpath, "//a[@class='remove red ng-scope']"
    element :botao_checkout, :xpath, "//button[@id='checkOutButton']"
    element :botao_next, :xpath, "//button[@id='next_btn']"
#    element :safepay_user, :xpath, "//input[@name='safepay_username']"
 #   element :safepay_pass, :xpath, "//input[@name='safepay_password']"
    element :pay_now, :xpath, "//button[@id='pay_now_btn_SAFEPAY']"

    def clico_fones
        headphones.click
        sleep(5)

    end


    def clicar_primeira_opcao
        primeiro_head.click
        sleep(5)
        
    end


    def adicionar_ao_carrinho
        adicionar_carrinho.click
        sleep(5)

    end


    def carrinho_compras
        clicar_carrinho.click
        sleep(5)
        find(:xpath, "//div[@id='shoppingCart']")

    end


    def remover_item_carrinho
        botao_remover_item.click
        sleep(5)

    end

    
    def confirmar_item_removido
        page.has_text?('Your shopping cart is empty')
        sleep(3)
        
    end

    def realizar_checkout
        botao_checkout.click
        sleep(5)
    end

    def next
        botao_next.click
        sleep(5)
    end

    def nome_pagamento
        safepay_user.send_keys("borapagar")
        sleep(3)
    end

    def senha_pagamento
        safepay_pass.send_keys("!Borap4gar")
        sleep(3)
    end

    def concluir_pagamento
        pay_now.click
        sleep(5)
    end

    def validar_pagamento
        find("span[class='roboto-regular ng-scope']")
    end

end