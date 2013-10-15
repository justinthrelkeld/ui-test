$ ->

  window.LP = (->

    # Module: Fancy Images
    
    return {
      fancyimages : $('.image img').each(-> 
          src = 'url(' + $(this).attr('src') + ')'
          $(this).css('opacity', 0)
          $(this).parent().css({
            'background-image' : src,
            'background-size' : 'cover'
            })
        )
    }

  )()