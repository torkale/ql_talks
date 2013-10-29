class TalksController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]
  respond_to :html

  def index
    collection
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
    @talks ||= Talk.all.order("votes_count DESC").over(is_over?)
  end
  helper_method :collection

  def is_over?
    params[:over].present?
  end
  helper_method :is_over?

  def talk_params
    params.require(:talk).permit(:title)
  end
end
