$().ready(function(){
    $(".play").click(function(){
      var filepath = $(this).attr("filepath");
      $.ajax({
        url: "/start",
        data: { filename: filepath },
        type: "GET"
      });
    });
    $(".stop").click(function(){
      $.ajax({
        url: "/stop",
        type: "GET"
      });
    });
});

