module Accessible extend ActiveSupport::Concern
    included do before_action :check_user
    end

    protected
    def check_associate
      if current_provider
        flash.clear
        # if you have rails_admin. You can redirect anywhere really
        redirect_to(rails_provider.dashboard_path) && return
      elsif current_associate
        flash.clear
        # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
        redirect_to(authenticated_user_root_path) && return
      end
    end
  end