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
end
