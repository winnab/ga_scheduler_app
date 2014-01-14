module Admin
  
  class BaseController < ApplicationController

    authorize_resource

    helper_method :current_ability

    # in admin/base_controller.rb
    def current_ability
      @current_ability ||= AdminAbility.new(current_user)
    end



  end
  
end