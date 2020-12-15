# https://www.dotnetperls.com/convert-ruby
# https://en.wikipedia.org/wiki/Serial_comma
# https://www.geeksforgeeks.org/ruby-case-statement/

def oxford_comma(array)
    #array.join(" and ")
    return array.join(" and ") if array.size < 3 # use and as a separator of array size 2. will just return element if array size is one.
    array[-1] = "and " + array[-1] # when array size 3 or more. change the last item (index -1) to add the and in its place and then add back the original array[-1] value
    array.join(", ") # join everything else with the comma
end
# returns a string without any additional formatting when given a 1-element array
# adds 'and' between elements when given a 2-element array
# adds commas plus a final 'and' when given a 3-element array
# correctly formats arrays of lengths greater than three
