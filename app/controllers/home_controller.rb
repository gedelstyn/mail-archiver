class HomeController < ApplicationController

  def index
      @users = User.all
      @imap_providers = ImapProvider.all
      @imap_backup_version = Imap::Backup::VERSION

  end

  def new_user
    @new_user = User.new
  end
  
  def create
    @new_user = User.create(new_user_params)
    redirects_to home_path
  end

  private
  def new_user_params
    params.require(:new_user).permit(:first_name, :last_name, :email)
  end
end
