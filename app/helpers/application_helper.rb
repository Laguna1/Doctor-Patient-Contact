# frozen_string_literal: true

module ApplicationHelper
  def book
    @user = User.find(params[:id])
    current_user.doctors << @user
    redirect_back(fallback_location: user_path(@user))
  end

  def unbook
    @user = User.find(params[:id])
    current_user.doctor_relationships.find_by(doctor_id: @user.id).destroy
    redirect_back(fallback_location: user_path(@user))
  end

  #     def create
  #         @user = User.find_by! fullname: params[:fullname]
  #         if current_user.book_doctor @user.id
  #           respond_to do |format|
  #             format.html { redirect_to root_path }
  #           end
  #         end
  #       end

  #       def destroy
  #         @user = User.find_by! fullname: params[:fullname]
  #         if current_user.unbook_doctor @user.id
  #           respond_to do |format|
  #             format.html { redirect_to root_path }
  #           end
  #         end

  #   end

  #   private
end
