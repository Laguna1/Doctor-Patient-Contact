class RelationshipsController < ApplicationController
  def create
    @user = User.find_by! fullname: params[:fullname]
    if current_user.book_doctor @user.id
      respond_to do |format|
        format.html { redirect_to root_path }
      end
    end
  end

  def destroy
    @user = User.find_by! fullname: params[:fullname]
    if current_user.unbook_doctor @user.id
      respond_to do |format|
        format.html { redirect_to root_path }
      end
    end
  end

  private
end
