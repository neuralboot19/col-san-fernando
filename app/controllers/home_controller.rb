class HomeController < ApplicationController
  def index
    @homes = Home.all
    @abouts = About.all
    @admissions = Admission.all
    @classrooms = Classroom.all
    @contacts = Contact.all
  end
end
