class ConsultarPage < SitePrism::Page

    element :lupa_pesquisa, :xpath, "//div[@id='search']"
    element :search, :xpath, "//input[@name='mobile_search']"
    element :click_lupa, "svg[id='menuSearch']"
    
  
    
    
#    element :validar_produto, :xpath, "//a[@class='productName ng-binding']"
  
  
    def fazer_pesquisa
        search.send_keys("headphone")
        click_lupa.click
        sleep(5)

    end

    def validacao_produto
        find("a[class='titleItemsCount ng-binding']")
        sleep(5)
    end

    def pesquisa_invalida
        search.send_keys("ps5")
        click_lupa.click
        sleep(5)

    end

    def validacao_invalido
        find("span[class='ng-binding']")
        sleep(5)
    end

end