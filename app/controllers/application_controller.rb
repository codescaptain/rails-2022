class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if resource.role == :admin
      root_path
    else
      user_path
    end
  end
end
