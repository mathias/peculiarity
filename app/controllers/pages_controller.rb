class PagesController < ApplicationController
  def index
    @beta_sign_up = BetaSignUp.new
  end

  def about
  end
end
