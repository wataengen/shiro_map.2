# frozen_string_literal: true

require 'rails_helper'
describe 'トップページ(root_path)のテスト' do
    before do
      visit root_path
    end
    context '表示の確認' do
      it 'トップ画面(root_path)にマップとタイムラインが表示されているか' do
        expect(page).to have_content 'マップ'
        expect(page).to have_content 'タイムライン'
      end
      it 'root_pathが"/"であるか' do
        expect(current_path).to eq('/')
      end
    end
  end


# describe '投稿のテスト' do
#   let!(:list) { create(:post, post_text:'hoge') }


# end