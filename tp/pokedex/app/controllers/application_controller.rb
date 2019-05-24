class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :types
    before_action :current_user
    before_action :list_comments


    private

    def current_user
        if session[:user_id]
            @current_user = User.find(session[:user_id])
        end
    end

    def types
        @types = Type.all 
    end

    def user_params
        defaults = { role_id: 2}
        params.require(:user).permit(:login, :password, :role_id).reverse_merge(defaults)
    end

    def comment_params
        params.require(:comment).permit(:content)
    end

    def list_comments
        @comments = Comment.where(pokemon_id:params[:id])
    end

    def stop
        flash[:info] = "Accès refusé !"
        redirect_to root_path
    end
end
