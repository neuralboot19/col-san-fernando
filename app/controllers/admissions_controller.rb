class AdmissionsController < ApplicationController
  def index
    @abouts = About.all
    @admissions = Admission.all
    @contacts = Contact.all
  end
end
