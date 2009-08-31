class ProffesionsController < ApplicationController
  # GET /proffesions
  # GET /proffesions.xml
  def index
    @proffesions = Proffesion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @proffesions }
    end
  end

  # GET /proffesions/1
  # GET /proffesions/1.xml
  def show
    @proffesion = Proffesion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @proffesion }
    end
  end

  # GET /proffesions/new
  # GET /proffesions/new.xml
  def new
    @proffesion = Proffesion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @proffesion }
    end
  end

  # GET /proffesions/1/edit
  def edit
    @proffesion = Proffesion.find(params[:id])
  end

  # POST /proffesions
  # POST /proffesions.xml
  def create
    @proffesion = Proffesion.new(params[:proffesion])

    respond_to do |format|
      if @proffesion.save
        flash[:notice] = 'Proffesion was successfully created.'
        format.html { redirect_to(@proffesion) }
        format.xml  { render :xml => @proffesion, :status => :created, :location => @proffesion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @proffesion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /proffesions/1
  # PUT /proffesions/1.xml
  def update
    @proffesion = Proffesion.find(params[:id])

    respond_to do |format|
      if @proffesion.update_attributes(params[:proffesion])
        flash[:notice] = 'Proffesion was successfully updated.'
        format.html { redirect_to(@proffesion) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @proffesion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /proffesions/1
  # DELETE /proffesions/1.xml
  def destroy
    @proffesion = Proffesion.find(params[:id])
    @proffesion.destroy

    respond_to do |format|
      format.html { redirect_to(proffesions_url) }
      format.xml  { head :ok }
    end
  end
end
