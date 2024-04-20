# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  def initialize(href:, style:, contents:, icon: '')
    @href = href
    @style = style
    @contents = sanitize contents
    @icon = icon
  end

end
