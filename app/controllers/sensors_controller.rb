class SensorsController < ApplicationController
  before_action :set_sensor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sensors = Sensor.all
    respond_with(@sensors)
  end

  def show
    @measurements = @sensor.measurements
    respond_with(@sensor, @measurements)
  end

  def new
    @sensor = Sensor.new
    respond_with(@sensor)
  end

  def edit
  end

  def create
    @sensor = Sensor.new(sensor_params)
    @sensor.save
    respond_with(@sensor)
  end

  def update
    @sensor.update(sensor_params)
    respond_with(@sensor)
  end

  def destroy
    @sensor.destroy
    respond_with(@sensor)
  end

  private
    def set_sensor
      @sensor = Sensor.find(params[:id])
    end

    def sensor_params
      params.require(:sensor).permit(:name, :location)
    end
end
