create =
  init: ->
    do @detectElements
    do @bindEvents

  detectElements: ->
    @form = $('.form-actions')

  bindEvents: ->
    do @initValidation


  initValidation: ->
    @form.validate
      rules:
        title:
          minlength: 2
          required: true

        message:
          minlength: 2
          required: true

      highlight: (label) ->
        $(label).closest(".control-group").addClass "error"

$(document).ready ->
  do create.init