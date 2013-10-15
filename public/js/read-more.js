(function() {
  $(function() {
    return window.LP = (function() {
      var initialHeight;

      initialHeight = 400;
      return {
        readmore_setup: $('.read-more_container').height() > initialHeight ? ($('.read-more_container').removeClass('is-expanded'), $('.read-more_container').addClass('is-collapsed'), $('.read-more_container').after('<a class="button read-more_button" href="#">Read More</a>')) : void 0,
        readmore_open: $('.read-more_button').on('click', function() {
          if ($('.read-more_container').hasClass('is-expanded') === true) {
            $('.read-more_container').addClass('is-collapsed');
            $('.read-more_container').removeClass('is-expanded');
            $(this).text('Read More');
          } else {
            $('.read-more_container').addClass('is-expanded');
            $('.read-more_container').removeClass('is-collapsed');
            $(this).text('Read Less');
          }
          return false;
        })
      };
    })();
  });

}).call(this);
