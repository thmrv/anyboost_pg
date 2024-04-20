# frozen_string_literal: true

class InputComponent < ViewComponent::Base
  def initialize(label:, name:, type:, classname:, rank: false, defaultValue: 0, substructValue: '200', addValue: '200', field_type:)
    @label = label
    @name = name
    @type = type
    @classname = classname
    @defaultValue = defaultValue
    @substructValue = substructValue
    @addValue = addValue
    @field_type = field_type
  end

end
