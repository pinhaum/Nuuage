require "rails_helper"

describe "Home", type: :request do
  let(:user) { create(:user) }

  it "tests home body json" do
    get '/admin/v1/home', headers: auth_header(user)
    expect(body_json).to eq({ 'message' => "It's working, dude!" })
  end

  it "tests home response" do
    get '/admin/v1/home', headers: auth_header(user)
    expect(response).to have_http_status(:ok)
  end
end
