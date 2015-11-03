# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready (data) ->
  $("#new_contact").bind "ajax:success", (evt, data, status, xhr) ->
    alert("Success!")
    $("#display_result").html xhr.responseText
  $("#new_contact").bind "ajax:error", (xhr, status, error) ->
    alert('test')
  $("#contact_btn").bind "ajax:success", (evt, data, status, xhr) ->
    alert("Success!")
    $("#display_result").html xhr.responseText
  $("#contact_btn").bind "ajax:error", (xhr, status, error) ->
    alert('test')