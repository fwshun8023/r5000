require 'rails_helper'

RSpec.describe Article, :type => :model do
  it 'is has a valid factory' do
    expect(build(:article)).to be_valid
  end

  it 'is valid without user' do
    article = build(:article, user_id: nil)
    article.valid?
    expect(article.errors[:user_id]).to include("不能为空")
  end

  it 'is valid without title' do
    article = build(:article, title: nil)
    article.valid?
    expect(article.errors[:title]).to include("不能为空")
  end

  it 'is valid without content' do
    article = build(:article, content: nil)
    article.valid?
    expect(article.errors[:content]).to include("不能为空")
  end
end
