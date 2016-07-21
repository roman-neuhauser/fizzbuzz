.. vim: ft=rst sw=2 sts=2 et tw=72

#######################################################################
                          FizzBuzz Excercises
#######################################################################
=======================================================================
                      Too Many Ways to Skin a Cat
=======================================================================

This is a collection of my takes on the FizzBuzz programming excercise.
Each implementation is confined to a single file with a short note at
the top commenting on some angle of the implementation.

.. contents::

Requirements
============

You'll need a BSD or GNU/Linux system with GNU make plus compilers and
interpreters for any implementations you want to run.  Implementations
for which no compiler or interpreter is found will be skipped.

Create makefiles and auxiliary build scripts::

  % ./configure [arguments]

See `./configure --help` for some of the available knobs.

Transform the various sources into executable code::

  % make

Run the tests::

  % make check

C
*

Targets C99, tested using gcc-5.x, gcc-6.x, clang 3.4.x, clang-3.8.x
on ArchLinux, DragonFlyBSD, and FreeBSD.

C++
***

Targets C++14, see above for compilers.

Some implementations require parts of Boost_.

.. _Boost: https://www.boost.org/

To build these on FreeBSD, make sure to have gcc6 installed::

  % test -x /usr/local/bin/c++6 || sudo pkg install gcc6

And configure the build system for it::

  % ./configure CXX=/usr/local/bin/c++6 LDFLAGS=-Wl,-rpath=/usr/local/lib/gcc6

Erlang
******

Works for me in ``Erlang/OTP 19 [erts-8.0]``.

Haskell
*******

Expects ghc, tested using 8.x.

JavaScript
**********

Implementations rely on ES6 features.  Tested with node-6.3.0 or newer.

LiveScript
**********

Tested with livescript-1.5.x or newer and node-6.3.0 or newer.

Nim
***

Works for me in Nim 0.11.x and 0.14.x.

Perl5
*****

Works for me using Perl 5.24 or later.

Perl6
*****

Works for me in this or newer::

  % perl6 --version
  This is Rakudo version 2016.05 built on MoarVM version 2016.05
  implementing Perl 6.c.

PHP
***

Requires PHP 5.3 or later.

Python
******

Works for me in CPython 3.5.

Ruby
****

Works for me in mruby 2.3.x.

Zsh
***

Works for me in Zsh 5.2.


License
=======

|licico|_

This work is licensed under a
`Creative Commons Attribution-ShareAlike 4.0 International License`__.

.. __:
  http://creativecommons.org/licenses/by-sa/4.0/

.. _licico: http://creativecommons.org/licenses/by-sa/4.0/

.. |licico| image:: https://i.creativecommons.org/l/by-sa/4.0/88x31.png
            :alt:   Creative Commons License
