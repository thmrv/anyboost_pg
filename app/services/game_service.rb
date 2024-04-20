
require './app/services/base_service.rb'

class GameService < BaseService
    def self.getAllGameData() 
        @games = Game.all.where(:enabled => true)
        return @games
    end

    def self.getGameData(game_id) 
        return Game.get(game_id)
    end

    def self.getFieldData(game_id)
        return Field.all.where(:game_id => game_id)
    end

    def self.getExtraData(game_id)
        return Extra.all.where(:game_id => game_id)
    end

    def self.getAllExtraData()
        return Extra.all
    end

    def self.getAllServiceData()
        return Service.all
    end

    def self.getAllFieldData()
        return Field.all
    end

    def self.getServiceData(game_id)
        self.getAllGameData().each do |game|
            return Service.all.where(:game_id => game.id)
        end
    end
end
