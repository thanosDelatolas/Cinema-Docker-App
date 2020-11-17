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
           
            var application_logic_url = "http://172.18.1.8/rest_api.php";
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
                    console.log("Am i here?");
                   if(response > 0){
                        document.location.reload();//to reload the layout WITHOUT REFRESH
                   }
                   else{
                       console.log("Something went wrong!");
                   }
                }

            });

        }

    });
});