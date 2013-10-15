(function() {
  $(function() {
    return window.LP = (function() {
      return {
        fancyimages: $('.image img').each(function() {
          var src;

          src = 'url(' + $(this).attr('src') + ')';
          $(this).css('opacity', 0);
          return $(this).parent().css({
            'background-image': src,
            'background-size': 'cover'
          });
        })
      };
    })();
  });

}).call(this);
