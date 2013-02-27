list =
  init: ->
    do @detectElements
    do @bindEvents

  detectElements: ->
    @btn_text       = $('.text')
    @text_container = $('.modal-body')
    @label_text     = $('#myModalLabel')

  bindEvents: ->
    do @initShowText

  initShowText: (e) ->
    @btn_text.click (e) =>
      el = $(e.currentTarget)
      me = @
      $.ajax
        url: SYS.baseUrl + 'messages/get_text'
        data: $.param({id : el.data("id")})
        type: 'POST'
        dataType: 'json'
        success: (res) =>
          if res.text = "success"
            me.label_text.html('Текст сообщения "' + res.data.title + '"')
            me.text_container.html(res.data.text)

$(document).ready ->
  do list.init