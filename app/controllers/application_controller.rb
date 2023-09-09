class ApplicationController < ActionController::Base
  attr_accessor :current_resource

  before_action :set_current_resource

  private

  def set_current_resource
    @current_resource = "#{controller_name}##{action_name}"
  end
end
