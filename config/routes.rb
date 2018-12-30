# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => "/api-docs"
  mount Rswag::Api::Engine => "/api-docs"
  root to: "web/welcome#show"

  namespace :api do
    namespace :v1 do
      namespace :padel do
        namespace :lighting do
          resource :status, only: %i(show)
        end
      end
    end
  end
end
