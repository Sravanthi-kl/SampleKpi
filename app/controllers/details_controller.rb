class DetailsController < ApplicationController

  def index
    @details = Detail.all
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render json: @details }
      end
  end  

  def new
    @details = Detail.all 
    @detail = Detail.new      
    business_kpi_id=Businesskpi.find(params[:mapped_kpi_id])  
    @kpi = Kpi.find(business_kpi_id.kpi_id)
    @jb_branch = JbBranch.find(business_kpi_id.jbbranch_id)   
   
      respond_to do |format|
        format.html # new.html.erb
        format.json { render :text => @detail.to_json }
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
    @details = Detail.all  
    @detail = Detail.new(params[:detail]) 
    @kpi = Kpi.find(@detail.kpi_id)  
    @jb_branch=JbBranch.find(@detail.jbbranch_id)  
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
    @kpi = Kpi.find(@detail.kpi_id)  
  end

  def destroy
    @detail = Detail.find(params[:id])
    @detail.destroy
      respond_to do |format|
        format.html { redirect_to @detail }
        format.json { head :no_content }
      end
  end 

  def get_target_percentage
    actual_value = params[:actual_value]
    target_value = params[:target_value]
    percet =( (actual_value).to_f / (target_value).to_f * 100)-100
    render :text => percet
  end


  def addlinkkpi
    @businesskpi = Businesskpi.new
    @jb_branch = JbBranch.find(params[:jbbranch_id]) 
    @mapped_kpi_ids = Businesskpi.where(:jbbranch_id => @jb_branch.id)           
  end 

  def show_graph
  @detail = Detail.find(params[:id])
  # or find by some of the name of time params

  respond_to do |f|
    format.json { render :json => @detail}
  end
end
end
