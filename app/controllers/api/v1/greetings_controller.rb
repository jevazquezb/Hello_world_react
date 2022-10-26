class Api::V1::GreetingsController < ApplicationController
  def index
    random_number = rand(Greeting.count)
    @greeting = Greeting.all[random_number].message
    respond_to do |format|
      format.json { render json: @greeting }
    end
  end
end
