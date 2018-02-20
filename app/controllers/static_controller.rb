class StaticController < ApplicationController
  def homepage
    if admin_types.include?(current_user.type)
      @pending_approvals = Post.submitted
      @audits = AuditLog.last(10)
    else

    end
  end
end
