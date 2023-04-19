class ProfileController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :username, :about_me)
  end
end