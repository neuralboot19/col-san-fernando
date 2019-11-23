class HomeController < ApplicationController
  require 'uri'
  def index
    @abouts = About.all
    @contacts = Contact.all
  end
end
