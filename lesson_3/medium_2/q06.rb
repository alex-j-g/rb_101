How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_valid(color)
  color == "blue" || color == "green"
end
#Ruby automatically evaluates staements



# def color_valid(color)
# color = ''
#
#   case color
#   when "blue"
#     true
#   when "green"
#     true
#   else
#     false
#   end
# end
