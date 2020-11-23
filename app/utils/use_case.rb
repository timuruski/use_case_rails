# A UseCase represents something our app does for a user.
# While they can be composed, they are not meant to represent all fine grained execution of our
# core business logic.
class UseCase
  include ActiveSupport::Rescuable

  Failure = Class.new(RuntimeError)

  def self.run(...)
    (use_case = new).run(...)
  rescue => error
    rescue_with_handler(error, object: use_case) || raise
  end

  def run(...)
    raise "Implement `run` for #{self.class}"
  end

  def self.fails_on(*errs)
    rescue_from(*errs, with: :fail!)
  end

  private def fail!(msg = nil, cause: $!)
    raise(Failure, msg, cause: cause)
  end
end
