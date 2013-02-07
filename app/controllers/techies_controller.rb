class TechiesController < ApplicationController
  # GET /techies
  # GET /techies.json
  def index
    @techies = Techie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @techies }
    end
  end

  # GET /techies/1
  # GET /techies/1.json
  def show
    @techy = Techie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @techy }
    end
  end

  # GET /techies/new
  # GET /techies/new.json
  def new
    @techy = Techie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @techy }
    end
  end

  # GET /techies/1/edit
  def edit
    @techy = Techie.find(params[:id])
  end

  # POST /techies
  # POST /techies.json
  def create
    @techy = Techie.new(params[:techy])

    respond_to do |format|
      if @techy.save
        format.html { redirect_to @techy, notice: 'Techie was successfully created.' }
        format.json { render json: @techy, status: :created, location: @techy }
      else
        format.html { render action: "new" }
        format.json { render json: @techy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /techies/1
  # PUT /techies/1.json
  def update
    @techy = Techie.find(params[:id])

    respond_to do |format|
      if @techy.update_attributes(params[:techy])
        format.html { redirect_to @techy, notice: 'Techie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @techy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techies/1
  # DELETE /techies/1.json
  def destroy
    @techy = Techie.find(params[:id])
    @techy.destroy

    respond_to do |format|
      format.html { redirect_to techies_url }
      format.json { head :no_content }
    end
  end
end
