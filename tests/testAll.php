<?php

// test whether the api returns letters and numbers

require_once __DIR__.'/../api/someApi.php';

$obj = new SomeAPI();

$output = $obj->all();

$data = ['a', 'b', 'c', 1, 2, 3];

if ($output !== $data) exit(1);

exit(0);
