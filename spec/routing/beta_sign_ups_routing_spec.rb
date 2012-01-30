require "spec_helper"

describe BetaSignUpsController do
  describe "routing" do

    it "routes to #new" do
      get("/beta_sign_ups/new").should route_to("beta_sign_ups#new")
    end

    it "routes to #confirm" do
      get("/beta_sign_up/confirm").should route_to("beta_sign_ups#confirm")
    end

    it "routes to #create" do
      post("/beta_sign_ups").should route_to("beta_sign_ups#create")
    end

  end
end
