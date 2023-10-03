require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users/index' do
    it 'returns http success' do
      get '/users/index'
      expect(response).to have_http_status(:success)
    end
    
    it 'renders the index template' do
      get '/users/index'
      expect(response).to render_template(:index)
    end
    
    it 'renders the correct placeholder text' do
      get '/users/index'
      expect(response.body).to include('Welcome to the Users Index!')
    end
  end

  describe 'GET /users/:id' do
    before do
      @user = User.create(name: 'John Doe', email: 'john@example.com')
      get "/users/#{@user.id}"
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end

    it 'renders the correct placeholder text' do
      expect(response.body).to include('User Information:')
      expect(response.body).to include("Name: #{@user.name}")
      expect(response.body).to include("Email: #{@user.email}")
    end
  end
end
