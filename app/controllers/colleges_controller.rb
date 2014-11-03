class CollegesController < ApplicationController

  def new
    @college = College.new
  end

 def index
 end

 def create
  @college = College.new(college_params)
    if @college.save
      redirect_to mandya_famous_college_path
    else
      redirect_to root_path
    end
 end

 private
 def college_params
  params.require(:college).permit(:name, :email, :address, :phone, :mobile_number, :link, :thaluk_id)
 end

end
