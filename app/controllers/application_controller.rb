class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  protect_from_forgery with: :exception
  before_action :set_locale


  include SessionsHelper

  layout 'login', only: [:login]
  def login

  end

  def home
  	if !signed_in?
  		redirect_to '/login'
  	end
  end

    private
      def set_locale
        I18n.locale = :fr
      end
end
