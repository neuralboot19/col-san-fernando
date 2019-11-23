class HomeController < ApplicationController
  def index
    @homes = Home.all
    @abouts = About.all
    @contacts = Contact.all
  end
end
