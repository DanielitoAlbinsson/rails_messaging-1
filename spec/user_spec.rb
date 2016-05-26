require 'rails_helper'

RSpec.describe User, type: :model do
#  describe 'DB table' do
#    it { is_expected.to have_db_column :id }
#    it { is_expected.to have_db_column :title }
#    it { is_expected.to have_db_column :content }
#  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(10) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end

  describe 'Fixtures' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:user)).to be_valid
    end
  end
end
