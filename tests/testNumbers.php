<?php

// test whether the api returns only numbers

require_once __DIR__.'/../api/someApi.php';

$obj = new SomeAPI();

$output = $obj->numbers();

$data = [1, 2, 3];

if ($output !== $data) exit(1);

exit(0);
