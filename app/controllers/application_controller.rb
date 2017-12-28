class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  before_action :authorize

  protected

    def authorize
      unless admin_user_signed_in?
        redirect_to admin_root_url
      end
    end
end
