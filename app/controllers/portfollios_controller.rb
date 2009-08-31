class PortfolliosController < ApplicationController
  # GET /portfollios
  # GET /portfollios.xml
  def index
    @portfollios = Portfollio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @portfollios }
    end
  end

  # GET /portfollios/1
  # GET /portfollios/1.xml
  def show
    @portfollio = Portfollio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @portfollio }
    end
  end

  # GET /portfollios/new
  # GET /portfollios/new.xml
  def new
    @portfollio = Portfollio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @portfollio }
    end
  end

  # GET /portfollios/1/edit
  def edit
    @portfollio = Portfollio.find(params[:id])
  end

  # POST /portfollios
  # POST /portfollios.xml
  def create
    @portfollio = Portfollio.new(params[:portfollio])

    respond_to do |format|
      if @portfollio.save
        flash[:notice] = 'Portfollio was successfully created.'
        format.html { redirect_to(@portfollio) }
        format.xml  { render :xml => @portfollio, :status => :created, :location => @portfollio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @portfollio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /portfollios/1
  # PUT /portfollios/1.xml
  def update
    @portfollio = Portfollio.find(params[:id])

    respond_to do |format|
      if @portfollio.update_attributes(params[:portfollio])
        flash[:notice] = 'Portfollio was successfully updated.'
        format.html { redirect_to(@portfollio) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @portfollio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /portfollios/1
  # DELETE /portfollios/1.xml
  def destroy
    @portfollio = Portfollio.find(params[:id])
    @portfollio.destroy

    respond_to do |format|
      format.html { redirect_to(portfollios_url) }
      format.xml  { head :ok }
    end
  end
end
