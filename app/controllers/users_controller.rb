class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to user_path(user.id), notice: 'You have updated user successfully.'
    else
      render  :edit
    end
  end

  def index
    @user = current_user
    @users = User.all
  end

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
