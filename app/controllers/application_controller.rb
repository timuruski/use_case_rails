class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do |error|
    render json: {error: error.message}, status: :not_found
  end

  rescue_from UseCase::Failure do |error|
    render json: {error: error.message}, status: :bad_request
  end
end
