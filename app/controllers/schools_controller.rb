class SchoolsController < ApplicationController
	def index
		@schools = School.all 
		@school = School.new
	end

	def create
		@school = School.new(school_params)
		if @school.save
			redirect_to '/'
		else 
			render '/'
		end
	end

	def show
		@school = School.find(params[:id])
		@fact = @school.facts.new
		@facts = @school.facts.all
	end

	def edit
		@school = School.find(params[:id])
	end

	def update
		@school = School.find(params[:id])
		if @school.update(school_params)
			redirect_to '/'
		else
			render '/edit'
		end
	end

	def destroy
		@school = School.find(params[:id]).destroy
		redirect_to '/'
	end

	private 
	def school_params
		params.require(:school).permit(:name, :image, :division, :proximity, :population, :computer_science_rank, :tuition, :act_score)
	end
end
