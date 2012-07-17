class ApplicationController < ActionController::Base

	rescue_from Exception, :with => :_recover_from_exception
	unloadable

	def _recover_from_exception
		redirect_to '/500.html'
	end
end