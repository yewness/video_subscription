class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit]

	def index
		@users = User.all
	end

	def show
	end

	def edit
	end

	def update
	    @user = User.find(params[:id])
	    if @user.update(user_params)
	      @users = User.all
	      render 'index'
	    else
	      render 'edit'
        end
    end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      	@user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :category_id)
    end
end