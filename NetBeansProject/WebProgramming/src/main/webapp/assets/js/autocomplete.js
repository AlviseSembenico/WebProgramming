/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function () {
    var scriptLanguages = [
        "ActionScript",
        "Boostrap",
        "C",
        "C++",
        "Ecommerce",
        "Jquery",
        "Groovy",
        "Java",
        "JavaScript",
        "Lua",
        "Perl",
        "Ruby",
        "Scala",
        "Swing",
        "XHTML"
    ];
    $("#autocomplete-1").autocomplete({
        source: scriptLanguages
    });

    $("#autocomplete-2").autocomplete({
        source: scriptLanguages,
        autoFocus: true
    });

    $("#autocomplete-3").autocomplete({
        source: scriptLanguages,
        minLength: 2,
        delay: 500
    });

    $("#autocomplete-4").autocomplete({
        source: [
            {label: "India", value: "IND"},
            {label: "Italy", value: "IT"},
            {label: "United States", value: "USA"}
        ],
        minLength: 2,
        delay: 500
    });

    $("#autocomplete-5").autocomplete({
        source: "http://localhost:8080/example01/services/languages",
        minLength: 2,
        delay: 500
    });

    $("#autocomplete-6").autocomplete({
        source: function (request, response) {
            $.ajax({
                contentType: "application/json",
                type: "GET",
                url: "http://localhost:8080/WebProgramming/services/complete?name=" + request.term,
                data: {
                    term: request.term
                },
                success: function (data, textStatus, jqXHR) {
                    response(data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    jqXHR;
                }
            });
        },
        minLength: 2,
        delay: 500
    });
});
