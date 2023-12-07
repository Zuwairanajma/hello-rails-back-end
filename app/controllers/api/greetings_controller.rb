class Api::GreetingsController < ApplicationController
  def random
    @greeting = Message.order('RANDOM()').first
    render json: { greeting: @greeting&.content }
  end
  # def random
  #   @greeting = Message.all.sample

  #   render json: @greeting
  # end
end
