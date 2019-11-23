class AboutusController < ApplicationController
  def index
    @abouts = About.all
    @contacts = Contact.all
  end
end
