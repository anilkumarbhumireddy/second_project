class RobotsController < ApplicationController
	before_action :current_robot, only:[:show,:edit,:update,:destroy]
	def index
		@robots = Robot.all
	end

	def show 
		if @robot.present?
			@robot
		else
			@error = 'record not present'
		end
  end

	def new

	end

	def create
		@robot =Robot.create(robot_params)
		redirect_to robot_path(@robot)
		
	end

	def edit
		
		
	end

	def update
		
		if @robot.update(robot_params)
			redirect_to(@robot)
		else
			render :edit
		end
	end

	def destroy
		binding.pry
		
		@robot.destroy

		redirect_to robot_path
	end


	private


	def robot_params
		params.require(:robot).permit(:name,:slogan)
	end

	def current_robot
		@robot =Robot.find(params[:id])
	end
end
