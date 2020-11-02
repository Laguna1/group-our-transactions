class PagesController < ApplicationController
  def index; end

  def external
    user = User.find_by(id: current_user.id)
    @external_user_transactions = user.transactions.where(group_id: nil).order(created_at: :desc)
    @external_total = @external_user_transactions.sum(:amount)
  end
end
