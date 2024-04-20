require 'dotenv/load'
Dotenv.load('setup.env')

require './app/services/game_service.rb'

class DefaultController < ApplicationController
  def welcome
    @games = GameService.getAllGameData()
    @extra = GameService.getAllExtraData()
    @services = GameService.getAllServiceData()
    @fields = GameService.getAllFieldData()
    @title = "#{t('site.name')}#{' - '}#{t('site.description')}"
  end
end
