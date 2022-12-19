# frozen_string_literal: true

class PagesController < ApplicationController
  include AbstractController::Rendering
  include ActionView::Layouts

  def show
    render 'pages/show'
  end
end
