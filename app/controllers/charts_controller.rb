class ChartsController < ApplicationController
  caches_page :new
  # before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  
  # GET /charts
  # GET /charts.xml
  def index
    @charts = Chart.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @charts }
    end
  end

  # GET /charts/1
  # GET /charts/1.xml
  def show
    @chart = Chart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @chart }
    end
  end

  # GET /charts/new
  # GET /charts/new.xml
  def new
    @chart = Chart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chart }
    end
  end

  # GET /charts/1/edit
  def edit
    @chart = Chart.find(params[:id])
  end

  # POST /charts
  # POST /charts.xml
  def create
    @chart = Chart.new(params[:chart])

    respond_to do |format|
      if @chart.save
        format.html { redirect_to(@chart) }
        format.js
        format.xml  { render :xml => @chart, :status => :created, :location => @chart }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /charts/1
  # PUT /charts/1.xml
  def update
    @chart = Chart.find(params[:id])

    respond_to do |format|
      if @chart.update_attributes(params[:chart])
        format.html { redirect_to(@chart) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /charts/1
  # DELETE /charts/1.xml
  def destroy
    @chart = Chart.find(params[:id])
    @chart.destroy

    respond_to do |format|
      format.html { redirect_to(charts_url) }
      format.xml  { head :ok }
    end
  end
  
  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "zodiac" && password == "killer"
    end
  end
end
