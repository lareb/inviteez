// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(document).ready(function() {
    $('#title').click(function (e) {
        $("#edit-title").show();
        showModel();
        return false;
    });
});


function showModel(){
    $('#basic-modal-content').modal();
    $('#basic-modal-content').css("height","200px");
    $("#simplemodal-container").css("height","200px");
}

function toggleSignup(){
    if($("#why-invitees").is(':visible')){
        $("#why-invitees").slideToggle("100", function(){
            $("#sign-up").slideToggle("100");
        });
    }else{
        $("#sign-up").slideToggle("100", function(){
            $("#why-invitees").slideToggle("100");
        });
    }
}


function loadPanel(){
    
}