class DrugsController < ApplicationController

    def index
        @drugs = Drug.all
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
