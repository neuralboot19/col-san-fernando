class HomeController < ApplicationController
  def index
    @homes = Home.all
    @abouts = About.all
    @admissions = Admission.all
    @contacts = Contact.all
  end
end
