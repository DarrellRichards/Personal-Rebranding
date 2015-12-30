class ProjectsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	def index
		@projects = Project.all.order('created_at DESC')
	end
	def new
		@project = Project.new
	end
	def create
		@project = Project.new(post_params)
		if @project.save
			redirect_to @project
		else
			render 'new'
		end
	end
	def show
		@project = Project.find(params[:id])
	end
	def edit
		@project = Project.find(params[:id])
	end
	def update
		@project = Project.find(params[:id])
		if @project.update(params[:project].permit(:title, :body))
			redirect_to @project
		else
			render 'edit'
		end
	end
	def destroy
		@project = Project.find(params[:id])
		@project.destroy

		redirect_to root_path
	end

	private
		def post_params
			params.require(:project).permit(:title, :information, :slug, :featured_image, :url)
		end
end
