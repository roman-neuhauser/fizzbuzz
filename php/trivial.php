#!/usr/bin/php
<?php

error_reporting(E_ALL);
ini_set('display_errors', 'stderr');

for ($i = 1; $i < 101; ++$i) {
  $s = '';
  if ($i % 3 == 0) $s .= 'Fizz';
  if ($i % 5 == 0) $s .= 'Buzz';
  printf("%s\n", $s ?: $i);
}
