class TrainersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

    @pokemons = Array.new()
    all_pokemons = Pokemon.all 
    all_pokemons.each do |p|
        if p.trainer_id == @trainer.id
            @pokemons.push(p)
        end
    end

end
