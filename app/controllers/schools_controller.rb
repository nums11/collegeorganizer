class SchoolsController < ApplicationController
	def index
		@schools = School.all 
		@school = School.new
	end

	def proximity_index
		@school_proximity = School.all.order(:proximity)
		@school = School.new
	end

	def division_index
		@school_division = School.all.order(:division)
		@school = School.new
	end

	def population_index
		@school_population = School.all.order(:population)
		@school = School.new
	end

	def rank_index
		@school_rank = School.all.order(:computer_science_rank)
		@school = School.new
	end

	def tuition_index
		@school_tuition = School.all.order(:tuition)
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
