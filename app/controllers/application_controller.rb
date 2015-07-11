class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def user_admin
    if current_user
      if current_user.admin === true
        @user_admin = current_user
      end
    end
  end

  helper_method :user_admin

  # def simple_format(text, html_options = {}, options = {})
  #   wrapper_tag = options.fetch(:wrapper_tag, :p)
  #
  #   text = sanitize(text) if options.fetch(:sanitize, true)
  #   paragraphs = split_paragraphs(text)
  #
  #   if paragraphs.empty?
  #     content_tag(wrapper_tag, nil, html_options)
  #   else
  #     paragraphs.map! { |paragraph|
  #       content_tag(wrapper_tag, raw(paragraph), html_options)
  #     }.join("\n\n").html_safe
  #   end
  # end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end
end
