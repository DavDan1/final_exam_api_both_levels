RSpec.describe 'POST /api/articles/:id/comment', type: :request do
  let(:article) {create(:article)  }
  describe 'Successfully' do
    before do
      post "/api/articles/#{article.id}"
    end

    it 'is expected to return a 200 response' do
      expect(response).to have_http_status 200
    end
    it 'is expected to respond with success message' do
      expect(response_json['message']).to eq 'Your comment is submitted'
    end
  end
  describe 'unsuccessfully with no comments' do
    before do
      post "/api/articles/#{article.id}"
    end
    it 'is expected to return status 200' do
      exactly(response).to have_http_status 200
    end
    it 'is expected to return an empty array' do
      expect(response_json['comments']).to eq []
    end
  end
end
