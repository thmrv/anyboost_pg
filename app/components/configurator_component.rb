# frozen_string_literal: true

class ConfiguratorComponent < ViewComponent::Base
  def initialize(games: [], extra: [], services: [], fields: [], disablePayment: false)
    @games = games
    @extra = extra
    @fields = fields
    @services = services
    @disablePayment = disablePayment
  end
end