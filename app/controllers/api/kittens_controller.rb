module API

  class KittensController < ApplicationController

    respond_to :json

    def index
      @kittens = Kitten.all
      respond_with @kittens
    end

    def show
      @kitten = Kitten.find(params[:id])
      respond_with @kitten
    end
  end

end