class ApplicationController < ActionController::Base
    helper_method :current_user
    private
    def current_user
        if session[:login_uid]
            User.find_by(uid: current_user.uid)
        end
    end
end
