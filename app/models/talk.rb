class Talk < ActiveRecord::Base
  scope :over, -> (yes) { yes ?
                    where('scheduled_at < ?', Time.now) :
                    where('scheduled_at IS NULL OR scheduled_at >= ?', Time.now)}
  belongs_to :user
  has_many :votes, :counter_cache => true
  validates :title, :presence => true
  validates :title, :uniqueness => true
end
