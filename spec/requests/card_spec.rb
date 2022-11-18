# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Cards', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get cards_path
      expect(response).to have_http_status(:success)
    end
  end
end
