# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->

  jQuery ->
    DependentFields.bind()
    return

  jQuery ->
    majors = $('#suggestion_major_id').html()
    #      $('#suggestion_major_id').empty()
    $('#suggestion_major_campus').change ->
      campus = $('#suggestion_major_campus :selected').text()
      options = $(majors).filter("optgroup[label='#{campus}']").html()
      if options
        $('#suggestion_major_id').html(options)
      else
        $('#suggestion_major_id').empty()

  jQuery ->
    minors = $('#suggestion_minor_id').html()
    #      $('#suggestion_minor_id').empty()
    $('#suggestion_minor_campus').change ->
      campus = $('#suggestion_minor_campus :selected').text()
      options = $(minors).filter("optgroup[label='#{campus}']").html()
      if options
        $('#suggestion_minor_id').html(options)
      else
        $('#suggestion_minor_id').empty()

return


