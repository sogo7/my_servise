require 'rails_helper'

RSpec.describe Comment, type: :model do
  #ogiriのバリデーション

  describe 'ogiri' do
    context '大喜利が空の場合' do
      comment = Comment.new(ogiri: nil)
      comment.valid?

      it '無効になる' do
        expect(comment.errors.full_messages).to include('Ogiriを入力してください')
        expect(comment).to_not be_valid
      end
    end
  
    context '55文字以上の場合' do
      long_ogiri = 'aaaaaa' * 10
      comment = Comment.new(ogiri: long_ogiri)
      comment.valid?

      it '無効になる' do
        expect(comment.errors.full_messages).to include('Ogiriは55文字以内で入力してください')
        expect(comment).to_not be_valid
      end
    end
  end
end
