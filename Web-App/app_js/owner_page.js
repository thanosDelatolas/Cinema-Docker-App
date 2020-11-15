//this function is called when the cancel red button is clicked in modal form!
function cancelFUNC(){
    document.getElementById('myModal').style.display='none';
    document.location.reload();//to reload the layout WITHOUT REFRESH
                
}

function search_cinemas(){
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
    var movid_col,title_col,cin_col,category_col,sd_col,ed_col;

    //each column text
    var movid_col_txt,title_col_txt,cin_col_txt,category_col_txt,sd_col_txt,ed_col_txt;
    /** 
    * Loop through all table rows, and hide those who don't match the search query 
    * based on title,cinema,category,start_date,end_date
    */  
    for (i = 0; i < tr.length; i++) {
        movid_col = tr[i].getElementsByTagName("td")['movid'];
        title_col = tr[i].getElementsByTagName("td")['title'];
        cin_col = tr[i].getElementsByTagName("td")['cinema'];
        category_col = tr[i].getElementsByTagName("td")['category'];
        sd_col = tr[i].getElementsByTagName("td")['start_d'];
        ed_col = tr[i].getElementsByTagName("td")['end_d'];
        
        if (title_col && cin_col && category_col && sd_col && ed_col && movid_col) {
            movid_col_txt = movid_col.textContent || movid_col.innerText;
            title_col_txt = title_col.textContent || title_col.innerText;
            cin_col_txt = cin_col.textContent || cin_col.innerText;
            category_col_txt = category_col.textContent || category_col.innerText;
            sd_col_txt = sd_col.textContent || sd_col.innerText;
            ed_col_txt = ed_col.textContent || ed_col.innerText;

            //if one or more columns has the filter words
            if (title_col_txt.toUpperCase().indexOf(filter) > -1 || cin_col_txt.toUpperCase().indexOf(filter) > -1 
                || category_col_txt.toUpperCase().indexOf(filter) > -1 || sd_col_txt.toUpperCase().indexOf(filter) > -1
                || ed_col_txt.toUpperCase().indexOf(filter) > -1 || movid_col_txt.indexOf(filter) > -1
                
            ){
                tr[i].style.display = ""; //hide this row
            }
            else {
                tr[i].style.display = "none";//show this row
            }
        }
    }

   
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