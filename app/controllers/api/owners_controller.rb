class Api::V1::OwnersController < Api::V1::BaseController
  def index
    @owners = Owner.all
  end
end

