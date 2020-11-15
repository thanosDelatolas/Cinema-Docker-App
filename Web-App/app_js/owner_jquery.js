$(document).ready(function(){
    //***********jquery for owner.php**********************


    
    var cinema_input;
    var title_input;
    var category_input;
    var sdate_input;
    var edate_input;
    var mov_id_val;
    var cin_id_val;



    //for all buttons with id=edit_0,edit_1,...etc
    $('button[id^="edit_"]').click(function(){
       
        //get text of each column
        var cinema = $(this).closest("tr").find('td:eq(0)').text();
        var title = $(this).closest("tr").find('td:eq(1)').text();
        var category = $(this).closest("tr").find('td:eq(2)').text();
        var start_date = $(this).closest("tr").find('td:eq(3)').text();
        var end_date = $(this).closest("tr").find('td:eq(4)').text();

        var cin_id = $(this).closest("tr").find('td:eq(5)').text();
        var mov_id = $(this).closest("tr").find('td:eq(6)').text();

        var modal = document.getElementById("myModal");
        //show modal form
        modal.style.display = "block";


        //add values from table
        
        cinema_input = document.getElementById("cinema");
        title_input = document.getElementById("title");
        category_input = document.getElementById("category");
        sdate_input = document.getElementById("start_date");
        edate_input = document.getElementById("end_date");
        document.getElementById("err_msg").textContent ="";


        //set values to inputs!
        cinema_input.value = cinema;
        title_input.value = title;
        category_input.value = category;
        sdate_input.value = start_date;
        edate_input.value = end_date;
        console.log("cin_id: "+cin_id);

        movid_text.textContent ="Details for movie:\n"+mov_id;

        

        
        
    });
});