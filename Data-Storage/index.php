<?php
    $arr = json_decode('{"subscriptionId":"5fc12a81522fc89ff00b1b0f","data":[{"id":"5fad031a8ef6a0295698d826","type":"Movie","start_date":{"type":"Text","value":"2010-03-11","metadata":{}},"end_date":{"type":"Text","value":"2021-11-12","metadata":{}},"cin_name":{"type":"Text","value":"Cine Thisio in Athens","metadata":{}},"still_playing":{"type":"Boolean","value":true,"metadata":{}}}]}');
    var_dump($arr->data[0]->id);
?>
