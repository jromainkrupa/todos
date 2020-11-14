require 'rails_helper'

feature "User complete todo" do
  scenario "successfully" do
    sign_in

    create_todo("Buy milk")

    click_on 'Mark complete'

    expect(page).to display_completed_todo("Buy milk")
  end
end
