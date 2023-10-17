module LoginSupport
  def login(email, password)
    visit new_member_session_path

    fill_in 'member[email]', with: email
    fill_in 'member[password]', with: password
    click_button 'ログイン'
  end
end