# frozen_string_literal: true

module Api
  module V1
    module Padel
      module Lighting
        class StatusesController < Api::ApplicationController
          def show
            status = ::Padel::Lighting::StatusChecker
              .new(time_to_check: Time.current)
              .call

            render json: { lighting: { status: status } }
          end
        end
      end
    end
  end
end
