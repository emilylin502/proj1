class TrainersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @pokemons=Pokemon.all
    @trainer = Trainer.find(params[:id])
  end



end
