class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @book = Book.new 新規登録フォームのアクション定義
    # @books = @user.books
  end

  def edit
  end
end
