$ ->

  window.LP = (->
    # Module: Read More
    initialHeight = 400
  
    return {
      readmore_setup: if $('.read-more_container').height() > initialHeight
          $('.read-more_container').removeClass('is-expanded')
          $('.read-more_container').addClass('is-collapsed')
          $('.read-more_container').after('<a class="button" href="#">Read More</a>')
        else
          $('.read-more_container').addClass('is-expanded')
          $('.read-more_container').removeClass('is-collapsed')
      readmore : $('.button').on 'click', ->
        if $('.read-more_container').hasClass('is-expanded') is true
          $('.read-more_container').addClass('is-collapsed')
          $('.read-more_container').removeClass('is-expanded')
          $(this).text('Read More')

        else
          $('.read-more_container').addClass('is-expanded')
          $('.read-more_container').removeClass('is-collapsed')
          $(this).text('Read Less')
        false
    }

  )()