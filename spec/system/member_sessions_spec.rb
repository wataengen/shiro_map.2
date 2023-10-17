# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'MemberSessions', type: :system do

  describe 'ログイン' do
    context 'フォームの入力値が正常' do
      it 'メールアドレスとパスワードでログイン処理が成功する' do
        email = 'wataru1@sample.com'
        password = ENV['MEMBER1_PASSWORD']
        login(email, password)
        expect(page).to have_content 'Signed in successfully.'
        expect(current_path).to eq root_path
      end
    end
  end
end