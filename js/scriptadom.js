/**
 * Created by Aleksandar on 15.06.2016.
 */
$(document).ready(function(){


    var tags= [
        "Гоце Делчев",  "Стив Наумов", "Кузман Јосифовски Питу", "Пелагонија"
    ];
    $("#search").autocomplete({
        source:tags
    });
    $("#btn-search").click(function(){
        var klub=$("#search").val();
        $("#search").val("");
        switch(klub) {
            case "Гоце Делчев":
                $(location).attr("href", "Goce.html") ;
                break;
            case "Стив Наумов":
                $(location).attr("href", "Stiv.html") ;
                break;
            case "Пелагонија":
                $(location).attr("href", "Pelagonija.html") ;
                break;
            case "":
                $(location).attr("href", "Kuzman.html");
                break;
            
        }
    });

    // Hide all the tooltips
    $("#jquery li").each(function() {
        $("a strong", this).css("opacity", "0");
    });

    $("#jquery li").hover(function() { // Mouse over
        $(this)
            .stop().fadeTo(500, 1)
            .siblings().stop().fadeTo(500, 0.2);

        $("a strong", this)
            .stop()
            .animate({
                opacity: 1,
                top: "-10px"
            }, 300);

    }, function() { // Mouse out
        $(this)
            .stop().fadeTo(500, 1)
            .siblings().stop().fadeTo(500, 1);

        $("a strong", this)
            .stop()
            .animate({
                opacity: 0,
                top: "-1px"
            }, 300);
    });

});