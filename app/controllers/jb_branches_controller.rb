class JbBranchesController < ApplicationController
  
def index
  @jb_branches = JbBranch.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render json: @jb_branches }
  	end
end

def new
	@jb_branch = JbBranch.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jb_branch }
    end
end

 def show
  @jb_branch = JbBranch.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jb_branch }
    end
 end

def create
  @jb_branch = JbBranch.new(params[:jb_branch])
    respond_to do |format|
      if @jb_branch.save
        format.html { redirect_to @jb_branch, notice: 'Branch successfully added.' }
        format.json { render json: @jb_branch, status: :created, location: @jb_branch }
      else
        format.html { render action: "new" }
        format.json { render json: @jb_branch.errors, status: :unprocessable_entity }
      end
    end
end

def update
 @jb_branch = JbBranch.find(params[:id])
    respond_to do |format|
      if @jb_branch.update_attributes(params[:jb_branch])
        format.html { redirect_to @jb_branch, notice: 'Branch Details successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jb_branch.errors, status: :unprocessable_entity }
      end
  end
end


def edit
	@jb_branch = JbBranch.find(params[:id])
end


def destroy
  @jb_branch = JbBranch.find(params[:id])
  @jb_branch.destroy
    respond_to do |format|
      format.html { redirect_to @jb_branch }
      format.json { head :no_content }
    end
end

def newlinkkpi
  @businesskpi = Businesskpi.new
  @jb_branch = JbBranch.find(params[:jbbranch_id])
  @mapped_kpi_ids = Businesskpi.where(:jbbranch_id => @jb_branch.id).pluck('kpi_id')
  @kpi = Kpi.all
    respond_to do |format|
    format.html # index.html.erb
    format.xml  { render json: @businesskpi }
  end
end  

def linkkpi
  #
  @jb_branch = JbBranch.find(params[:jbbranch_id])
  @mapped_kpi_ids = Businesskpi.where(:jbbranch_id => @jb_branch.id).pluck('kpi_id')  
  delete_kpi_ids = @mapped_kpi_ids - params[:kpi_ids]
  Businesskpi.delete(delete_kpi_ids)
  add_kpi_ids= params[:kpi_ids] - @mapped_kpi_ids
    add_kpi_ids.each do |kpi_id|
      bk=Businesskpi.new
      bk.kpi_id = kpi_id.to_i
      bk.jbbranch_id = params[:jbbranch_id].to_i
      jb_branch=JbBranch.find(bk.jbbranch_id)
      bk.branchname=jb_branch.branchname
      kpi = Kpi.find(kpi_id)
      bk.kpiname = kpi.kpiname
      bk.kpifrequency = kpi.kpifrequency
      bk.kpicategory = kpi.kpicategory
      bk.save
  end   
  respond_to do |format|
    format.html # index.html.erb
    format.xml  { render json: @businesskpi }
  end
end
end 
