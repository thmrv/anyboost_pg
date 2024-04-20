# frozen_string_literal: true

class SwitchComponent < ViewComponent::Base
  def initialize(defaultValue:)
    @defaultValue = defaultValue
  end
end
