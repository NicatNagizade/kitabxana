const $ = (par) =>{return document.getElementById(par);}
function sil(){
    if(!confirm("Silinsin?")){
        $('delete').href="";
    };
}