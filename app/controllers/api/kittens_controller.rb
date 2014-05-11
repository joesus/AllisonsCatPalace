module API

  class KittensController < ApplicationController

    def index
      render json: Kitten.all
    end

    def show
      render json: Kitten.find(params[:id])
    end
  end

end