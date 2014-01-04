require 'spec_helper'

describe "the comment index page" do
  before :each do
    i = create(:item, username: "mohanzhang",
                      title: "News site for stupid and unattractive people",
                      url: "http://4chan.org",
                      upvotes: 50)
    create(:comment, item: i, username: "fred", content: "hello")
  end

  it "displays the parent item" do
    visit '/'
    click_link "1 comment"
    expect(page).to have_content("News site for stupid and unattractive people")
  end

  it "allows you at add a new comment" do
    visit "/"
    click_link "1 comment"
    within("#new_comment") do
      fill_in "Username", with: "joe"
      fill_in "Content", with: "Intelligent comment."
    end
    click_button "Behold!"
    expect(page).to have_content("Intelligent comment.")
  end
end
