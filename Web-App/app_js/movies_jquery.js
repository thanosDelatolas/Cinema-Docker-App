/**
 * In this file we send some requests to Application logic when a heart-button is clicked!
*/

$(document).ready(function(){
    //*********** jquery for movies.php **********************
    var application_logic_url = "http://172.18.1.8/rest_api.php"
    //for all buttons with id=remove_fav_1,remove_fav_2,...etc
    $('button[id^="remove_fav_"]').click(function(){

        //get mov_id,user_id
        var user_id = $(this).closest("tr").find('td:eq(5)').text();
        var mov_id = $(this).closest("tr").find('td:eq(6)').text();
        console.log("Delete fav: \nUser:"+user_id+"\nmovid: "+mov_id);
        //make the request!
        $.ajax({
            type: "post",
            //allow ajax to make the request in application logic
            //header: {'Access-Control': application_logic_url },
            url: application_logic_url,
            dataType:"json",
            data: {
                remove_fav: true, //to know which section of code will be executed!
                mov_id : mov_id,
                user_id : user_id,
            },

            success: function (response) {
                //if rows deleted
                if(response>0){
                    document.location.reload();//to reload the layout WITHOUT REFRESH
                }
                console.log("Deleted rows: "+response);
            }
        });
       
    });


    //for all buttons with id=add_fav_1,add_fav_2,...etc
    $('button[id^="add_fav_"]').click(function(){

        //get mov_id,user_id
        var user_id = $(this).closest("tr").find('td:eq(5)').text();
        var mov_id = $(this).closest("tr").find('td:eq(6)').text();
        console.log("Delete fav: \nUser:"+user_id+"\nmovid: "+mov_id);

        //make the request!
        $.ajax({
            type: "post",
            //allow ajax to make the request in application logic
            //header: {'Access-Control': application_logic_url },
            url: application_logic_url,
            dataType:"json",
            data: {
                add_fav: true, //to know which section of code will be executed!
                mov_id : mov_id,
                user_id : user_id,
            },

            success: function (response) {
                //if rows added
                if(response>0){
                    document.location.reload();//to reload the layout WITHOUT REFRESH
                }
                console.log("Inserted rows: "+response);
            }
        });

       
    });

});