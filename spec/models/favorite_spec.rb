require 'rails_helper'

RSpec.describe Favorite, type: :model do 
    describe 'Favorite' do
      it "有効なuserの場合は保存されるか" do
        expect(build(:favorite)).to be_valid
    end
  end
end
