class AdmissionsController < ApplicationController
  def index
    @abouts = About.all
    @contacts = Contact.all
  end
end
