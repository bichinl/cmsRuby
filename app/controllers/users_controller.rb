class UsersController < ApplicationController
  def index
  	@all = User.all
  	
  end

  def show
  end

  def new
  	@usuario = User.new

  end

  def create
  	
  	@usuario = User.new(user_params)
	@usuario.save
	redirect_to users_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

		def user_params
			params.require(:user).permit(:nombre,:email,:username,:password_digest)
		end
		

end
