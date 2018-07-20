require "rails_helper"

RSpec.describe "GET /api/v1/messages" do
  it "returns a message" do
    Message.create(text: "Hello world <")

    get "/api/v1/messages"

    json = JSON.parse(response.body)

    expect(json).to eq({"text" => "Hello world <"})
  end
end
