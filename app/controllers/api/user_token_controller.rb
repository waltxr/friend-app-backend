class Api::UserTokenController < Knock::AuthTokenController
  rescue_from Knock.not_found_exception_class_name, with: :unauthorized

  def unauthorized
    render json: { error: "Invalid email address/password" }, status: :unauthorized
  end
end
