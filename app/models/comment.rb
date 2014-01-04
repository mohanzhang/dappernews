class Comment < ActiveRecord::Base
  belongs_to :item, counter_cache: true

  validates :content, presence: true
  validates :username, presence: true
end
