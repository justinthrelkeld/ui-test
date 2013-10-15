$ ->

  window.LP = (->

    # Module: Lightbox
    
    return {
      lightbox_ready : $('body').append('<div class="lightbox-ground"></div>')
      lightbox_on : $('.images_container').on 'click', 'img', ->
        lightbox_image = $('<img/>').addClass('lightbox-image').attr('src', $(this).attr('src'))
        $('.lightbox-ground').addClass('is-active').append(lightbox_image)
        $('.lightbox-ground')
          .on 'click', () ->
            $(lightbox_image).remove()
            $(this).removeClass('is-active')
          $('body').on 'keyup', (e) ->
            if e.keyCode is 13 or e.keyCode is 27
              $(image).remove()
              $('.lightbox-ground').removeClass('is-active')
    }

  )()