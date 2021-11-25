# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'test@test.com', password: '123456')
User.create!(email: 'testado@test.com', password: '123456')
User.create!(email: 'testando@test.com', password: '123456')

Game.create!(name: 'Coup', category: Game::GAME_CATEGORIES.sample, price: 20.0, number_of_players: '6+', description: 'jogo de blefe', user: User.all.sample)
Game.create!(name: 'Not Alone', category: Game::GAME_CATEGORIES.sample, price: 25.0, number_of_players: '6+', description: 'semi cooperative', user: User.all.sample)
Game.create!(name: 'Alien Frontiers', category: Game::GAME_CATEGORIES.sample, price: 20.0, number_of_players: '4', description: 'Gerenciamento de recursos', user: User.all.sample)
