//this function is called when the cancel red button is clicked in modal form!
function cancelFUNC_modal1(){
    document.getElementById('myModal').style.display='none';
   
                
}

//this function is called when the cancel red button is clicked in modal form!
function cancelFUNC_modal2(){
    document.getElementById('myModal2').style.display='none';
   
                
}



function search_cinemas_only(){
    // Declare variables
    var input, filter, table, tr, i;
    input = document.getElementById("mov_search");

    /**
     * user text is filter
     * upper case to not be case sensitive
     */

    filter = input.value.toUpperCase();

    table = document.getElementById("searchable_table");
    tr = table.getElementsByTagName("tr");

    //table's columns
    var cin_col;

    //each column text
    var cin_col_txt;
    /** 
    * Loop through all table rows, and hide those who don't match the search query 
    * based on title,cinema,category,start_date,end_date
    */  
    for (i = 0; i < tr.length; i++) {
       
        cin_col = tr[i].getElementsByTagName("td")['cinema'];
        
        
        if ( cin_col ) {
            cin_col_txt = cin_col.textContent || cin_col.innerText;

            //if one or more columns has the filter words
            if (cin_col_txt.toUpperCase().indexOf(filter) > -1 ){
                tr[i].style.display = ""; //hide this row
            }
            else {
                tr[i].style.display = "none";//show this row
            }
        }
    }

}