class ContactController < ApplicationController
  def index
    @abouts = About.all
    @contacts = Contact.all
  end
end
