module ApplicationHelper

 def hidden_div_if(condition, attrributes = {}, &block)
    
    if condition
      attrributes["style"] = "display: none"
    end

    content_tag("div", attrributes, &block)
 end

end
