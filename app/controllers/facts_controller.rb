class FactsController < ApplicationController
	def create
		@school = School.find(params[:id])
		@fact = @school.facts.new(fact_params)
		if @fact.save
			redirect_to '/'
		else
			render '/schools/#{@school.id}'
		end
	end

	def destroy
		@fact = Fact.find(params[:id]).destroy
		redirect_to '/'
	end

	private
	def fact_params
		params.require(:fact).permit(:description)
	end
end

