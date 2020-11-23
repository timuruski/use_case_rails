class ListUsers < UseCase
  def run
    User.all
  end
end
