class TalksController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]
  respond_to :html

  def index
  end

  def new
  end

  def create
    @talk = Talk.new(talk_params)
    @talk.user = current_user
    @talk.save
    if @talk.valid?
      render :index
    else
      respond_with @talk
    end
  end

  def resource
    @talk ||= Talk.new
  end
  helper_method :resource

  def collection
    Talk.all.order("votes_count DESC")
  end
  helper_method :collection

  def talk_params
    params.require(:talk).permit(:title)
  end
end
