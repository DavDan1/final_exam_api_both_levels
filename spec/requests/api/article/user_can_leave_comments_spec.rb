RSpec.describe 'POST /api/articles/:id/comment', type: :request do
  describe 'Successfully' do
    before do
      post '/api/articles/:id/comments'
    end

    it 'is expected to return a 200 response' do
      expect(response).to have_http_status 200
    end
    it 'is expected to respond with success message' do
      expect(response_json['message']).to eq 'Your comment is submitted'
    end
  end
end
