class FoodRegistrationsController < ApplicationController
  before_action :set_food_registration, only: %i[show edit update destroy]

  # GET /food_registrations
  def index
    @food_registrations = FoodRegistration.all
  end

  # GET /food_registrations/1
  def show
  end

  # GET /food_registrations/new
  def new
    @food_registration = FoodRegistration.new
  end

  # GET /food_registrations/1/edit
  def edit
  end

  # POST /food_registrations
  def create
    @food_registration = FoodRegistration.new(food_registration_params)

    if @food_registration.save
      redirect_to @food_registration, notice: "Food registration was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /food_registrations/1
  def update
    if @food_registration.update(food_registration_params)
      redirect_to @food_registration, notice: "Food registration was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /food_registrations/1
  def destroy
    @food_registration.destroy
    redirect_to food_registrations_url, notice: "Food registration was successfully deleted."
  end

  private

  def set_food_registration
    @food_registration = FoodRegistration.find(params[:id])
  end

  def food_registration_params
    params.require(:food_registration).permit(
      :name,
      :email,
      :phone,
      :solo,
      :planned_meals,
      :cooked_meals,
      :clean_up_meals,
      :eat_out_meals,
      :meal_types,
      :allergies_and_restrictions,
      :special_requests
    )
  end
end