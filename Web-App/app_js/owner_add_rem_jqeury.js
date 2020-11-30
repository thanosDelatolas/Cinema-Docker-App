$(document).ready(function(){
    //*********** jquery for owner_add_rem.php **********************

    //When buy cinema in the main page is clicked!
    $("#disp_modal_mov").click(function(){
        document.getElementById('myModal2').style.display='block';
        document.getElementById("err_msg2").textContent ="";

        
    });

    /** 
     * when the button buy movie is clicked 
     * in MODAL FORM =>
     *  sends requests to application logic!
     */ 
    $("#buy_movie").click(function(){
        var cinema_input= document.getElementById("sel_cinema");//the id of the cinema
        var title_input = document.getElementById("title"); //movie's title
        var category_input = document.getElementById("category");//category
        var sdate_input = document.getElementById("start_date");//start_date
        var edate_input = document.getElementById("end_date");//end_date
        var owner_id = document.getElementById("user_id");
        

        document.getElementById("err_msg2").textContent ="";

        //some validation...
        if(title_input.value == ""){
            document.getElementById("err_msg2").textContent ="Title is required!";
        }
        else if(category_input.value == ""){
            document.getElementById("err_msg2").textContent ="Category is required!";
        }
        else if(sdate_input.value == ""){
            document.getElementById("err_msg2").textContent ="Start date is required!";
        }
        else if(edate_input.value == ""){
            document.getElementById("err_msg2").textContent ="End date is required!";
        }
        else if(sdate_input.value > edate_input.value){
            document.getElementById("err_msg2").textContent ="Start date is after End date!";
        }
        //send requests to application logic!
        else{
           
            var application_logic_url = "http://172.18.1.8/app_logic_req.php";
            $.ajax({
                type: "post",
                //allow ajax to make the request in application logic
                //header: {'Access-Control': application_logic_url },
                url: application_logic_url,
                dataType:"json",
                data: {
                    add_movie: true, //to know which section of code will be executed!
                    playing_in : cinema_input.value,
                    title: title_input.value,
                    category : category_input.value,
                    start_date : sdate_input.value,
                    end_date: edate_input.value,
                    owner_id : owner_id.textContent
                },
                
                //AJAX returns the inserted count!
                success: function (response) {
                   if(response.count > 0){
                    console.log("Movie: "+title_input.value+" bought!");
                    document.getElementById('myModal2').style.display='none';
                    $('#mov_bought').html("Last movie bought: "+title_input.value+
                    "<br>in cinema: "+response.cin_name+".<br>You can see all your movies in the previous page!");
                  
                        
                   }
                   else{
                        console.log("Something went wrong!");
                   }
                }

            });

        }

    });


     //When buy cinema in the main page is clicked!
     $("#disp_modal").click(function(){
        document.getElementById('myModal').style.display='block';
        document.getElementById("err_msg").textContent ="";
    });

    //when the buy cinema button is clicked!
    $("#buy_cinema").click(function(){
        document.getElementById("err_msg").textContent ="";

        cinema_input = document.getElementById("cinema_input").value;
        cin_owner = document.getElementById("user_id").textContent;

        if(cinema_input == ""){
            document.getElementById("err_msg").textContent = "Cinema's name is required!";
        }
        else{
            //make request to app logic
            var application_logic_url = "http://172.18.1.8/app_logic_req.php";
            $.ajax({
                type: "post",
                //allow ajax to make the request in application logic
                //header: {'Access-Control': application_logic_url },
                url: application_logic_url,
                dataType:"json",
                data: {
                    add_cinema: true, //to know which section of code will be executed!
                    cin_name : cinema_input,
                    owner_id : cin_owner
                },
    
                success: function (response) {
                    //if rows cinema added
                    if(response.count>0){
                        document.getElementById('myModal').style.display='none';
                        var new_row_id = $('#searchable_table tr').length +1;

                        //create new row
                        var markup = "<tr id="+"row_"+new_row_id+">"+
                        "<td name='cinema'>"+response.cin_name+"</td>"+
                        "<td name='cin_id' hidden='true'>"+response.cin_id+"</td>"+
                        "<td class='icon'> <button id="+"del_cin_"+new_row_id+" class ='icon_edit'><i class='fa fa-trash' aria-hidden='true'></i></button>"+"</td>"
                        +"</tr>"


                        $("#searchable_table").append(markup);

                        /**
                        * append cinema in SELECT of modal form for buying a movie
                        * Option(option text,value)
                        */
                       $("#sel_cinema").append($("<option></option>")
                       .attr("value", response.cin_id)
                       .text(response.cin_name)); 
                        
                       

                    }
                    else if(response.count == -1){
                        document.getElementById("err_msg").textContent = "This Cinema already exists!!";
                    }
                    else{
                        document.getElementById("err_msg").textContent = "Something went wrong!";
                    }
                    console.log("Bought cinemas: "+response.count);
                   
                }
            });
        }
    });


    /**
     * jquery for the trash button in owner_add_rem_cin.php 
     * When a cinmaowner wants to delete a cinema
     */
    $(document).on('click','button[id^="del_cin_"]',function(){
        alert('Sorry this method is not implemented because of orion.\nBut movies can be deleted :) from the previous page!');
        /*
        var row_id = $(this).closest('tr').attr('id');

        var cin_name = $(this).closest("tr").find('td:eq(0)').text();
        var cin_id = $(this).closest("tr").find('td:eq(1)').text();

        var r = confirm("***** SOS!!! *****\nDo you really want to delete Cinema with cin_name: "+cin_name
        +"?\n Keep in mind ALL MOVIES in "+cin_name+" will be deleted!");
        if(r){
            r = confirm("***** THINK AGAIN! *****\n Want to delete "+cin_name+" and lose ALL movies in "+cin_name+" ?");

            if(r){
                var application_logic_url = "http://172.18.1.8/app_logic_req.php";

                //make the request to delete the Cinema
                $.ajax({
                    type: "post",
                    url: application_logic_url,
                    dataType:"json",
                    data: {
                        del_cinema: true, //to know which section of code will be executed!
                        cin_id : cin_id
                    
                    },
                    success: function (response) {
                        if(response.deleted_movies >= 0 && response.deleted_favs>=0 
                            && response.deleted_cinemas == 1){
                                console.log(
                                    "Deleted movies: "+response.deleted_movies+"\n"+
                                    "Deleted favorites: "+response.deleted_favs+"\n"+
                                    "Deleted cinemas: "+response.deleted_cinemas
    
                                );
                                $("#searchable_table #"+row_id).fadeTo("slow",0.7, function(){
                                    $("#searchable_table #"+row_id).remove();
                                })

                                //remove cinema from select in modal form for buying Movies!
                                var selectobject = document.getElementById("sel_cinema");
                                for (var i=0; i<selectobject.length; i++) {
                                    if (selectobject.options[i].value == cin_id)
                                        selectobject.remove(i);
                                }
                        }
                        else{
                            //something went wrong
                            alert("Something went wrong!\nYou shoud talk with an Admin!");
                            console.log(
                                "Deleted movies: "+response.deleted_movies+"\n"+
                                "Deleted favorites: "+response.deleted_favs+"\n"+
                                "Deleted cinemas: "+response.deleted_cinemas

                            );
                        }
                    }
                });

            }

        }
        */

    });
});