class ContactsController < InheritedResources::Base
  
  def contactus
    @contact = Contact.first
  end
end
