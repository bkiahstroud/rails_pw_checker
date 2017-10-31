class PasswordController < ApplicationController
    def check
        @username = "LEARN"
        @password = "Learnpw"
        if @username == params[:username] && @password == params[:password]
            @return_string = "Credentials accepted"
        elsif params[:username] != nil && params[:username] != @username
            @return_string = "Try again"
        else
            @return_string = ""
        end
        flash[:notice] = @return_string
        render 'check.html.erb'
    end
end
