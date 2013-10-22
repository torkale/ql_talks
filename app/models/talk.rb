class Talk < ActiveRecord::Base
  belongs_to :user
  has_many :votes, :counter_cache => true
end
