class ApplicationController < ActionController::Base
  protect_from_forgery with :exception

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private
  def record_not_found
    render file: "#{Rails.root}/public/404", layout: true, status: :not_found
  end
end