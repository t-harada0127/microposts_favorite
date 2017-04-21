class FavoritesController < ApplicationController
  def create
    post = Micropost.find(params[:micropost_id])
    current_user.favorite(post)
    flash[:success] = 'お気に入りに追加しました'
    redirect_to user
  end

  def destroy
    post = Micropost.find(params[:micropost_id])
    current_user.unfavorite(post)
    flash[:success] = 'お気に入りから削除しました'
    redirect_to user
  end

end
