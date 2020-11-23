module UseCaseAdapter
  extend ActiveSupport::Concern

  def run_use_case(klass, params)
    result = klass.run(params)
    render json: result
  rescue UseCase::Failure => error
    render json: { error: error.message }, status: 400
  end
end
