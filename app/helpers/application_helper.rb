module ApplicationHelper
  APP_NAME = 'Rails Sample App'.freeze
  def page_title
    base_title = APP_NAME
    return base_title if @title.blank?
    "#{base_title} | #{@title}"
  end

  def flash_messages(message, klass)
    content_tag(:div, class: "alert alert-#{klass}") do
      concat content_tag(:button, 'x', class: 'close', data: { dismiss: 'alert'})
      concat raw(message)
    end
  end
end
