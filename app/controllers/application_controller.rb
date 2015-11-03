class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_locale
  before_filter :set_default_meta_tags

  def set_default_meta_tags
    # @meta_tag = MetaTag.where(:is_default => true).first!
  end


  def set_locale
    I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end


  def set_admin_locale
    I18n.locale = I18n.default_locale
  end

end
