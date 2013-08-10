class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_user!
  before_filter :set_language

  private

  def set_language
    if user_signed_in?
      I18n.locale = current_user.language.code
    end
  end

  def default_url_options(options = {})
    {locale: I18n.locale}
  end

end
