$ ->

  window.LP = (->
    # Module: Read More
    initialHeight = 400
    if $('.read-more_container').height() > initialHeight
      $('.read-more_container').removeClass('is-expanded')
      $('.read-more_container').addClass('is-collapsed')
      $('.read-more_container').after('<a class="button" href="#">Read More</a>')
    else
      $('.read-more_container').addClass('is-expanded')
      $('.read-more_container').removeClass('is-collapsed')
  
    return {
      readmore : $('.button').on 'click', ->
        $('.read-more_container').toggleClass('is-expanded')
        $('.read-more_container').toggleClass('is-collapsed')
        false
    }

  )()