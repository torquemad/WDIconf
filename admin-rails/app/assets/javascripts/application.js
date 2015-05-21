// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//$(function() {
var talk_draggable = function() {
  $('.dropTarget').droppable({
    drop: function(ev, ui) {
        $(this)
          .html( $(this).text().trim() + ($(ui.draggable).html()) )
          .attr( "class", "inline-block" );
        $(this).droppable('disable');
        //
        var cell = $( $(this).parent()[0] );
        var cell_time = cell.find('.cell-time').text().trim().split(':');
        // this is debug code to help with AJAX call
        var url = ($(ui.draggable).find('a').attr('href')).split('/');
        $.ajax({
          url: "/api/talks/time/" + url[2],
          method: "PATCH",
          data: {
            hour: cell_time[0],
            minutes: cell_time[1],
          }
        });
        $(ui.draggable).remove();
        $(this).find('.talk-box-close').css("display","block");

        // remove the data from the cell via X in top-right
        $(this).on('click', '.talk-box-close', function(){
          debugger;
          //$removed = $(this).parent().appendTo('#talk-list').addClass("single-talk");
          $removed =  $(this)
                        .parent()
                        .appendTo('#talk-list')
                        .draggable()
                        .addClass("single-talk");
          $removeParent = $removed.parent();
          $removeParent.droppable({disabled: false});
          // $(this)
          // .parent()
          // .fadeOut("slow",function(){
          //   $(this).remove();
          // });
        });
      }
  });
}
//});