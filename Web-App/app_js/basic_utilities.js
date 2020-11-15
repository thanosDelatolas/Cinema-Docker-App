//variable to show the sidebar's possition!
var mini = true;

function toggleSidebar() {
    if (mini) {
        
        document.getElementById("mySidebar").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
        this.mini = false;
    } else {
        
        document.getElementById("mySidebar").style.width = "85px";
        document.getElementById("main").style.marginLeft = "85px";
        this.mini = true;
    }
}

function logout(){
    var r = confirm("Do you really want to log out?");
    if (r) {

        window.location.href = '/logout.php'
    }
}

