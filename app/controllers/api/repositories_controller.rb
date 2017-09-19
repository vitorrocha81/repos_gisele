
class Api::V1::RepositoriesController < Api::V1::BaseController
  def index
  @repositories = Repository.all
  end

  def show
  @repository = Repository.find(params[:id])
  end

end
