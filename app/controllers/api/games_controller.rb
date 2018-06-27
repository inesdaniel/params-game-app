class Api::GamesController < ApplicationController
  def name_action
    @name = params["name"].upcase 
    render "name_view.json.jbuilder"
  end
end
