# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spinner = TTY::Spinner.new("[:spinner] Cadastrando Moedas...")
    spinner.auto_spin

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
    }
    ]

    coins.each do |coin|
        Coin.find_or_create_by!(coin)
    end
    

spinner.success("Concluído")