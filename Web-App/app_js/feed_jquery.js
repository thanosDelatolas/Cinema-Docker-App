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

                    //add all new notifications to the table!
                    var table = document.getElementById("news_feed_table");
                    
                    var i =0;
                    for (i = 0; i < new_notifs.length; i++) {
                        const element = new_notifs[i];

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
                        

                        cel2.innerHTML = element.category;
                        

                        cel3.innerHTML = element.start_date;
                       

                        cel4.innerHTML = element.start_date;
                        
                    }
                    var row_time = table.insertRow(i+1);

                    row_time.insertCell(0);
                    
                    var icon_cell = row_time.insertCell(1);

                    icon_cell.innerHTML = '<i class="fa fa-bell" style="font-size:24px; text-align:"center"; valign:"middle";"></i>';
                    icon_cell.className = "received_notif";
                    
                    icon_cell = row_time.insertCell(2);
                    icon_cell.innerHTML = '<i class="fa fa-caret-up" style="font-size:36px; text-align:"center"; valign:"middle";"></i>'
                    icon_cell.className = "received_notif";

                    var cell_time =row_time.insertCell(3);

                    var today = new Date();
                   
                    cell_time.className = "received_notif";
                    cell_time.innerHTML = "Received on: " +(today.getDay()-1)+"/"+(today.getMonth()+1)+"/"+today.getFullYear()+
                    " at: " +(today.getHours()<10?'0':'') + today.getHours()+":"+(today.getMinutes()<10?'0':'') + today.getMinutes();

                    
                    row_time.insertCell(4);
                    
                    
                }
                
            }
        });
        

    }, 5000);

});