class AddHealthPokemon < ActiveRecord::Migration
  def change
  	add_column :pokemons, :health, :string
  end
end
