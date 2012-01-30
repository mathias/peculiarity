class BetaSignUpsController < ApplicationController
  # GET /beta_sign_ups/1
  # GET /beta_sign_ups/1.json
  def show
    @beta_sign_up = BetaSignUp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beta_sign_up }
    end
  end

  # GET /beta_sign_ups/new
  # GET /beta_sign_ups/new.json
  def new
    @beta_sign_up = BetaSignUp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beta_sign_up }
    end
  end

  # POST /beta_sign_ups
  # POST /beta_sign_ups.json
  def create
    @beta_sign_up = BetaSignUp.new(params[:beta_sign_up])

    respond_to do |format|
      if @beta_sign_up.save
        format.html { redirect_to @beta_sign_up, notice: 'Beta sign up was successfully created.' }
        format.json { render json: @beta_sign_up, status: :created, location: @beta_sign_up }
      else
        format.html { render action: "new" }
        format.json { render json: @beta_sign_up.errors, status: :unprocessable_entity }
      end
    end
  end

end
