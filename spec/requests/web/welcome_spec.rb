# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Welcome", type: :request do
  it "shows a warming welcome to neighbours" do
    get "/"

    expect(response).to render_template(:show)
    expect(response.body).to include("Residencial Santa Barbara Project")
  end
end
