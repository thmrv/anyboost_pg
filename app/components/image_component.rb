# frozen_string_literal: true

class ImageComponent < ViewComponent::Base
  def initialize(src:, classname:'', href: nil, alt: '', asBackground: false, wrapperclassname: '')
    @src = "#{'assets/'}#{src}"
    @alt = alt
    @asBackground = asBackground
    @href = href
    @classname = classname
    @wrapperclassname = wrapperclassname
  end
end
