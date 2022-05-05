class JobsController < ApplicationController
  def index

  	#if (current_user.has_role? :admin)

		@jobs = Job.all 
	#end	
  end

  def new
  	@job = Job.new
  end 

  def create
#debugger
  	@job = Job.new
  	@job.job_type = job_params[:job_type]
  	@job.user_id = current_user.id
  	@job.job_stutes = "add"
  	@job.save



  end


  def accept
  	#debugger
  	@job = Job.find(params[:id])
  	@job.update(job_stutes: "accept")
  	@job.save




  end
  def reject
  	@job = Job.find(params[:id])
  	@job.update(job_stutes: "reject")
  	@job.save


  end


  def apply_job
  	@job = Job.find(params[:id])
  	@job.update(job_stutes: "applying")
  	@job.save


  end
  def hire
  	#debugger
  	@job = Job.find(params[:id])
  	@job.update(job_stutes: "hire")
  	@job.save




  end
  def fire
  	#debugger
  	@job = Job.find(params[:id])
  	@job.update(job_stutes: "fire")
  	@job.save




  end
  def job_params
        params.require(:job).permit(:job_type , :job_stutes)
  end

end
