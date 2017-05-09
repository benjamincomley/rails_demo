require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB columns' do
    it { is_expected.to have_db_column :content }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :article }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:comment)).to be_valid
    end
  end
end
