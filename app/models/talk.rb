class Talk < ActiveRecord::Base
  belongs_to :user
  has_many :votes, :counter_cache => true
  validates :title, :presence => true
  validates :title, :uniqueness => true
end
