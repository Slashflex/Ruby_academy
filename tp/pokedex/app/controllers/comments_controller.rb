class CommentsController < ApplicationController
  def index
  end

  def create
    # binding.pry 

    @comment = 
      Comment.create comment_params.merge(
        user_id: @current_user.id
      )
      if @comment.save
        flash[:info] = 'VICTORY !'
        redirect_to request.referrer || root_path
      else
        flash[:info] = "Erreur lors de l'envoi du commentaire !"
        redirect_to request.referrer
      end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @current_user && @current_user.id == @comment.user_id
      @comment = Comment.find(params[:id])
      if @comment.update comment_params
        flash[:info] = 'Commentaire mise à jour'
        redirect_to "/pokemons/#{@comment.pokemon_id}" || root_path
      else
        flash[:info] = 'Echec lors de la mise à jour de votre commentaire'
        redirect_to request.referrer
      end
    else
      stop
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    flash[:info] = 'Commentaire supprimé !'
    redirect_to request.referrer || root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :pokemon_id)
  end

end
