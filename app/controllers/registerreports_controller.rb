class RegisterreportsController < ApplicationController

  def index
    @registerreports = Registerreport.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render json: @registerreports }
	  end
  end  

  def new
   @registerreport = Registerreport.new
    respond_to do |format|
    format.html # new.html.erb
    format.json { render json: @registerreport  }
    end
  end


  def create
	 @registerreport = Registerreport.new(params[:registerreport])
    respond_to do |format|
      if @registerreport.save
        format.html { redirect_to action:"index", notice: 'Successfully added.' }
        format.json { render json: @registerreport, status: :created, location: @registerreport }
      else
        format.html { render action: "new" }
        format.json { render json: @registerreport.errors, status: :unprocessable_entity }
      end
    end
  end 


 def update
   @registerreport = Registerreport.find(params[:id])
      respond_to do |format|
      if @registerreport.update_attributes(params[:detail])
        format.html { redirect_to @registerreport, notice: 'successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @registerreport.errors, status: :unprocessable_entity }
      end
    end
  end


 def edit
   @registerreport = Registerreport.find(params[:id])
 end


 def destroy
    @registerreport = Registerreport.find(params[:id])
    @registerreport.destroy

    respond_to do |format|
      format.html { redirect_to @registerreport }
      format.json { head :no_content }
    end
  end 
end


