class RemoverPage < SitePrism::Page

    element :botao_clicar_carrinho, :xpath, "//a[@id='shoppingCartLink']"
    element :botao_remover_carrinho, :xpath, "//a[@class='remove red ng-scope']"

    def clicar_carrinho
        botao_clicar_carrinho.click
        sleep(5)
        
    end

    def remover_carrinho
        botao_remover_carrinho.click
        sleep(5)
        
    end
end