class SessionsController < ApplicationController
  # def create
  #   user = User.from_omniauth(env["omniauth.auth"])
  #
  #   if user.valid?
  #     session[:user_id] = user.id
  #     redirect_to request.env['omniauth.origin']
  #   end
  # end
  def create
    if user = User.from_omniauth(request.env['omniauth.auth'])
      session[:user_id] = user.id
      # session[:token] = request.env['omniauth.auth']['credentials']['token']
    end
    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to root
  end
end
