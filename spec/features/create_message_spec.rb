require 'rails_helper'

describe 'When I visit root' do
  it 'I can enter a new message' do
    visit '/'

    fill_in("message[text]", with: "Here's a message!")
    click_on "Create Message"

    expect(page).to have_content("Here's a message!")
  end
end
