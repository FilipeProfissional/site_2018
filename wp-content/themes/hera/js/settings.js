// Hide responsive menu when click
$(function () {
  $('.navbar-collapse ul li a:not(.dropdown-toggle)').bind('click touchstart', function () {
    $('.navbar-toggle:visible').click();
  });
  $('.animate_00').smoove({offset:'40%'});
  $("#solucao_11").smoove({
    offset  : '40%',
    moveX   : '-200px',
    moveY   : '200px',
  });
  $("#solucao_9").smoove({
    offset  : '40%',
    moveX   : '0px',
    moveY   : '200px',
  });
  $("#solucao_8").smoove({
    offset  : '40%',
    moveX   : '200px',
    moveY   : '200px',
  });
//  $(".solucao").on("click",function(){
//    $(event.currentTarget).modal();
//  })
//  $("#11").modal("show");
//  $("#11").css("z-index", "1500");
  //$('#11,#9,#8').appendTo("body");

  // função para evitar o modalbox por baixo do background
  var checkeventcount = 1,prevTarget;
  $('.modal').on('show.bs.modal', function (e) {
    if(typeof prevTarget == 'undefined' || (checkeventcount==1 && e.target!=prevTarget))
    {
      prevTarget = e.target;
      checkeventcount++;
      e.preventDefault();
      $(e.target).appendTo('body').modal('show');
    }
    else if(e.target==prevTarget && checkeventcount==2)
    {
      checkeventcount--;
    }
  });

  // parar vídeo quando o modalbox é fechado
  $("#video").on('hidden.bs.modal', function (e) {
    $("#video iframe").attr("src", $("#video iframe").attr("src"));
  });

});
