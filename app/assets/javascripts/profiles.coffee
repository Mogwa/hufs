# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->

    jQuery ->
      DependentFields.bind()
      return

    jQuery ->
      majors = $('#profile_major_id').html()
#      $('#profile_major_id').empty()
      $('#profile_major_campus').change ->
        campus = $('#profile_major_campus :selected').text()
        options = $(majors).filter("optgroup[label='#{campus}']").html()
        if options
          $('#profile_major_id').html(options)
        else
          $('#profile_major_id').empty()

    jQuery ->
      minors = $('#profile_minor_id').html()
#      $('#profile_minor_id').empty()
      $('#profile_minor_campus').change ->
        campus = $('#profile_minor_campus :selected').text()
        options = $(minors).filter("optgroup[label='#{campus}']").html()
        if options
          $('#profile_minor_id').html(options)
        else
          $('#profile_minor_id').empty()

return


