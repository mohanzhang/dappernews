class Item < ActiveRecord::Base
  has_many :comments, -> { order('created_at DESC') }

  validates :url, presence: true, format: { with: URI.regexp }
  validates :username, presence: true
  validates :title, presence: true

  default_scope { order('upvotes DESC') }

  # Return the domain of the url
  def url_preview
    parsed_url = Domainatrix.parse(self.url)
    return "#{parsed_url.domain}.#{parsed_url.public_suffix}"
  end

  def upvote!
    transaction do
      self.upvotes += 1
      self.save!
    end
  end
end
