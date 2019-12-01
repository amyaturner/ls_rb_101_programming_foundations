#9

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number


p flintstones = flintstones.assoc("Barney")

=begin

NOTE: .assoc on a hash or array finds the first match by passing the key or index, whereas
      .rassoc (with the 'r' added) called on a hash or array finds the first match by passing the value.

=end