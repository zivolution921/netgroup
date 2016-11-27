class EventsController < ApplicationController
  def index  
    @events = Event.all  
    #render json: @events 
  end

  def show
    @event = Event.find(params[:id])
    #render json: @event
  end

  def create  
    @event = Event.new(event_params)  
    if @event.save 
      redirect_to @event 
      #render json: @event
    end  
  end  

  def update  
    @event = Event.find(params[:id])  

    if @event.update(event_params)  
      redirect_to @event 
      #render json: @event
    end  
  end  

  def destroy  
    @event = Event.find(params[:id])  
    @event.destroy  
    redirect_to root_path
    #render json: @event
  end  

  private  

  def event_params 
    params.require(:event).permit(:name, :email, :phone, :job_title, :job_description, :location, :category)  
  end  
end
