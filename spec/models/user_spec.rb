require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with email, password' do
    expect(build(:user)).to be_valid
  end

  it 'is valid without email' do
    user = build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("不能为空")
  end

  it 'is valid email uniq' do
    create(:user, email: 'user@example.com')
    user = build(:user, email: 'user@example.com')
    user.valid?
    expect(user.errors[:email]).to include("已经被使用")
  end

  it 'is valid without password' do
    user = build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("不能为空")
  end
end
