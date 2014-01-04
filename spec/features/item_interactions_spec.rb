require 'spec_helper'

describe "the item index page" do
  before :each do
    create(:item, username: "mohanzhang",
                  title: "News site for stupid and unattractive people",
                  url: "http://4chan.org",
                  upvotes: 50)
  end

  it "shows all the items with title, url, username, upvotes, and comment count" do
    visit '/'
    expect(page).to have_content("News site for stupid and unattractive people")
    expect(page).to have_content("50")
    expect(page).to have_content("0 comments")
    expect(page).to have_content("mohanzhang")
    expect(page).to have_content("(4chan.org)")
  end

  it "lets you upvote an item", js: true do
    visit '/'
    expect(page).to have_content("50")
    find(".upvoteControls").find("a").click
    expect(page).to have_content("51")
  end

  it "lets you add a new item" do
    visit '/'
    find(".navbar-nav").find("a").click
    expect(current_path).to eq(new_item_path)
    within("#new_item") do
      fill_in "Title", with: "I made this"
      fill_in "Url", with: "http://google.com"
      fill_in "Username", with: "larrypage"
    end
    click_button "Unleash"
    expect(page).to have_content("I made this")
  end
end
