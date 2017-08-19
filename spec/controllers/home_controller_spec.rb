require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'responds successfully with an HTTP 200 status code' do
      user = create(:user)
      sign_in user
      get :index
      expect(response).to be_success
    end
    
    it 'redirects to Sign in Path if not logged in' do
      get :index
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
