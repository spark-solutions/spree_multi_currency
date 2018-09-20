$(function () {
  $('#currency').on('change', function () {
    $.ajax({
      type: 'POST',
      url: $(this).data('href'),
      data: {
        currency: $(this).val()
      }
    }).done(function () {
      window.location.reload();
    });
  });
});
