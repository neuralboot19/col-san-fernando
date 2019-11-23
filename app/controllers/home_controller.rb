class HomeController < ApplicationController
  require 'uri'
  def index
    @homes = Home.all
    @abouts = About.all
    @contacts = Contact.all
  end
end
