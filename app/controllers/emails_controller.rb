class EmailsController < ApplicationController
  require 'faker'

  def index
  end

  def create
    @email=Email.create(object: Faker::Lorem.sentence,
      body: Faker::Lorem.paragraphs,
    read: false)

      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
      end
  end

  def show
    @email=Email.find(params[:id])
    @email.update(read: true)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
      end
  end

  def update
    @email=Email.find(params[:id])
    @email.update(:read => params[:read])
    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end
end
