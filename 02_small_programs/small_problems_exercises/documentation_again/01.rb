#1

# Locate the ruby documentation for methods File::path and File#path. How are they different?





# File Class
# Class Method:  ::path
File.path("/dev/null")          #=> "/dev/null"
File.path(Pathname.new("/tmp")) #=> "/tmp"

# Returns the string representation of the path





# Instance Method:  #path
File.new("testfile").path               #=> "testfile"
File.new("/tmp/../tmp/xxx", "w").path   #=> "/tmp/../tmp/xxx"

# Returns the pathname used to create file as a string. Does not normalize the name.
# The pathname may not point to the file corresponding to file. For instance, the pathname becomes void when the file has been moved or deleted.
# This method raises IOError for a file created using File::Constants::TMPFILE because they don't have a pathname.

f = File.new('/my-file.txt')
puts f.path


# Answer:

# The methods can be found in File Class

# I know the differentce is the :: one is a class method (used on File directly) and the # one is an instance method (used on the filename (or if you want to create a new file on File.new).
# But I'm not 100% sure how else they differ. The docs say they both return a string of the path.  Not sure what else each is doing behind the scenes.



# Unfortunately, testing the above code in irb or ruby filename is throwing an error: "No such file or directory @ rb_sysopen - file", which I'm not sure about b/c it seems the code is trying to
# create that file. So I'm not sure what else it needs to do so and not raise the exception.


# Read some of the other students' answers and found this one:
# "It should also be noted that if the file in question does not have a clear path, this will raise an error message"
# Should have seemed obvious, but basically I need to add the full path in order for it not to raise the exception (error message)
# b/c the program won't just recognize relative path or current directory I guess.


f = File.new('~environment/rb_101_programming_foundations/02_small_programs/small_problems_exercises/my-file.txt')
puts f.path

# But the above doesn't work either (same error), so I'm not sure what the path needs to be on C9.