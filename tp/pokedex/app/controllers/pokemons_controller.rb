class PokemonsController < ApplicationController
  
  def index
    @pokemons = Pokemon.page(params[:page]).per(4)
    @pokemon = Pokemon.new
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @comment = Comment.new
  end

  def create
    @pokemon = Pokemon.create sanitized_pokemon_params
    if @pokemon.save
      flash[:info] = 'Pokémon enregistré !'
      redirect_to request.referrer || root_path
    else
      flash[:info] = 'Pokémon non enregistré !'
      redirect_to request.referrer
    end
  end

  def update
    @pokemon = Pokemon.find(params[:id])
    if @current_user && @current_user.id == @pokemon.user_id
      if @pokemon.update pokemon_params
        flash[:info] = 'Pokémon mise à jour'
        redirect_to request.referrer || root_path
      else
        flash[:info] = 'Echec de la mise à jour'
        render 'show'
      end
    else
      stop
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    if @current_user && @current_user.id == @pokemon.user_id
      @pokemon_delete = Pokemon.find(params[:id]).destroy
      flash[:info] = 'Pokémon retiré du pokédex'
      redirect_to '/pokemons' || root_path
    else
      stop
    end
  end

  private
  
  def pokemon_params
    defaults = { user_id: @current_user.id}
    params.require(:pokemon).permit(:name, :content, :type_id, :image , :user_id).reverse_merge(defaults)
  end

  def sanitized_pokemon_params
    sanitized = {}

    pokemon_params.each do |key, value|
      next if key == 'name'
      sanitized[key] = value
    end

    sanitized['name'] = pokemon_params[:content].capitalize
    sanitized
  end

end
