class UpdateUser < UseCase
  fails_on ActiveRecord::RecordInvalid

  def run(id:, **user_params)
    user = FetchUser.run(id: id)
    user.update!(user_params)
  end
end
