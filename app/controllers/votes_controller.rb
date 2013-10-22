class VotesController < ApplicationController
  before_filter :authenticate_user!
  respond_to :json

  inherit_resources

  belongs_to :talk
  actions :create

  def create
    build_resource.user = current_user
    create! {
      return render json: {votes: parent.reload.votes_count}
    }
  end
end
