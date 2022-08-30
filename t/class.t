use Test;

use IO::Stem; # a subclass of Raku core class IO::Path;

plan 11;

my $fname = "/usr/local/data/finance.csv";

# core methods
my $basename  = "finance.csv";
my $extension = "csv";
my $dirname   = "/usr/local/data";

# new subclass methods
my $stem      = "finance";
my $suffix    = $extension;

# and 'stem' aliases
my $barename  = $stem;
my $name      = $stem;
my $filename  = $stem;

# ensure we can use normal IO::Path instantiation for its child class
my $io;
lives-ok {
    $io = IO::Stem.new($fname);
}, "Basic IO::Path instantiation";

# existing IO::Path methods
is "finance.csv".IO.basename, $basename;
is $fname.IO.basename, $basename;
is $fname.IO.extension, $extension;
is $fname.IO.dirname, $dirname;

# new subclass methods
is $fname.IO.stem, $stem;

is $fname.IO.suffix, $suffix;
is $fname.IO.stem, $stem;

# and 'stem' aliases
is $fname.IO.barename, $stem;
is $fname.IO.name, $stem;
is $fname.IO.filename, $stem;
