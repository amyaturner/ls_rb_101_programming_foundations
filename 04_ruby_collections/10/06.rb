#6

# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.map { |el| el.slice(0, 3) } # or el[2, 3]

# ALMOST CORRECT

# Since it says 'ammend' in the instructions, that means mutation, so should be .map! (with the bang).
