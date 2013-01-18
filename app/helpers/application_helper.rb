# encoding: utf-8
module ApplicationHelper
  def back_to_list
    content_tag(:p,
    button_to("Zurück zur Startseite", index_path, :method => :get),
    class: "subNavigation")
  end
  
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
  content_tag("div", attributes, &block) 
  end
end
