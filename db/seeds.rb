# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Administrators

#Administrator.create(email: "admin", password: "anyboostadminpassword391", first_name: "Admin", last_name: "User").save(validate: false)

# Games

Game.find_or_create_by(enabled: true, pickable: true, name: 'COUNTER-STRIKE', logo_url: 'icon_cs.svg', preview_image_url: 'configurator_illustration_cs.png', rating_type: 'mix')
Game.find_or_create_by(enabled: true, pickable: true, name: 'VALORANT', logo_url: 'icon_valorant.svg', preview_image_url: 'configurator_illustration_valorant.png', rating_type: 'rank')
Game.find_or_create_by(enabled: true, pickable: false, name: 'OVERWATCH', logo_url: 'icon_ow.svg', preview_image_url: 'configurator_illustration_ow.png', rating_type: 'elo')
Game.find_or_create_by(enabled: true, pickable: false, name: 'DOTA 2', logo_url: 'icon_d2.svg', preview_image_url: 'configurator_illustration_d2.png', rating_type: 'rank')
Game.find_or_create_by(enabled: true, pickable: false, name: 'LEAGUE OF LEGENDS', logo_url: 'icon_lol.svg', preview_image_url: 'configurator_illustration_lol.png', rating_type: 'rank')

# Services

Service.find_or_create_by(name: 'PREMIER', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, service_type: 'elo')
Service.find_or_create_by(name: 'PREMIER Calibration', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, service_type: 'game')
Service.find_or_create_by(name: 'By Rank', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, service_type: 'rank')
Service.find_or_create_by(name: 'By Wins', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, service_type: 'win')
Service.find_or_create_by(name: 'Teammates', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, service_type: 'rank')
Service.find_or_create_by(name: 'Teammates By Wins', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, service_type: 'win')
Service.find_or_create_by(name: 'Teammates Calibration', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, service_type: 'game')
Service.find_or_create_by(name: 'Faceit By Level', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, service_type: 'faceit_level')
Service.find_or_create_by(name: 'Faceit By Wins', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, service_type: 'faceit_win')
Service.find_or_create_by(name: 'Faceit By ELO', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, service_type: 'faceit_elo')
Service.find_or_create_by(name: 'Faceit Calibration', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, service_type: 'faceit_game')

Service.find_or_create_by(name: 'By Rank Rating', game_id: Game.where(:name => 'VALORANT').first.id, service_type: 'faceit_game')

# Fields

Field.find_or_create_by(name: 'valorant_rr', label: 'Rank Rating', service_id: Service.where(:game_id => (Game.where(:name => 'VALORANT').first.id)).first.id, field_type: 'rating', delta: 0, price_default: 0)

# Extras

Extra.find_or_create_by(name: 'Lobby', label: '', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, price_modifier: 0.2)
Extra.find_or_create_by(name: 'Solo', label: '', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, price_modifier: 0.55)
Extra.find_or_create_by(name: 'High Priority', label: '', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, price_modifier: 0.25)
Extra.find_or_create_by(name: 'Speed Up This Order', label: '', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, price_modifier: 0.6)
Extra.find_or_create_by(name: 'Stream / Realtime Video Feed', label: '', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, price_modifier: 0.15)
Extra.find_or_create_by(name: 'Set Steam Offline', label: '', game_id: Game.where(:name => 'COUNTER-STRIKE').first.id, price_modifier: 0)

Extra.find_or_create_by(name: 'Play With Booster', label: '', game_id: Game.where(:name => 'VALORANT').first.id, price_modifier: 0.2)
Extra.find_or_create_by(name: 'Priority Order', label: '', game_id: Game.where(:name => 'VALORANT').first.id, price_modifier: 0.25)
Extra.find_or_create_by(name: 'Express Order', label: '', game_id: Game.where(:name => 'VALORANT').first.id, price_modifier: 0.6)
Extra.find_or_create_by(name: 'Stream', label: '', game_id: Game.where(:name => 'VALORANT').first.id, price_modifier: 0.15)
Extra.find_or_create_by(name: 'Set Steam Offline', label: '', game_id: Game.where(:name => 'VALORANT').first.id, price_modifier: 0)
