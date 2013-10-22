class TalksController < InheritedResources::Base
  actions :index

  def collection
    super.order("votes_count DESC")
  end
end
