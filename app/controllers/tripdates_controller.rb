class TripdatesController < ApplicationController
  # GET /tripdates
  # GET /tripdates.json
  def index
    @tripdates = Tripdate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tripdates }
    end
  end

  # GET /tripdates/1
  # GET /tripdates/1.json
  def show
    @tripdate = Tripdate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tripdate }
    end
  end

  # GET /tripdates/new
  # GET /tripdates/new.json
  def new
    @tripdate = Tripdate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tripdate }
    end
  end

  # GET /tripdates/1/edit
  def edit
    @tripdate = Tripdate.find(params[:id])
  end

  # POST /tripdates
  # POST /tripdates.json
  def create
    @tripdate = Tripdate.new(params[:tripdate])

    respond_to do |format|
      if @tripdate.save
        format.html { redirect_to @tripdate, notice: 'Tripdate was successfully created.' }
        format.json { render json: @tripdate, status: :created, location: @tripdate }
      else
        format.html { render action: "new" }
        format.json { render json: @tripdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tripdates/1
  # PUT /tripdates/1.json
  def update
    @tripdate = Tripdate.find(params[:id])

    respond_to do |format|
      if @tripdate.update_attributes(params[:tripdate])
        format.html { redirect_to @tripdate, notice: 'Tripdate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tripdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tripdates/1
  # DELETE /tripdates/1.json
  def destroy
    @tripdate = Tripdate.find(params[:id])
    @tripdate.destroy

    respond_to do |format|
      format.html { redirect_to tripdates_url }
      format.json { head :no_content }
    end
  end
end
