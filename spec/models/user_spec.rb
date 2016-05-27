require 'rails_helper'

RSpec.describe User, type: :model do

  subject { FactoryGirl.create(:user) }

  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    #it { is_expected.to validate_length_of(:name).is_at_most(10) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_presence_of(:email)}
    #it { is_expected.to validate_uniqueness_of(:email) }
    #it { is_expected.to validate_presence_of(:password) }

    it 'email is case sensitive' do
      FactoryGirl.create(:user, email: 'thomas@random.com')
      new_user = FactoryGirl.build(:user, email: 'THOMAS@RANDOM.COM')
      expect(new_user.save).to eq false
    end
  end

  describe 'Fixtures' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:user)).to be_valid
    end
  end

  describe 'should not have an invalid email address' do
    emails = ['asdf@ ds.com', '@example.com', 'test me @yahoo.com', 'asdf@example', 'ddd@.d. .d', 'ddd@.d']
    emails.each do |email|
      it { is_expected.not_to allow_value(email).for(:email) }
    end
  end

  describe 'should have a valid email address' do
    emails = ['asdf@ds.com', 'hello@example.uk', 'test1234@yahoo.se', 'asdf@example.eu']
    emails.each do |email|
      it { is_expected.to allow_value(email).for(:email) }
    end
  end

end
