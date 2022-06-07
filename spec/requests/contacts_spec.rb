require 'rails_helper'

RSpec.describe "Contacts", type: :request do
  describe "GET new/contact" do
      before do
        before(:each) do
        @user = create(:user)
      end
      sign_in user
      get new_contact_path
      expect(response).to have_http_status(:success)
    end
  end
end
