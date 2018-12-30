# frozen_string_literal: true

require "swagger_helper"

describe "Lighting Status API" do
  path "/api/v1/padel/lighting/status" do
    get "Retrieves the current lighting status" do
      tags "Padel"
      produces "application/json"

      response "200", "retrieve current status" do
        schema type: :object,
               properties: {
                 lighting: {
                   type: :object,
                   properties: {
                     status: { type: :string }
                   }
                 }
               }

        run_test!
      end
    end
  end
end
