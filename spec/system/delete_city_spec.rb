require 'rails_helper'

RSpec.describe 'Deleting a city', type: :system do
  scenario 'success' do
    City.create!(name: 'NYC')
    visit cities_path
    expect(page).to have_content('NYC')
    click_on 'Destroy'
    page.driver.browser.switch_to.alert.accept
    expect(page).not_to have_content('NYC') 
  end
end