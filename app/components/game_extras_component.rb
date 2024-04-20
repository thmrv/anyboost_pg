# frozen_string_literal: true

class GameExtrasComponent < ViewComponent::Base
    def initialize(extra:, game_id:)
        @extra = extra
        @game_id = game_id
    end
end
