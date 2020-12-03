/**
 * this file is for USERS inorder to read their feed online
 */

$(document).ready(function(){
    
    //*********** jquery for movies.php **********************
    var application_logic_url = "http://172.18.1.8/app_logic_req.php";
    /**
     * this function is executed every 5 seconds!
     * new notifications has read=false in Mongo DB!
     */
    var user_id = $("#user_id").text();
    console.log(user_id);
    setInterval(function(){ 
       
        $.ajax({
            type: "post",
            //allow ajax to make the request in application logic
            //header: {'Access-Control': application_logic_url },
            url: application_logic_url,
            dataType:"json",
            data: {
                get_new_notifications: true, //to know which section of code will be executed!
                user_id : user_id,
            },

            success: function (response) {
                //if rows added
                if(response.count == 0){
                    console.log('No new notifications');
                }
                else{
                    new_notifs = response.new_notifications;
                    var stop_playing_notifications = false, soon_notifications = false;
                    var i =0;
                    var row_stop_playing=0;
                    var row_comming_soon=0;
                    for (i = 0; i < new_notifs.length; i++) {
        
                        const element = new_notifs[i];
                        
                        if(element.stop_playing == "1"){
                            //add all new notifications to the table!
                            var table = document.getElementById("stop_playing_table");
                            var row = table.insertRow(i+1);

                            var cel0 =row.insertCell(0);
                            var cel1 =row.insertCell(1);
                            var cel2 =row.insertCell(2);
                            var cel3 =row.insertCell(3);
                            

                            cel0.innerHTML = "News for: "+element.title;
                            cel0.className = 'inserted_online';
                            cel0.scope = 'row';
                            
                            cel1.innerHTML = element.cin_name;
                            
                            cel2.innerHTML = element.end_date;
                            cel3.innerHTML = element.received;

                            stop_playing_notifications = true;
                            row_stop_playing++;
                        }
                        //soon and stop_playing never both 1
                        if(element.soon == "1"){
                            //add all new notifications to the table!
                            var table = document.getElementById("coming_soon_table");
                            var row = table.insertRow(i+1);

                            var cel0 =row.insertCell(0);
                            var cel1 =row.insertCell(1);
                            var cel2 =row.insertCell(2);
                            var cel3 =row.insertCell(3);
                            var cel4 =row.insertCell(4);
                            

                            cel0.innerHTML = "News for: "+element.title;
                            cel0.className = 'inserted_online';
                            cel0.scope = 'row';
                            
                            cel1.innerHTML = element.cin_name;
                            cel2.innerHTML = element.start_date;
                            cel3.innerHTML = element.end_date;
                            cel4.innerHTML = element.received;


                            soon_notifications = true;
                            row_comming_soon++;
                        }

                        
                        
                    }
                    if(stop_playing_notifications){
                        var table = document.getElementById("stop_playing_table");
                        var row_time = table.insertRow(row_stop_playing+1);

                        row_time.insertCell(0);
                        var icon_cell = row_time.insertCell(1);

                        icon_cell.innerHTML = '<i class="fa fa-bell" style="font-size:24px; text-align:"center"; valign:"middle";"></i>';
                        icon_cell.className = "received_notif";
                        
                       

                        var cell_time =row_time.insertCell(2);

                        var today = new Date();
                    
                        cell_time.className = "received_notif";
                        cell_time.innerHTML = "Received on: " +(today.getDay()-1)+"/"+(today.getMonth()+1)+"/"+today.getFullYear()+
                        " at: " +(today.getHours()<10?'0':'') + today.getHours()+":"+(today.getMinutes()<10?'0':'') + today.getMinutes();

                        
                        row_time.insertCell(3);
                        
 
                    }

                    if(soon_notifications){
                        var table = document.getElementById("coming_soon_table");
                        var row_time = table.insertRow(row_comming_soon+1);

                        row_time.insertCell(0);
                        var icon_cell = row_time.insertCell(1);

                        icon_cell.innerHTML = '<i class="fa fa-bell" style="font-size:24px; text-align:"center"; valign:"middle";"></i>';
                        icon_cell.className = "received_notif";
                        
                       

                        var cell_time =row_time.insertCell(2);

                        var today = new Date();
                    
                        cell_time.className = "received_notif";
                        cell_time.innerHTML = "Received on:";

                        
                        cell_time=row_time.insertCell(3);
                        cell_time.className="received_notif";
                        cell_time.innerHTML=(today.getDay()-1)+"/"+(today.getMonth()+1)+"/"+today.getFullYear();
                        
                        cell_time=row_time.insertCell(4);
                        cell_time.className="received_notif";
                        cell_time.innerHTML= " at: " +(today.getHours()<10?'0':'') + today.getHours()+":"+(today.getMinutes()<10?'0':'') + today.getMinutes();
                       
 
 

                    }
                                       
                    
                }
                
            }
        });
        

    }, 5000);

});