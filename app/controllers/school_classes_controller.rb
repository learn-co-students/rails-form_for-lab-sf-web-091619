class SchoolClassesController < ApplicationController
    def index
        @schoolclass = SchoolClass.all
     end
    
    def show
        @schoolclass = SchoolClass.find(params[:id])
    end
    
    def new
        @schoolclass = SchoolClass.new
    end
    
    def create
        @schoolclass = SchoolClass.create(school_classes_params)
        redirect_to school_class_path(@schoolclass)
    end
    
    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end
    
    def update
        @schoolclass = SchoolClass.update(school_classes_params)
        redirect_to school_class_path(@schoolclass)
    end
    
    def delete
    end
    
    private
    def school_classes_params
        params.require(:school_class).permit(:title, :room_number)
     end
 
end
