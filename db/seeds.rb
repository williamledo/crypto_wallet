# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Coin.create!(
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://img2.gratispng.com/20180604/zya/kisspng-bitcoin-com-cryptocurrency-logo-zazzle-kibuba-btc-5b15aa1f157d09.468430171528146463088.jpg"
)

Coin.create!(
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png/768px-ETHEREUM-YOUTUBE-PROFILE-PIC.png"
)

Coin.create!(
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://lh3.googleusercontent.com/proxy/fKw5cgajBFIqbEYFOa_4BtVNWFGhfisIoOE4zFjwbg_ESj-Q5VwHzUkAT9hgPKE7cI5b3aOsILo6zyntkfxt9OmR"
)

puts "Moedas cadastradas com sucesso!"