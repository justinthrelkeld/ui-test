$ ->

  window.LP = (->

    # Module: Lightbox
    
    return {
      lightbox : $('.images_container').on 'click', 'img', ->
        image = $('<img/>').addClass('lightboxImage').attr('src', $(this).attr('src'))
        lightboxContainer = $('<div/>').addClass('lightbox').append(image)

        $('body').append(lightboxContainer).on 'keyup', (e) ->
          if e.keyCode is 13 or e.keyCode is 27
            $('.lightbox').remove()
    }

  )()