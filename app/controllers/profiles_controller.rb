class ProfilesController < ApplicationController
  before_filter :find_profile

  def show
  end

  def edit
  end

  def update
    @profile.write_attributes(params[:user][:profile])
    flash[:notice] = "Your profile has been updated!"
    redirect_to :root
  end

  private
    def find_profile
      @profile = current_user.profile
    end
end
