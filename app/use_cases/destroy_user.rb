class DestroyUser < UseCase
  def run(id:)
    User.destroy(id)
  end
end
