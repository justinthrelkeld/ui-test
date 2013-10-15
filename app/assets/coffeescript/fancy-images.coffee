$ ->

  window.LP = (->

    # Module: Fancy Images
    
    return {
      fancyimages : $('.image img').each(-> 
          src = 'url(' + $(this).attr('src') + ')'
          $(this).parent().css('background-image', src)
        )
    }

  )()