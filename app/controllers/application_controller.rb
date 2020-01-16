class ApplicationController < ActionController::Base
  before_action :set_paper_trail_whodunnit

  protected

  def user_for_paper_trail
    if current_user
      current_user.email
    else
      'SYSTEM'
    end
  end
end
