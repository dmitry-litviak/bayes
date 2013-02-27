learn =
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

        message:
          minlength: 2
          required: true

      highlight: (label) ->
        $(label).closest(".control-group").addClass "error"

$(document).ready ->
  do learn.init