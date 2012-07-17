require 'spec_helper'

describe ApplicationController, :type => :controller do
	controller do
    def index
      raise Exception
    end
  end

	it 'should rescue from error 500 with my method' do
		get :index
		response.should redirect_to('/500.html')
	end
end