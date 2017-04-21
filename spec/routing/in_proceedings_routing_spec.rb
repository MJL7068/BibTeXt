require "rails_helper"

RSpec.describe InProceedingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/in_proceedings").to route_to("in_proceedings#index")
    end

    it "routes to #new" do
      expect(:get => "/in_proceedings/new").to route_to("in_proceedings#new")
    end

    it "routes to #show" do
      expect(:get => "/in_proceedings/1").to route_to("in_proceedings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/in_proceedings/1/edit").to route_to("in_proceedings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/in_proceedings").to route_to("in_proceedings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/in_proceedings/1").to route_to("in_proceedings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/in_proceedings/1").to route_to("in_proceedings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/in_proceedings/1").to route_to("in_proceedings#destroy", :id => "1")
    end

  end
end
