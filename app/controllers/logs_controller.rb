require 'json'


class LogsController < ApplicationController

  def index
    @log = Log.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @log }
    end
  end


  # GET /logs/1
  # GET /logs/1.xml
  def show
    @log = Log.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @log }
      format.json { render :layout => false, :json => @log.to_json }
    end
  end

  # GET /logs/new
  # GET /logs/new.xml
  def new
    @log = Log.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @log }
    end
  end

  # GET /logs/1/edit
  def edit
    @log = Log.find(params[:id])
  end

  # POST /logs
  # POST /logs.xml
  def create
    @log = Log.new(params[:log])

    respond_to do |format|
      if @log.save
        format.html { redirect_to(@log, :notice => 'Log was successfully created.') }
        format.xml { render :xml => @log, :status => :created, :location => @log }
        format.json { render_to_string :"success" }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /logs/1
  # PUT /logs/1.xml
  def update
    @log = Log.find(params[:id])

    respond_to do |format|
      if @log.update_attributes(params[:log])
        format.html { redirect_to(@log, :notice => 'Log was successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /logs/1
  # DELETE /logs/1.xml
  def destroy
    @log = Log.find(params[:id])
    @log.destroy

    respond_to do |format|
      format.html { redirect_to(logs_url) }
      format.xml { head :ok }
    end
  end

  def iAdd
    @result
#    @log = Log.new(params[:log])
    @log = Log.new(
        :value => params[:value],
        :category => params[:category],
        :note => params[:note],
        :own => params[:own],
        :user_id => params[:user_id]
    )
    if @log.save
      result = "success";
    else
      result = "fail";
    end
    render :json => result
  end

end
