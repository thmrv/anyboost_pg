# frozen_string_literal: true

class ServiceTabsComponent < ViewComponent::Base
    def initialize(services:, game:)
        @services = services
        @game = game
    end
end
