class ApplicationController < ActionController::API
  include ActionController::Cookies

rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

private
def render_unprocessable_entity(exception)
  render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
end

def record_not_found(exception)
  render json: { "error": "#{exception.model} not found"}, status: :not_found
end

end
