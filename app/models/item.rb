class Item < ActiveRecord::Base
  has_many :comments

  # Return the domain of the url
  def url_preview
    parsed_url = Domainatrix.parse(self.url)
    return "#{parsed_url.domain}.#{parsed_url.public_suffix}"
  end
end
