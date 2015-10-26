require 'rails_helper'

describe 'add a vote' do
  it 'allow user to cast a vote' do
    choice = Choice.create({option_a: "Pie", option_b: "Cake"})
    visit root_path
    click_on "Pie"
    expect(page).to have_content("1")
  end
end
