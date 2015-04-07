class ProgramsController < ApplicationController
  before_action :set_program, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_guide!, except: [:show]
  respond_to :html

  def index
    @programs = Program.all
    respond_with(@programs)
  end

  def show
    @event_dates = @program.events
    respond_with(@program)
  end

  def book_now
    @program = Program.find(params[:program_id])
    @event_dates = @program.events
    @program.events.find(params[:event_id]).update(booked: true)
    #@program.update(city: "rennes")
    render action: :show
  end

  def new
    @program = Program.new
    @program.events.new
    respond_with(@program)
  end

  def edit
  end

  def create
    @program = Program.new(program_params)
    @program.guide_id = current_guide.id
    # @program.events.each do |event|
    #   event.update(booked: false)
    # end
    @program.save
    respond_with(@program)
  end

  def update
    @program.update(program_params)
    respond_with(@program)
  end

  def destroy
    @program.destroy
    respond_with(@program)
  end

  private
    def set_program
      @program = Program.find(params[:id])
    end

    def program_params
      params.require(:program).permit(:city, :length, :price, :description, :name, :transportation, events_attributes: [:starts_at, :ends_at, :booked])
    end
end
