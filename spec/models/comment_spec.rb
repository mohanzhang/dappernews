require 'spec_helper'

describe Comment do
  it { should belong_to(:item) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:content) }
end
