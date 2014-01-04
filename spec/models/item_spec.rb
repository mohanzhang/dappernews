require 'spec_helper'

describe Item do
  it { should have_many(:comments).order('created_at desc').counter_cache(true) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:username) }

  it { should_not allow_value("asdfasdfsadfsd").for(:url) }
  it { should allow_value("http://mohanzhang.com").for(:url) }

  it "should provide a method to extract the preview url"
end
