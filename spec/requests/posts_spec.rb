require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /users/:user_id/posts/:id' do
    it 'returns http success, renders the show template, and includes correct placeholder text' do
      get '/users/1/posts/1'
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:show)
      expect(response.body).to include('Placeholder text for show view')
    end
  end

  describe 'GET /users/:user_id/posts' do
    it 'returns http success, renders the index template, and includes correct placeholder text' do
      get '/users/1/posts'
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
      expect(response.body).to include('Placeholder text for index view')
    end
  end
end
