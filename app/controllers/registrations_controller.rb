class RegistrationsController < Devise::RegistrationsController
  def create
    flash[:notice] = "Sorry, but registration is closed"
    redirect_to :root
  end
  protected

  def after_sign_up_path_for(resource)
    '/reservations/new'
  end
end
