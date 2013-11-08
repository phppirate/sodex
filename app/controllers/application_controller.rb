class ApplicationController < ActionController::Base
  protect_from_forgery
  class ApplicationController < ActionController::Base
  USER, PASSWORD = User.last.email, User.last.password
 
  before_filter :authentication_check

 
  private
    def authentication_check
      authenticate_or_request_with_http_basic do |user, password|
        user == USER && password == PASSWORD
      end
    end
end
end
