class EmailsController < ApplicationController
  require 'faker'

  def index
  end

  def create
    @email=Email.create(object: Faker::Lorem.sentence,
      body: Faker::Lorem.paragraphs)

      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
      end
  end

  def show
  end

  def destroy
  end
end
