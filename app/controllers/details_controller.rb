class DetailsController < ApplicationController


 def index
    @details = Detail.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render json: @details }
	  end
  end  

  def new
   @detail = Detail.new
    respond_to do |format|
    format.html # new.html.erb
    format.json { render json: @detail  }
    end
  end
 
 def show
    @detail = Detail.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: details }
    end
 end

 def create
    @detail = Detail.new(params[:detail])
    respond_to do |format|
      if @detail.save
        format.html { redirect_to action:"index", notice: 'Successfully added.' }
        format.json { render json: @detail, status: :created, location: @detail }
      else
        format.html { render action: "new" }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

def update
	 @detail = Detail.find(params[:id])
      respond_to do |format|
      if @detail.update_attributes(params[:detail])
        format.html { redirect_to @detail, notice: 'successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
end

def edit
	 @detail = Detail.find(params[:id])
end


 def destroy
    @detail = Detail.find(params[:id])
    @detail.destroy

    respond_to do |format|
      format.html { redirect_to @detail }
      format.json { head :no_content }
    end
  end	
end
