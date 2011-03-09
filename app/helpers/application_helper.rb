module ApplicationHelper

  def title
    if @title.present?
      "#{@title} | #{app_name}"
    else
      app_name
    end
  end
  
  private
  
  def app_name
    "Mileage Tracker"
  end
end
