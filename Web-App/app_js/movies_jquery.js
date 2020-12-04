/**
 * In this file we send some requests to Application logic when a heart-button is clicked!
*/

$(document).ready(function(){
    
    //*********** jquery for movies.php **********************
    var application_logic_url = "http://172.18.1.8/app_logic_req.php";


    //for all buttons with id=fav_1,fav_2,...etc
    $(document).on('click','button[id^="fav_"]',function(){
       
        var curr_id =  $(this).attr('id');

        var user_id = $(this).closest("tr").find('td:eq(5)').text();
        var mov_id = $(this).closest("tr").find('td:eq(6)').text();
        //want to add in favorites
        if($(this).hasClass('ic')){
            //make the request!
            $.ajax({
                type: "GET",
                //allow ajax to make the request in application logic
                //header: {'Access-Control': application_logic_url },
                url: application_logic_url,
                dataType:"json",
                data: {
                    add_fav: true, //to know which section of code will be executed!
                    mov_id : mov_id,
                    user_id : user_id
                },

                success: function (response) {
                    //if rows added
                    if(response>0){
                        $("#"+curr_id).removeClass('ic');
                        $("#"+curr_id).addClass('ic_fav');
                        //$("#searchable_table #"+rowid).find('td:eq(7)').toggleClass('ic')
                    }
                    console.log("Favorites inserted: "+response);
                },
                error: function() {
                    console.log($.makeArray(arguments));
                }
            });
        }
        //remove it from favorites!
        else{

            $.ajax({
                type: "post",
                //allow ajax to make the request in application logic
                //header: {'Access-Control': application_logic_url },
                url: application_logic_url,
                dataType:"json",
                data: {
                    remove_fav: true, //to know which section of code will be executed!
                    mov_id : mov_id,
                    user_id : user_id
                },
    
                success: function (response) {
                    //if rows deleted
                    if(response>0){
                        $("#"+curr_id).removeClass('ic_fav');
                        $("#"+curr_id).addClass('ic');
                    }
                    console.log("Favorites Deleted: "+response);
                },
                error: function() {
                    console.log($.makeArray(arguments));
                }
            });

        }  
       
    });

});