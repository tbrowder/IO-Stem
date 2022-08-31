[![Actions Status](https://github.com/tbrowder/IO-Stem/actions/workflows/test.yml/badge.svg)](https://github.com/tbrowder/IO-Stem/actions)

NAME
====

**IO::Stem** - Provides the part of an IO.basename left with the IO.extension removed

SYNOPSIS
========

```raku
use IO::Stem;
say "finance.data".IO.stem;     # OUTPUT: «finance␤»
# aliases for method 'stem':
say "finance.data".IO.barename; # OUTPUT: «finance␤»
say "finance.data".IO.name;     # OUTPUT: «finance␤»
say "finance.data".IO.filename; # OUTPUT: «finance␤»
```

DESCRIPTION
===========

**Class IO::Stem** is an extension of core class `IO::Path` which currently has no method to provide that part of a basename remaining after its extension is removed. Its methods are intended to be candidates for inclusion in the next major release of Raku. Each method name has been found to be used for the same purpose in several well-known domains including `make`, `LaTeX`, and `shell`.

For heavier work on paths it is easier to get a new **IO::Stem** object and save some keystrokes. The same results shown in the code block above can be expressed as follows:

```raku
use IO::Stem;
my $o = IO::Stem.new: "finance.data";
say $o.stem;     # OUTPUT: «finance␤»
# aliases for method 'stem':
say $o.barename; # OUTPUT: «finance␤»
say $o.name;     # OUTPUT: «finance␤»
say $o.filename; # OUTPUT: «finance␤»
```

AUTHOR
======

Tom Browder <tbrowder@acm.org>

COPYRIGHT AND LICENSE
=====================

Copyright 2022 Tom Browder

This library is free software; you may redistribute it or modify it under the Artistic License 2.0.

