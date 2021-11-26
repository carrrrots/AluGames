require "open-uri"
Game.destroy_all
User.destroy_all

User.create!(email: 'rodrigovazmaster@hotmail.com', password: '123456')
User.create!(email: 'rodrigomasterporto@hotmail.com', password: '123456')
User.create!(email: 'carolmaster@hotmail.com', password: '123456')
User.create!(email: 'alyssagcmaster@hotmail.com', password: '123456')


game = Game.create!(name: 'Coup', category: Game::GAME_CATEGORIES.sample, price: 30.00, number_of_players: '6+', description: 'In Coup, you want to be the last player with influence in the game. Influence is represented by face-down character cards in your play area.
Each player starts the game with two coins and two influences - that is, two character cards face down, the deck of fifteen consists of three copies of five different characters, each with a unique set of powers: duke, assassin, countess, captain and ambassador.
On your turn, you can have any of the actions listed for each character, regardless of which characters you actually have in front of you.', user: User.all.sample)
file = URI.open("https://target.scene7.com/is/image/Target/GUEST_53c57f21-35cc-4e74-9bc8-ca035fbdf776?wid=488&hei=488&fmt=pjpeg")
game.photo.attach(io: file, filename: 'coup.jpg', content_type: 'image/jpg')

game = Game.create!(name: 'Not Alone', category: Game::GAME_CATEGORIES.sample, price: 25.00, number_of_players: '6+', description: 'semi cooperative', user: User.all.sample)
file = URI.open("https://m.media-amazon.com/images/I/91JTKW1zmWS._AC_SY879_.jpg")
game.photo.attach(io: file, filename: 'notalone.jpg', content_type: 'image/jpg')

game = Game.create!(name: 'Alien Frontiers', category: Game::GAME_CATEGORIES.sample, price: 20.00, number_of_players: '5', description: 'Alien Frontiers is a game of resource management and planetary development for two to four players. During the game you will utilize orbital facilities and alien technology to build colony domes in strategic locations to control the newly discovered world.', user: User.all.sample)
file = URI.open("https://m.media-amazon.com/images/I/51X2pziHssL._AC_.jpg")
game.photo.attach(io: file, filename: 'alien.jpg', content_type: 'image/jpg')

game = Game.create!(name: 'Catan', category: Game::GAME_CATEGORIES.sample, price: 50.00, number_of_players: '4', description: 'Catan Board Game Extension Allowing a Total of 5 to 6 Players for The Catan Board Game | Family Board Game | Board Game for Adults and Family | Adventure Board Game | Made by Catan Studio ', user: User.all.sample)
file = URI.open("https://m.media-amazon.com/images/I/61cZrRZQE1L._AC_SX425_.jpg")
game.photo.attach(io: file, filename: 'catan.jpg', content_type: 'image/jpg')

game = Game.create!(name: 'War', category: Game::GAME_CATEGORIES.sample, price: 30.00, number_of_players: '6', description: 'Arguably one of the most popular board games in Brazil, War is a modified version of Risk, using concepts that were later introduced to the original game, like objective cards. The players maneuver armies on a world map, trying to conquer continents, and trying to fulfill their objectives.', user: User.all.sample)
file = URI.open("https://growwar.s3-sa-east-1.amazonaws.com/growgames/Content/img/novoLayout/samples/slide-war1.jpg")
game.photo.attach(io: file, filename: 'war.jpg', content_type: 'image/jpg')

game = Game.create!(name: 'Smash up', category: Game::GAME_CATEGORIES.sample, price: 45.00, number_of_players: '6', description: 'Alderac Entertainment Group (AEG) Smash Up', user: User.all.sample)
file = URI.open("https://m.media-amazon.com/images/I/616QnXyA-9L._AC_.jpg")
game.photo.attach(io: file, filename: 'smashup.jpg', content_type: 'image/jpg')
