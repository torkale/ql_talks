class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :talk, :counter_cache => true
  validates :user_id, uniqueness: { scope: :talk_id}
  validates :user_id, :talk_id, :presence => true
end
