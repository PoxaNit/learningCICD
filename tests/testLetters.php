<?php

// test whether the api returns only letters

require_once __DIR__.'/../api/someApi.php';

$obj = new SomeAPI();

$output = $obj->letters();

$data = ['a', 'b', 'c'];

if ($output !== $data) exit(1);

exit(0);
