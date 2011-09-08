class AdminController < ApplicationController

  layout 'application', :except => :login


  def login
    if request.post?
      user = User.authenticate(params[:name], params[:password])
        if user
          flash[:notice] = "#{user.name}."
          session[:user_id] = user.id


          if user.role == "admin"
            redirect_to(:action => "index")

          elsif user.role == "doctor"
          redirect_to(:action => "indexDoctor")

          elsif user.role == "patient"
          redirect_to(:action => "indexPatient")

          end

        else
          flash.now[:notice] = "Invalid username or password, please try again"
        end
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged Out"
    redirect_to(:action => "login")
  end

  def index

  end

  def indexDoctor

  end

  def indexPatient

  end



end
