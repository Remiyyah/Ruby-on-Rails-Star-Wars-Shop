class PagesController < ApplicationController

  def index
    @render_cart = false
    render :index
  end

  def account
    render :account
  end


  def membership
    render :membership
  end

  def padawan
    render :padawan
  end

  def jedi
    render :jedi
  end

  def apprentice
    render :apprentice
  end

  def membership_signup
    if current_user
      if current_user.update(user_params)
        case params[:user][:membership_tier]
        when 'padawan'
          redirect_to padawan_path, notice: "You have successfully signed up for the Padawan Membership"
        when 'jedi'
          redirect_to jedi_path, notice: "You have successfully signed up for the Jedi Membership"
        when 'apprentice'
          redirect_to apprentice_path, notice: "You have successfully signed up for the Apprentice Membership"
        else
          redirect_to root_path, alert: "Unknown membership tier"
        end
      else
        redirect_to root_path, alert: "Failed to sign up for membership"
      end
    else
      redirect_to new_user_session_path, alert: "You need an account to get membership. Please sign in."
    end
  end

  private

  def user_params
    params.require(:user).permit(:has_membership, :membership_tier)
  end


end
