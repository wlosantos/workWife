class AdminsController < ApplicationController

  before_action :authenticate_admin!
  layout 'admins'

  def index
    @registers = Register.all.order(:name)
  end

end
