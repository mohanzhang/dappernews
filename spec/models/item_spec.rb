require 'spec_helper'

describe Item do
  # this should have .order('created_at desc') but there appears to be a
  # compatibility issue with shoulda-matchers and rails 4 at the moment
  it { should have_many(:comments) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:username) }

  it { should_not allow_value("asdfasdfsadfsd").for(:url) }
  it { should allow_value("http://mohanzhang.com").for(:url) }

  it "should provide a method to extract the preview url" do
    item = create(:item, url: "http://targetdomain.com")
    expect(item.url_preview).to eq("targetdomain.com")
  end
end
