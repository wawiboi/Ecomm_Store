class AboutsController < InheritedResources::Base
  
  def aboutus
    
    @about = About.first
    
  end
  
end
