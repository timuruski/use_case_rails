class CreateUser < UseCase
  fails_on ActiveRecord::RecordInvalid

  def run(user:)
    User.create!(user)
  end
end
