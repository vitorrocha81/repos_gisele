
class Api::V1::RepositoriesController < Api::V1::BaseController
  def index
  @repositories = Repository.all

  end

  def show
  @repository = Repository.find(params[:language])
  end


  # supondo que quando clico em submit.. chega no create
  def create
    # a variavel "language" tem que vir a partir do submit...
  url = "https://api.github.com/search/repositories?q=language:#{language}"
    response = HTTParty.get(url)
    repositories = response.parsed_response["items"]
  end

end

