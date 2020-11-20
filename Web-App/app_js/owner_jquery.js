$(document).ready(function(){
    //***********jquery for owner.php**********************


    
    var cinema_input;
    var title_input;
    var category_input;
    var sdate_input;
    var edate_input;
    var mov_id_val;

    //var to make changes!
    var row_id_global;
   


    //for all buttons with id=edit_0,edit_1,...etc
    $('button[id^="edit_"]').click(function(){
       
        var row_id = $(this).closest('tr').attr('id');
        
        row_id_global = row_id;
        
        //get text of each column
        var title = $(this).closest("tr").find('td:eq(1)').text();
        var category = $(this).closest("tr").find('td:eq(2)').text();
        var start_date = $(this).closest("tr").find('td:eq(3)').text();
        var end_date = $(this).closest("tr").find('td:eq(4)').text();

        var cin_id = $(this).closest("tr").find('td:eq(5)').text();
        var mov_id = $(this).closest("tr").find('td:eq(6)').text();

        var modal = document.getElementById("myModal");
        //show modal form
        modal.style.display = "block";

    
        //add values from table to the modal form!
        
        cinema_input= document.getElementById("sel_cinema");
        title_input = document.getElementById("title");
        category_input = document.getElementById("category");
        sdate_input = document.getElementById("start_date");
        edate_input = document.getElementById("end_date");
        document.getElementById("err_msg").textContent ="";


        //set values to inputs!
        cinema_input.value = cin_id;
        title_input.value = title;
        category_input.value = category;
        sdate_input.value = start_date;
        edate_input.value = end_date;
       
        movid_text.textContent ="Details for movie:\n"+mov_id;   
        
        mov_id_val = mov_id;
        
        
    });


    //when make_changes button is clicked in the modal form!
    $("#changes").click(function(){
        document.getElementById("err_msg").textContent ="";

        //some validation...
        if(title_input.value == ""){
            document.getElementById("err_msg").textContent ="Title is required!";
        }
        else if(category_input.value == ""){
            document.getElementById("err_msg").textContent ="Category is required!";
        }
        else if(sdate_input.value > edate_input.value){
            document.getElementById("err_msg").textContent ="Start date is after End date!";
        }
        
        else{
            var application_logic_url = "http://172.18.1.8/rest_api.php";

            $.ajax({
                type: "post",
                //allow ajax to make the request in application logic
                //header: {'Access-Control': application_logic_url },
                url: application_logic_url,
                dataType:"json",
                data: {
                    modify_movie: true, //to know which section of code will be executed!
                    mov_id : mov_id_val,
                    playing_in : cinema_input.value,
                    title: title_input.value,
                    category : category_input.value,
                    start_date : sdate_input.value,
                    end_date: edate_input.value
                },
    
                success: function (response) {
                    //if row updated update table
                    if(response.count>0){
                        document.getElementById("myModal").style.display = "none";
                        $("#searchable_table #"+row_id_global).find('td:eq(0)').html(response.playing_in);
                        $("#searchable_table #"+row_id_global).find('td:eq(1)').html(response.title);
                        $("#searchable_table #"+row_id_global).find('td:eq(2)').html(response.category);
                        $("#searchable_table #"+row_id_global).find('td:eq(3)').html(response.start_date);
                        $("#searchable_table #"+row_id_global).find('td:eq(4)').html(response.end_date);
                        $("#searchable_table #"+row_id_global).find('td:eq(5)').html(response.cin_id);
                       
                       
                    }
                    else{
                        document.getElementById("err_msg").textContent ="Something went wrong!";
                    }
                    console.log("Modified rows: "+response.count);
                }
            });
        }
        
    
        
    });
    /**for all buttons with id=trash_1,trash_2,...etc
     * When cinema owner wants to delete a movie!
     */ 
    $('button[id^="trash_"]').click(function(){
        var row_id = $(this).closest('tr').attr('id');
        
        row_id_global = row_id;

        //get text of each column
        var movid = $(this).closest("tr").find('td:eq(6)').text();
        var r = confirm("Do you really want to delete movie with id:\n "+movid);
        if(r){
            var application_logic_url = "http://172.18.1.8/rest_api.php";

            $.ajax({
                type: "post",
                url: application_logic_url,
                dataType:"json",
                data: {
                    del_movie: true, //to know which section of code will be executed!
                    movid : movid,
                
                },
                success: function (response) {
                    //if a movie is deleted!
                    if(response>0) {
                        $("#searchable_table #"+row_id_global).fadeTo("slow",0.7, function(){
                            $("#searchable_table #"+row_id_global).remove();
                        })
                    }
                }
            });

        }
    });
});

