class PokemonController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save

    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])

    @pokemon.health = @pokemon.health - 10

    if @pokemon.health <= 0
      @pokemon.destroy
    else

      @pokemon.save
    end

    redirect_to @pokemon.trainer
  end
  def new
    @pokemon = Pokemon.new
  end
  def save
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.health = 100
    @pokemon.level = 1
    @pokemon.trainer_id = current_trainer.id
    if @pokemon.save
			redirect_to current_trainer
		else
			redirect_to pokemon_new_path
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end

  end

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
