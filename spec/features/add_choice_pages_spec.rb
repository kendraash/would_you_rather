require 'rails_helper'

describe 'add a choice' do
  it 'allow user to add a new choice' do
    visit '/'
    click_on "Add Choice"
    fill_in "Option a", :with => "Eat Pie"
    fill_in "Option b", :with => "Eat Cake"
    click_on "Create Choice"
    expect(page).to have_content("Would You Rather")
  end
end
