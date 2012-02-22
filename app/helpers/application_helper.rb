module ApplicationHelper

  def formated_user_name(user)
    return "" if user.nil?
    return "#{user.email}" if user.first_name.nil?
    return "#{user.first_name} #{user.last_name}".capitalize
  end

end
