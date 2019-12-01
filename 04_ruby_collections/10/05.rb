#5

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# => ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

# Find the index of the first name that starts with "Be"

# A:

p flintstones.index { |el| el.start_with?("Be") }

# CORRECT

# Provided Answer:

flintstones.index { |name| name[0, 2] == "Be" }