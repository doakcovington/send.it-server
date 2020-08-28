class ApplicationController < ActionController::API
    helpers do
        def current_user
            @user = User.find_by(id: user_id)  
        end

        def logged_in?
            !!current_user
        end
    end
end
