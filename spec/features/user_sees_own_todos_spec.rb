require 'rails_helper'

feature "user sees own todos" do
  scenario "doesn't see others" do
    Todo.create!(title: "Buy milk", email:"someone_else@example.com")

    sign_in_as "person@example.com"

    expect(page).not_to have_css ".todos li", text: "Buy milk"
  end
end
