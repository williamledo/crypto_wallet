module ApplicationHelper

    def data_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end
    
    def nome_aplicacao
        "CRIPTO WALLET APP"
    end
    
    def nome_ambiente
        
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "Produção"
        else 
            "Teste"
        end
    end
end
