# frozen_string_literal: true

class CalculatorInputComponent < ViewComponent::Base
    def initialize(label:, name:, type:, classname:, rank: false, defaultValue: 0, substructValue: '200', addValue: '200')
        @label = label
        @name = name
        @type = type
        @classname = classname
        @rank = rank
        @defaultValue = defaultValue
        @substructValue = substructValue
        @addValue = addValue
      end
end