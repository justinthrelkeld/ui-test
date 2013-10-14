$ ->

  window.LP = (->

  # Module: Read More

    initialHeight = 400

    return {

      open : $('.button').on 'click', ->
        if $('.read-more_container').height() > 400
          $('.read-more_container').animate(
            height: initialHeight
          , 500)
          $(this).text('Read more')
        else
          $('.read-more_container').animate(
            height: 1600
          , 500)
          $(this).text('Read less')
        false
    }

  )()