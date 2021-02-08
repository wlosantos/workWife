class AdminsController < ApplicationController
  before_ation :authenticate_admin!
  layout 'admins'

  def index
  end

end
