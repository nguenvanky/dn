Midway = ->
  e = $(".midway-horizontal")
  t = $(".midway-vertical")
  e.each ->
    $(this).css "marginLeft", -$(this).outerWidth() / 2
  t.each ->
    $(this).css "marginTop", -$(this).outerHeight() / 2
  e.css left: "50%"
  t.css top: "50%"
ready = ->
  $(".new-content-img-add").click ->
    $("#new-gallery-img-"+$('.new-content-img-add').attr "value").css('display','block')
    a = parseInt($('.new-content-img-add').attr "value")
    if a < 9
      $('.new-content-img-add').attr "value", a+1
      $('.new-content-img-del').attr "value", a+1     
  $(".new-content-img-del").click ->
    $("#new-gallery-img-"+(parseInt($('.new-content-img-del').attr "value")-1)).css('display','none')
    $("#place_place_galleries_attributes_"+(parseInt($('.new-content-img-del').attr "value")-2)+"_image").val ''
    a = parseInt($('.new-content-img-del').attr "value")
    if a > 1 
      $('.new-content-img-add').attr "value", a-1
      $('.new-content-img-del').attr "value", a-1     
  $(".new-content-jobs-add").click ->
    $("#new-content-job-"+$('.new-content-jobs-add').attr "value").css('display','block')
    a = parseInt($('.new-content-jobs-add').attr "value")
    if a < 5
      $('.new-content-jobs-add').attr "value", a+1
      $('.new-content-jobs-del').attr "value", a+1     
  $(".new-content-jobs-del").click ->
    $("#new-content-job-"+(parseInt($('.new-content-jobs-del').attr "value")-1)).css('display','none')
    $("#place_jobs_attributes_"+(parseInt($('.new-content-jobs-del').attr "value")-2)+"_content").val ''
    a = parseInt($('.new-content-jobs-del').attr "value")
    if a > 1 
      $('.new-content-jobs-add').attr "value", a-1
      $('.new-content-jobs-del').attr "value", a-1     
  $(".subscription-title").click ->
    $(this).closest('.subscription-body').find('.subscription-place-content').toggle();
    $(".subscription-title:after").css('background','url("/img/button_right.png") no-repeat')
  $("#message_form_sender").on "change", ->
    if @value is "User"
      $(".contact-form-name").css "display", "block"
      $(".contact-form-mail").css "display", "block"
      $(".contact-form-comment").css "display", "block"
      $(".contact-form-submit").css "display", "block"
      $(".contact-form-position").css "display", "none"
    if @value is "Company"
      $(".contact-form-name").css "display", "block"
      $(".contact-form-mail").css "display", "block"
      $(".contact-form-position").css "display", "block"
      $(".contact-form-comment").css "display", "block"
      $(".contact-form-submit").css "display", "block"
    if @value is "" 
      $(".contact-form-name").css "display", "none"
      $(".contact-form-mail").css "display", "none"
      $(".contact-form-position").css "display", "none"
      $(".contact-form-comment").css "display", "none"
      $(".contact-form-submit").css "display", "none"
  $(".place-gallery-thumb").click ->
    $("#place-gallery-large-"+this.id).css('display','block')
    $('#map-background').css('opacity','0.5')
    $('#map-background').css('z-index','5')    
    $('#map-background').attr "class", $(this).attr "id"
    $('.place-gallery-current').text this.id
    $('.place-gallery-of').text $(".place-gallery-thumb").length
  $(".place-gallery-prev").click ->
    n = $(".place-gallery-thumb").length
    if parseInt($('#map-background').attr "class") is 1
      $('#map-background').attr "class", parseInt(n)+1
      $("#place-gallery-large-1").css('display','none')  
      $("#place-gallery-large-"+parseInt(n)).css('display','block')
    $("#place-gallery-large-"+(parseInt($("#map-background").attr "class")-1)).css('display','block')
    $("#place-gallery-large-"+$("#map-background").attr "class").css('display','none')
    $('#map-background').attr "class", parseInt($("#map-background").attr "class")-1
    $('.place-gallery-current').text parseInt($("#map-background").attr "class")
    $('.place-gallery-of').text $(".place-gallery-thumb").length
  $(".place-gallery-next").click ->
    n = $(".place-gallery-thumb").length
    if parseInt($('#map-background').attr "class") is parseInt(n)
      $('#map-background').attr "class", 0  
      $("#place-gallery-large-"+parseInt(n)).css('display','none')
    $("#place-gallery-large-"+(parseInt($("#map-background").attr "class")+1)).css('display','block')
    $("#place-gallery-large-"+$("#map-background").attr "class").css('display','none')
    $('#map-background').attr "class", parseInt($("#map-background").attr "class")+1
    $('.place-gallery-current').text parseInt($("#map-background").attr "class")
    $('.place-gallery-of').text $(".place-gallery-thumb").length
  $(".place-job-offer-show").click ->
    $(".place-job-offer").css('display','block')
    $('#map-background').css('opacity','0.5')
    $('#map-background').css('z-index','5')  
  $(".subscription-place-gmap").click ->
    $('#map-wrapper-'+this.id).css('opacity','1')
    $('#map-background').css('opacity','0.5')
    $('#map-wrapper-'+this.id).css('z-index','6')
    $('#map-background').css('z-index','5')
    $('#map-background').attr "class", $(this).attr "id"  
  $(".place-gmap").click ->
    $('#map-wrapper-'+this.id).css('opacity','1')
    $('#map-background').css('opacity','0.5')
    $('#map-wrapper-'+this.id).css('z-index','6')
    $('#map-background').css('z-index','5')
    $('#map-background').attr "class", $(this).attr "id"
  $("#map-background").click ->
    $('#map-wrapper-'+$("#map-background").attr "class").css('opacity','0')
    $('#map-background').css('opacity','0')
    $('#map-wrapper-'+$("#map-background").attr "class").css('z-index','-6')
    $("#place-gallery-large-"+$("#map-background").attr "class").css('display','none')
    $('#map-background').css('z-index','-5')
    $(".place-job-offer").css('display','none')
  $(".reg-link-hide").click ->
    $('.flash-bg').css('opacity','0')
    $('.alert').css('z-index','-6')
    $(".flash-bg").css('display','none')
    $('.alert').css('display','none')
    $('.notice').css('z-index','-6')
    $('.notice').css('display','none')
  $(".flash-bg").click ->
    $('.flash-bg').css('opacity','0')
    $('.alert').css('z-index','-6')
    $(".flash-bg").css('display','none')
    $('.alert').css('display','none')
    $('.notice').css('z-index','-6')
    $('.notice').css('display','none')
  $(".place-gallery-close").click ->
    $('#map-background').css('opacity','0')
    $("#place-gallery-large-"+$("#map-background").attr "class").css('display','none')
    $('#map-background').css('z-index','-5')    
  $(".map-close").click ->
    $('#map-wrapper-'+$("#map-background").attr "class").css('opacity','0')
    $('#map-background').css('opacity','0')
    $('#map-wrapper-'+$("#map-background").attr "class").css('z-index','-6')
    $('#map-background').css('z-index','-5')
  $(".job-offer-close").click ->
    $('#map-background').css('opacity','0')
    $('#map-background').css('z-index','-5')
    $(".place-job-offer").css('display','none')
  $("#event_search").val ""
  $("#event_search").datepicker
    minDate: 0
    dateFormat: "yy-mm-dd"
    yearRange: "c-0:c+1"
    prevText: "<<"
    nextText: ">>"
    onSelect: (dateText, inst) ->
      $(".events-search").submit()
  $("#event_start_date").datepicker
    minDate: 0
    dateFormat: "yy-mm-dd"
    yearRange: "c-0:c+1"
    prevText: "<<"
    nextText: ">>"
    onSelect: (dateText, inst) ->
  $("#advertise_starts").datepicker
    minDate: 0
    dateFormat: "yy-mm-dd"
    yearRange: "c-0:c+1"
    prevText: "<<"
    nextText: ">>"
    onSelect: (dateText, inst) ->
  $('#login-link').click ->
    $('.sign-window').addClass('on')
    $('.sign-window-back').addClass('on')
  $('.sign-window-back').click ->
    $('.sign-window').removeClass('on')
    $('.sign-window-back').removeClass('on')
  owl = $(".owl-carousel")
  owl.owlCarousel
    autoPlay: true
    items: 1
    stopOnHover: true
    responsive: false
    autoHeight: true
    lazyEffect: false
    afterInit: (elem) ->
      that = this
      that.owlControls.prependTo elem
  $(".next").click ->
    owl.trigger "owl.next"
  $(".prev").click ->
    owl.trigger "owl.prev"
  owl2 = $(".owl-carousel2")
  owl2.owlCarousel
    autoPlay: true
    items: 3
    stopOnHover: true
    responsive: false
    autoHeight: true
    lazyEffect: false
    scrollPerPage: true
    afterInit: (elem) ->
      that = this
      that.owlControls.prependTo elem
  $(".next").click ->
    owl2.trigger "owl.next"
  $(".prev").click ->
    owl2.trigger "owl.prev"
  owl3 = $(".owl-carousel3")
  owl3.owlCarousel
    autoPlay: true
    items: 1
    stopOnHover: true
    responsive: false
    autoHeight: true
    lazyEffect: false
    afterInit: (elem) ->
      that = this
      that.owlControls.prependTo elem
  $(".next").click ->
    owl3.trigger "owl.next"
  $(".prev").click ->
    owl3.trigger "owl.prev"


$(document).ready(ready)
$(document).on('page:load', ready)
$(document).ready(Midway)
$(document).on('page:load', Midway)

