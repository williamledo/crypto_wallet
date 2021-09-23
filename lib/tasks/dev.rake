namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?

      show_spinner("Apagando DB...") {%x(rails db:drop)}  # OU do %x(rails db:drop) end
      show_spinner("Criando DB...") {%x(rails db:create)}
      show_spinner("Migrando DB...") {%x(rails db:migrate)}
      %x(rails dev:add_coins)
      %x(rails dev:add_mining_type)

    else
      puts "Você não está em modo de desenvolvimento"
    end
  end

  desc "Cadastra as moedas"
  task add_coins: :environment do

    show_spinner("Cadastrando moedas...") do

    coins= [
    
        {description: "Bitcoin",
        acronym: "BTC",
        url_image: "https://imagensemoldes.com.br/wp-content/uploads/2020/09/Logo-Bitcoin-PNG.png"
        },
    
    
        {description: "Ethereum",
        acronym: "ETH",
        url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png/768px-ETHEREUM-YOUTUBE-PROFILE-PIC.png"
        },
    
    
        {description: "Dash",
        acronym: "DASH",
        url_image: "https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/dash_dashcoin-512.png"
        },
    
        {description: "Iota",
        acronym: "IOT",
        url_image: "https://cryptologos.cc/logos/iota-miota-logo.png"
        },
    
        {description: "ZCash",
        acronym: "ZEC",
        url_image: "https://img1.gratispng.com/20180329/dbe/kisspng-zcash-cryptocurrency-zerocoin-blockchain-initial-c-crypt-5abcb4f715dfc2.7068541215223165350896.jpg"
        }
    
        ]
    
        coins.each do |coin|
            Coin.find_or_create_by!(coin)
        end
    end
  end


  desc "Cadastra tipos de mineração"
  task add_mining_type: :environment do 
    show_spinner("Cadastrando tipos de mineração...")do
    mining_types = [

      {description: "Prof ow Work", acronym: "PoW"},
      {description: "Proof of Stake", acronym: "PoS"},
      {description: "Proof of Capacity", acronym: "PoC"}

      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
       end
    end
  end


  private

  def show_spinner(msg_start, msg_end = "Concluído!")

    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("#{msg_end}")

  end

end
