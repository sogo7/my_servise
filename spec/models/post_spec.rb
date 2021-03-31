require 'rails_helper'

RSpec.describe Post, type: :model do
  #ogiriのバリデーション

  describe 'ogiri' do
    context '大喜利が空の場合' do
      post = Post.new(ogiri: nil)
      post.valid?

      it '無効になる' do
        expect(post.errors.full_messages).to include('Ogiriを入力してください')
        expect(post).to_not be_valid
      end
    end
  
    context '55文字以上の場合' do
      long_ogiri = 'aaaaaa' * 10
      post = Post.new(ogiri: long_ogiri)
      post.valid?

      it '無効になる' do
        expect(post.errors.full_messages).to include('Ogiriは55文字以内で入力してください')
        expect(post).to_not be_valid
      end
    end
  end

  #imgのバリデーション

  describe 'img' do
    context '文章が空の場合' do
      post = Post.new(img: nil)
      post.valid?

      it '無効になる' do
        expect(post.errors.full_messages).to include('Imgを入力してください')
        expect(post).to_not be_valid
      end
    end
  end
end
