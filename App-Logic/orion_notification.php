<?php
   
   $request_body=file_get_contents('php://input');

  
   file_put_contents('php://stdout', print_r($request_body, TRUE));
   
   $notification = json_decode($request_body);
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r("**************** IMPORTANT: *****************\n", TRUE));
   file_put_contents('php://stdout', print_r($notification->data[0]->id, TRUE));
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r($notification->data[0]->start_date->value, TRUE));
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r($notification->data[0]->end_date->value, TRUE));
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r($notification->data[0]->cin_name->value, TRUE));
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r($notification->data[0]->category->value, TRUE));
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r($notification->data[0]->title->value, TRUE));
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r("*********************************************\n", TRUE));
   
   

   
?>
