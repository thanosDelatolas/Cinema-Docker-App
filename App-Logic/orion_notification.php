<?php
   
   /**
    * this file receives requests from ORION !!!!
    */
   $request_body=file_get_contents('php://input');

   require 'global_vars.php';

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
   file_put_contents('php://stdout', print_r($notification->data[0]->title->value, TRUE));
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r($notification->data[0]->soon->value, TRUE));
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r($notification->data[0]->playing_now->value, TRUE));
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r("*********************************************\n", TRUE));

   $subID = $notification->subscriptionId;
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r("**************** SubID: *****************\n", TRUE));
   file_put_contents('php://stdout', print_r($subID, TRUE));
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r("*********************************************\n", TRUE));
   
   //get description of the subscription which is the user id! :)
   $curl = curl_init();

   curl_setopt_array($curl, array(
      CURLOPT_URL => 'http://orion_proxy:1027/v2/subscriptions/'.$subID,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'GET',
      CURLOPT_HTTPHEADER => array(
         "X-Auth-Token: magic_key"
     ),
   ));

   $response = curl_exec($curl);

   curl_close($curl);
   $response= json_decode($response);
   $user_id = $response->description;

   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r("**************** USER ID: *******************\n", TRUE));
   file_put_contents('php://stdout', print_r($user_id, TRUE));
   file_put_contents('php://stdout', print_r("\n", TRUE));
   file_put_contents('php://stdout', print_r("*********************************************\n", TRUE));


   /**
    * if this is an initial notification the data storage:
    *    =>save it to collection Subscriptions
    *    =>else save it to collection feed
   */
  $ch = curl_init();
  $url = $GLOBALS['Data-Storage']."?" .http_build_query([
      'notify' => true, //a flag to execute. 
      'subID' => $subID,
      'mov_id' => $notification->data[0]->id,
      'start_date' => $notification->data[0]->start_date->value,
      'end_date' => $notification->data[0]->end_date->value,
      'cin_name' => $notification->data[0]->cin_name->value,
      'soon' => $notification->data[0]->soon->value,
      'playing_now' => $notification->data[0]->playing_now->value,
      'title' => $notification->data[0]->title->value,
      'user_id' => $user_id //which user to notify! :)
  ]);


  curl_setopt($ch,CURLOPT_URL, $url);
  curl_setopt($ch, CURLOPT_HTTPGET, true);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
  curl_setopt($ch, CURLOPT_HTTPHEADER , array(
      "X-Auth-Token: magic_key"
   ));
  
  $response = curl_exec($ch);
  curl_close($ch);
      
   
?>
