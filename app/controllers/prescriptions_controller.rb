class PrescriptionsController < ApplicationController

  def new
    @prescription = Prescription.new
  end

  def create
  end
end
