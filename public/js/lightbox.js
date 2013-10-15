(function() {
  $(function() {
    return window.LP = (function() {
      return {
        lightbox_ready: $('body').append('<div class="lightbox-ground"></div>'),
        lightbox_on: $('.images_container').on('click', 'img', function() {
          var lightbox_image;

          lightbox_image = $('<img/>').addClass('lightbox-image').attr('src', $(this).attr('src'));
          $('.lightbox-ground').addClass('is-active').append(lightbox_image);
          $('.lightbox-ground').on('click', function() {
            $(lightbox_image).remove();
            return $(this).removeClass('is-active');
          });
          return $('body').on('keyup', function(e) {
            if (e.keyCode === 13 || e.keyCode === 27) {
              $(lightbox_image).remove();
              return $('.lightbox-ground').removeClass('is-active');
            }
          });
        })
      };
    })();
  });

}).call(this);
