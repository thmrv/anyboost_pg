module Util; end
    class Util::SsrController < ::ApplicationController
        skip_before_action :verify_authenticity_token
        def extras
            @game = Game.where(:id => params[:game_id]).first
            return render html: SsrService.render_extra(@game)
        end

        def service
            @service = Service.where(:id => params[:service_id]).first
            return render html: SsrService.render_service(@service)
        end
    end
