class ApplicationController < ActionController::API
  include JWTSessions::RailsAuthorization
  rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized
  def index
    render template: 'application'
  end
  private
    def current_user
      @current_user ||= User.find(id: payload['user_id'])
    end

    def not_authorized
      render json: { error: "Not Authorized" }, status: :unauthorized
    end
end

