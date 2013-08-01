class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def not_admin_authorized
    if current_passenger.nil? || !current_passenger.admin?
      redirect_to(root_path)
    end
   end
   
   def admin_authorized
     if current_passenger.present? && current_passenger.admin?
       redirect_to(admin_home_page_path)
     end
   end
end
