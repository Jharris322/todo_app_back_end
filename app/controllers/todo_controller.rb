class TodoController < ApplicationController
def new
end
def create
  t = Todo3.new
  t.description = params['description']
  t.pomodoro_estimate = params['pomodoro_estimate']
  t.save
  redirect_to "/todo/show/#{ t.id }"
end
def edit
    @todo = Todo3.find_by_id(params[:id])
end
def update
  t = Todo3.find_by_id(params['id'])
  t.description = params['description']
  t.pomodoro_estimate = params['pomodoro-estimate']
  t.save
  redirect_to "/todo/show/#{t.id}"
end
def destroy
  t = Todo3.find_by_id(params[:id])
  t.destroy
  redirect_to "/todo/index"
end
def index
    @todos = Todo3.all
end
def show
@todo = Todo3.find_by_id(params[:id])

end
end