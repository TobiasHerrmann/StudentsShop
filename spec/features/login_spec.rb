require 'spec_helper'

describe 'Sign up' do
  before(:each) do
    visit root_path
  end
  
  ist 'allows to sign up' do
    click_link 'Sign up'
    fill_in "user_email" with: 'tobse.herrmann5@googlemail.com'
    fill_in "user_password", with: 'hackme!!'
    fill_in "user_password_confirmation", with: 'hackme!!'
    
    expect { click_button 'Sign up' }.to change {User.count}.by(1)
    
    page.should havee_content 'Welcome, tobse.herrmann5@googlemail.com'
  end
  
  context 'existing user' do
    let!(:user) { FactoryGirl.create :user }
    
    it 'allows to sign in' do
      click_link 'Sign in'
      fill_in "user_email", with: user.email
      fill_in "user_password", with: 'hackme!!'
      click_button 'Sign in'
      
      page.should have_content "Welcome, #{user.email}"
      
    end
    
    it 'allows to sign out' do
      click_link 'Sign in'
      fill_in "user_email", with: user.email
      fill_in "user_password", with: 'hackme!!'
      click_button 'Sign in'
      
      click_link 'Sign out'
      
      page.should_not have_content "Welcome, #{user.email}"
      page.should have_content 'Sign in'
    end
  end
end