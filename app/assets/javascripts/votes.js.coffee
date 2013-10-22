$ ->
  $('.vote-up').on 'click', ->
    id = $(@).closest('tr').attr "id"
    $.ajax
      type: "POST"
      url: "/talks/#{id}/votes"
      contentType: "application/json; charset=utf-8"
      dataType: "json"
      success: (data) =>
        $(@).closest('.row').find('.votes').text(data.votes)
        $(@).addClass('hide')
      error: (errMsg) ->
        alert(errMsg)
