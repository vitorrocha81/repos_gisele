class Api::OwnersController < Api::BaseController
  def index
    @owners = Owner.all
  end
end

