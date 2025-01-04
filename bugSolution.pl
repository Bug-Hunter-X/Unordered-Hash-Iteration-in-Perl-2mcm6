use strict; use warnings; use List::Util qw(shuffle); my %hash = (a => 1, b => 2, c => 3); #If you need to maintain order, you could use a different data structure like an array of arrays or hashes.  Alternatively, if you want a random order, use shuffle #For maintaining insertion order my @sorted_keys = sort {$a cmp $b} keys %hash; foreach my $key (@sorted_keys) { print "$key => $hash{$key}\n"; } #For random order, use List::Util's shuffle function my @shuffled_keys = shuffle keys %hash; foreach my $key (@shuffled_keys) { print "$key => $hash{$key}\n"; } 