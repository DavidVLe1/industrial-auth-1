class UsersController < ApplicationController
  before_action :set_user, only: %i[ show liked feed followers following discover ]
  before_action {authorize @user || User}
  def feed
     @user
  end

  def discover
     @user
  end
  def show
     @user 
  end

  def liked
     @user
  end


  private

    def set_user
      if params[:username]
        @user = User.find_by!(username: params.fetch(:username))
      else
        @user = current_user
      end
    end
end
