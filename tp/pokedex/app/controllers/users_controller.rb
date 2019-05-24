class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def list_user
    if @current_user && @current_user.role.name == "admin"
    @users = User.all
    else
      stop
    end
  end

  def create
    @user = User.create user_params
    if @user.save
      flash[:info] = "Votre compte à bien été enregistré"
      redirect_to root_path
    else
      flash[:info] = "Erreur lors de l'enregistrement de votre compte"
      render 'index'
    end
  end

  def login
  end

  def logout
    if @current_user
    session[:user_id] = nil
    flash[:info] = "Vous êtes maintenant déconnecté."
    redirect_to root_path
    end
  end

  def check
    @current_user = User.where(login:params[:login], password:params[:password]).first
    if @current_user
      session[:user_id] = @current_user.id
      flash[:info] = "Connexion réussit"
      redirect_to root_path
    else
      session[:user_id] = nil
      flash[:info] = "Erreur de connexion"
      render 'login'
    end
      

  end

end
