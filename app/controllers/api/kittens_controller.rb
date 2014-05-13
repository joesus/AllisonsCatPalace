class API::KittensController < ApplicationController
  respond_to :json

  def index
    @kittens = Kitten.all
    respond_with @kittens
  end

  def show
    @kitten = Kitten.find(params[:id])
    respond_with @kitten
  end

  def create
    @kitten = Kitten.new(params(kitten_params))
    if @kitten.save
      respond_with @kitten, status: :created, location: @kitten
    else
      respond_with @kitten.errors, status: :unprocessable_entity
    end
  end

  def update
    @kitten = Kitten.find(params[:id])
    if @kitten.update(kitten_params)
      head 200
    else
      respond_with @kitten.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy
    head :no_content
  end

  private
  def set_kitten
    @kitten = Kitten.find(params[:id])
  end

  def kitten_params
    params.require(:kitten).permit!
  end
end