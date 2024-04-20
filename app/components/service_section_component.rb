# frozen_string_literal: true

class ServiceSectionComponent < ViewComponent::Base
  def initialize(service:, fields:, service_id:, type:)
    @service = service
    @fields = fields
    @service_id = service_id
    @type = type
  end
end
