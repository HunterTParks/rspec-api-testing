class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include Response
  include ExceptionHandler

  before_action :authenticate_user!
end
