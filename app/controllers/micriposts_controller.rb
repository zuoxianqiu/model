class MicripostsController < ApplicationController
  # GET /micriposts
  # GET /micriposts.json
  def index
    @micriposts = Micripost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micriposts }
    end
  end

  # GET /micriposts/1
  # GET /micriposts/1.json
  def show
    @micripost = Micripost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micripost }
    end
  end

  # GET /micriposts/new
  # GET /micriposts/new.json
  def new
    @micripost = Micripost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micripost }
    end
  end

  # GET /micriposts/1/edit
  def edit
    @micripost = Micripost.find(params[:id])
  end

  # POST /micriposts
  # POST /micriposts.json
  def create
    @micripost = Micripost.new(params[:micripost])

    respond_to do |format|
      if @micripost.save
        format.html { redirect_to @micripost, notice: 'Micripost was successfully created.' }
        format.json { render json: @micripost, status: :created, location: @micripost }
      else
        format.html { render action: "new" }
        format.json { render json: @micripost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micriposts/1
  # PUT /micriposts/1.json
  def update
    @micripost = Micripost.find(params[:id])

    respond_to do |format|
      if @micripost.update_attributes(params[:micripost])
        format.html { redirect_to @micripost, notice: 'Micripost was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @micripost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micriposts/1
  # DELETE /micriposts/1.json
  def destroy
    @micripost = Micripost.find(params[:id])
    @micripost.destroy

    respond_to do |format|
      format.html { redirect_to micriposts_url }
      format.json { head :ok }
    end
  end
end
