require './app/services/base_service.rb'

class SsrService < BaseService
    def self.render_extras(game)
        @game = game
        render(GameExtrasComponent.new(extra: Extra.where(:game_id => @game.id), game_id: @game.id))
    end

    def self.render_service(service)
        @service = service
        return ServiceSectionComponent.new(service: @service, type: @service.service_type, service_id: 1, fields: Field.where(:service_id => @service.id).to_a)
    end
end
