function inputdiable(){
    var fields = document.getElementById("container").getElementsByTagName('*');
    for(var i = 0; i < fields.length; i++)
    {
        fields[i].disabled = true;
    }
}
