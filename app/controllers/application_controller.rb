class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :turbo_frame_request_variant
  
  private

  def turbo_frame_request_variant
    request.variant = :turbo_frame if turbo_frame_request?
  end
end
