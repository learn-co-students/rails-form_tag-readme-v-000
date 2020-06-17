class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def change_for_tests 
  end
end
