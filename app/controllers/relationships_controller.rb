class RelationshipsController < ApplicationController
  before_action :logged_in_user

  def create
    @user = User.find(params[:coachee_id])
    current_user.coach(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).coachee
    current_user.uncoach(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end
