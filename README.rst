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

Requirements
============

You'll need a GNU/Linux system to compile and run these programs.
I write and test them in ArchLinux.  Build everything that needs it
with::

  % make

Run the tests (requires Cram_)::

  % make check

GNU make required.

.. _Cram: https://bitheap.org/cram/

C
*

Targets C99, tested using gcc-6.1.1.

C++
***

Targets C++14, tested using gcc-6.1.1.
Some implementations require parts of Boost_.

.. _Boost: https://www.boost.org/

Haskell
*******

Expects ghc, tested using 8.0.1.

Perl5
*****

Perl 5.24 or later.

Perl6
*****

::

  % perl6 --version
  This is Rakudo version 2016.05 built on MoarVM version 2016.05
  implementing Perl 6.c.

Python
******

The example is trivial and will work in any Python version you could
put your hands on nowadays.  But really: Python >= 3.4 or GTFO.  

Zsh
***

I can care about versions older than 5.0.6 if you pay me. :)
