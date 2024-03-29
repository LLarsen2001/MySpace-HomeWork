class Api::JobsController < ApplicationController
  
 # before_action :authenticate_user!
  # before_action :set_user
  before_action :set_job, only: [:show, :update, :destroy]

  def available
    render json: Job.availableJobs
  end

  def posted
    render json: Job.postedJobs(params[:user_id])
  end

  def all
    render json: Job.all
  end
  
  
  def show
    render json: @job
  end

  def create 
    newJob = Job.new(job_params)
    if(newJob.save)
      render json: {
        created_by: newJob.user_id,
        description: newJob.description,
        # email: newJob.user.email,
        id: newJob.id,
        job_id: newJob.id,
        job_name:newJob.job_name,
        location: newJob.location,
        remote: newJob.remote,
        salary: newJob.salary,
        # status: newJob.status,
        # user_id:@user.id,
        created_at:newJob.created_at,
        updated_at:newJob.updated_at
    }
    else
        render json: newJob.errors.full_messages, status: 422
    end
  end

  def update
    if(@job.update(job_params))
      render json: {
        created_by: @job.user_id,
        description: @job.description,
        # email: newJob.user.email,
        id: @job.id,
        job_id: @job.id,
        job_name:@job.job_name,
        location: @job.location,
        remote: @job.remote,
        salary: @job.salary,
        # status: newJob.status,
        # user_id:@user.id,
        created_at:@job.created_at,
        updated_at:@job.updated_at
    }
    else
      render json: @job.errors.full_message, status: 422
    end
  end

  def destroy
    render json: @job.destroy
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end
  
  def set_job
    @job = Job.find(params[:job_id])
  end
  
  def job_params 
    params.require(:job).permit(:jobname, :salary, :description, :remote, :location, :isFilled, :user_id, )
  end
end
