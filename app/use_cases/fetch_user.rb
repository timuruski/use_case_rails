class FetchUser < UseCase
  def run(id:)
    User.find(id)
  end
end
