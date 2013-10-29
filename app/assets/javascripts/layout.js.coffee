$ ->
  $(".close").on("click", (event)->
    $(".thanks").hide("slow")
    $(".error").hide("slow")
  )
