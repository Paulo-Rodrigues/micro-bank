require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it 'email not empty' do
      invalid_user = build(:user, email: '')

      expect(invalid_user).to be_invalid
    end

    it 'email must be unique' do
      create(:user, email: 'email@email.com')
      user = build(:user, email: 'email@email.com')

      expect(user).to be_invalid
    end

    it 'email must be valid email address' do
      invalid_user = build(:user, email: 'invalidemailcom')
      valid_user = build(:user)

      expect(invalid_user).to be_invalid
      expect(valid_user).to be_valid
    end

    it 'password must not be empty' do
      user = build(:user, password: '')

      expect(user).to be_invalid
    end

    it 'password must have at least 6 charcters' do
      user = build(:user, password: 'abc', password_confirmation: 'abc')

      expect(user).to be_invalid
    end
  end
end
