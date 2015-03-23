class PagesController < ApplicationController

  before_filter :authenticate_user!, :except => [:index]

  def index
    render(:template => "pages/index")
  end

  def trade_center
  	#@users = User.all
    @users = User.where('id != ?', current_user.id)
  	render(:template => "pages/trade_center")
  end

  def show_other_users
  	@user = User.find(params[:id])
  	render(:template => "pages/show")
  end

  def user_params
    params.require(:user).permit!
  end

end