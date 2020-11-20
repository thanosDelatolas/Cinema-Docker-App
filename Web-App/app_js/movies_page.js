function search_movies(){
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
    var title_col,cin_col,category_col,sd_col,ed_col;

    //each column text
    var title_col_txt,cin_col_txt,category_col_txt,sd_col_txt,ed_col_txt;
    /** 
    * Loop through all table rows, and hide those who don't match the search query 
    * based on title,cinema,category,start_date,end_date
    */  
    for (i = 0; i < tr.length; i++) {

        title_col = tr[i].getElementsByTagName("td")['title'];
        cin_col = tr[i].getElementsByTagName("td")['cinema'];
        category_col = tr[i].getElementsByTagName("td")['category'];
        sd_col = tr[i].getElementsByTagName("td")['start_d'];
        ed_col = tr[i].getElementsByTagName("td")['end_d'];
        
        if (title_col && cin_col && category_col && sd_col && ed_col) {

            title_col_txt = title_col.textContent || title_col.innerText;
            cin_col_txt = cin_col.textContent || cin_col.innerText;
            category_col_txt = category_col.textContent || category_col.innerText;
            sd_col_txt = sd_col.textContent || sd_col.innerText;
            ed_col_txt = ed_col.textContent || ed_col.innerText;

            //if one or more columns has the filter words
            if (title_col_txt.toUpperCase().indexOf(filter) > -1 || cin_col_txt.toUpperCase().indexOf(filter) > -1 
                || category_col_txt.toUpperCase().indexOf(filter) > -1 || sd_col_txt.toUpperCase().indexOf(filter) > -1
                || ed_col_txt.toUpperCase().indexOf(filter) > -1
                
            ){
                tr[i].style.display = ""; //hide this row
            }
            else {
                tr[i].style.display = "none";//show this row
            }
        }
    }

   
}

