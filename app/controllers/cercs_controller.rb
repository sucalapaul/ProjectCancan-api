class CercsController < ApplicationController
  # GET /cercs
  # GET /cercs.json
  def index
    @cercs = Cerc.all

    render json: @cercs
  end

  # GET /cercs/1
  # GET /cercs/1.json
  def show
    @cerc = Cerc.find(params[:id])

    render json: @cerc
  end

  # GET /cercs/new
  # GET /cercs/new.json
  def new
    @cerc = Cerc.new

    render json: @cerc
  end

  # POST /cercs
  # POST /cercs.json
  def create
    @cerc = Cerc.new(params[:cerc])

    if @cerc.save
      render json: @cerc, status: :created, location: @cerc
    else
      render json: @cerc.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cercs/1
  # PATCH/PUT /cercs/1.json
  def update
    @cerc = Cerc.find(params[:id])

    if @cerc.update_attributes(params[:cerc])
      head :no_content
    else
      render json: @cerc.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cercs/1
  # DELETE /cercs/1.json
  def destroy
    @cerc = Cerc.find(params[:id])
    @cerc.destroy

    head :no_content
  end
end
