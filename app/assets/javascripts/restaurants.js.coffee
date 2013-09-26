# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> 
  $(".edit_restaurant").on "ajax:success", (e, data, status, xhr) ->
    unless data.errors?
      $("#restaurant_info").html(data)
      return $("#modal_edit_form").dialog( "close" )
    html = ""
    html += "<p>#{err}</p>" for err in data.errors
    $(@).find(".errors").html html

# $("#modal_edit_form").dialog( "close" ) ;
#      $("#restaurant_info").html("<%= j render 'address' %>")
