class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception

  after_filter :set_cors
def set_cors
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
  end
end
