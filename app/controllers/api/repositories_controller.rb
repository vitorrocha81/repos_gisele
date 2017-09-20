
class Api::V1::RepositoriesController < Api::V1::BaseController
  def index
  github = Github.new
  github.repos.list user: 'user-name'
  github.repos.list user: 'user-name', { |repo| ... }
  end

  def show

    if html_url.present? ("Jquery","CSS", "HTML", "Java")
      github.repos.get_by_html_url 'html_url'
      redirect_to _load_list_path

     else
      return "No one Repository with this language "
    end

  end

end


