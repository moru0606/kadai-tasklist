class TasksController < ApplicationController
     before_action :require_user_logged_in
     before_action :set_task, only:[:show,:edit,:update,:destroy]

    
  def index
      @tasks = current_user.tasks
  end

  def show
  end


  def new
      @task = Task.new
  end
  
  def create
   @task = current_user.tasks.build(task_params)
    if @task.save
      flash[:success] = 'タスク追加されました'
      redirect_to root_url
    else
      flash.now[:danger] = 'タスク追加に失敗しました'
      render :new
    end
  end
  

  def edit
  end

  def update
    if @task.update(task_params)
      flash[:success] = 'タスクが正常に更新されました'
      redirect_to tasks_url
    else
      flash.now[:danger] = 'タスクが更新されませんでした'
      render :edit
    end
  end
  
  def destroy
    @task.destroy
    flash[:success] = 'タスクは削除されました'
    redirect_to tasks_url
  end
  
  private
  
  def set_task
      @task = current_user.tasks.find(params[:id])
  end

  # Strong Parameter
  def task_params        
    params.require(:task).permit(:content, :status)
  end
end
       