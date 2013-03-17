class ConnectiontypesController < ApplicationController
  # GET /connectiontypes
  # GET /connectiontypes.json
  def index
    @connectiontypes = Connectiontype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @connectiontypes }
    end
  end

  # GET /connectiontypes/1
  # GET /connectiontypes/1.json
  def show
    @connectiontype = Connectiontype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @connectiontype }
    end
  end

  # GET /connectiontypes/new
  # GET /connectiontypes/new.json
  def new
    @connectiontype = Connectiontype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @connectiontype }
    end
  end

  # GET /connectiontypes/1/edit
  def edit
    @connectiontype = Connectiontype.find(params[:id])
  end

  # POST /connectiontypes
  # POST /connectiontypes.json
  def create
    @connectiontype = Connectiontype.new(params[:connectiontype])

    respond_to do |format|
      if @connectiontype.save
        format.html { redirect_to @connectiontype, notice: 'Connectiontype was successfully created.' }
        format.json { render json: @connectiontype, status: :created, location: @connectiontype }
      else
        format.html { render action: "new" }
        format.json { render json: @connectiontype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /connectiontypes/1
  # PUT /connectiontypes/1.json
  def update
    @connectiontype = Connectiontype.find(params[:id])

    respond_to do |format|
      if @connectiontype.update_attributes(params[:connectiontype])
        format.html { redirect_to @connectiontype, notice: 'Connectiontype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @connectiontype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connectiontypes/1
  # DELETE /connectiontypes/1.json
  def destroy
    @connectiontype = Connectiontype.find(params[:id])
    @connectiontype.destroy

    respond_to do |format|
      format.html { redirect_to connectiontypes_url }
      format.json { head :no_content }
    end
  end
end
