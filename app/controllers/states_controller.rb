class StatesController < ApplicationController
  def index
    states = State.all
    render json: states, status: :ok
  end

  def show
    state = State.find(params[:id])
    render json: state, status: :ok
  end

  def create
    state = State.new(state_params)
    if state.save
      render json: state, status: :created
    else
      render json: { errors: state.errors }, status: :unprocessable_entity
    end
  end

  def update
    state = State.find(params[:id])
    if state.update(state_params)
      render json: state, status: :ok
    else
      render json: { errors: state.errors }, status: :unprocessable_entity
    end
  end

  private

  def state_params
    params.require(:state).permit(:name, :country_id)
  end
end
