#2-c:

# COMBINE first and last names
# Then sort by last name (but leave the full names displayed with first name first).

fnames = ['Beth', 'Happy', 'Amy']
lnames = ['Gilmore', 'Turner', 'Johnson']

full_names = fnames.each do |fname|
  lnames.each do |lname|
    case lname
    when 'Gilmore'
      if fname == "Happy"
        fname << " " << lname
      end
    when 'Turner'
      if fname == 'Amy'
        fname << " " << lname
      end
    when 'Johnson'
      if fname == "Beth"
        fname << " " << lname
      end
    end
  end
end

full_names # => ['Beth Johnson', 'Happy Gilmore', 'Amy Turner']

nested_full_names = full_names.map { |name| name.split }
# => [["Beth", "Johnson"], ["Happy", "Gilmore"], ["Amy", "Turner"]]

sorted_names = nested_full_names.sort_by { |name| name[1] }
# => [["Happy", "Gilmore"], ["Beth", "Johnson"], ["Amy", "Turner"]]

sorted_names.map! do |name|
  name.join(" ")
end

p sorted_names


# OR (much better):

sort_names = full_names.sort_by do |name|
  name.split[1]
end
    
p sort_names