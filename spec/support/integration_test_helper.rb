module IntegrationTestHelper
  def sign_in(user)
    click_link 'Sign in'
    fill_in "user_email", with: user.email
    fill_in "user_password", with: 'hackme!!'
    click_button 'Sign in'
  end
end