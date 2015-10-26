require 'rails_helper'

describe 'add a comment' do
  it 'allow user to add a new comment to a choice using AJAX', remote: true do
    choice = Choice.create({option_a: "Pie", option_b: "Cake"})
    visit root_path
    click_on "Add Comment"

    fill_in 'Comment', :with => "Always Pie"
    click_on "Create Comment"
    expect(page).to have_content("Always Pie")
  end
end
