class DrugsController < ApplicationController

    def autocomplete
        @drugs = Drug.where("proprietaryname ILIKE ?", "%#{params[:term]}%")
        respond_to do |format|
            format.html
            format.json { 
                render json: @drugs.order(:proprietaryname).map(&:proprietaryname)
            }
        end
    end

    def index
        @drugs = Drug.all.order(:proprietaryname)
    end

    def show
        @drug = Drug.find(params[:id])
    end

    def new
    end

    def create
        @drug = Drug.new(drug_params)

        @drug.save
        redirect_to @drug
    end

    private
        def drug_params
            params.require(:drug).permit(:name,:kind)
        end

end
