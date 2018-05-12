module CurrentUser
  extend ActiveSupport::Concern

  included do
    before_action :current_user
  end

  def current_user
    super || OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@example.com")
  end
end