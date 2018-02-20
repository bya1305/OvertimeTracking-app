class StaticController < ApplicationController
  def homepage
    @pending_approvals = Post.where(status: 'submitted')
    @audits = AuditLog.last(10)
  end
end
