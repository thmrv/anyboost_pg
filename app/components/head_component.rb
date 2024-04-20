# frozen_string_literal: true

class HeadComponent < ViewComponent::Base
  def initialize(pageTitle:, disableMasthead:)
    @pageTitle = pageTitle
    @disableMasthead = disableMasthead
  end
end
