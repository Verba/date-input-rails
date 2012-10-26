//= require modernizr
//= require jquery.ui.datepicker

if (!Modernizr.inputtypes.date) {
  $(document).ready(function () {
    $("input[type='date']").each(function () {
      var alt = $("<input type=hidden>")
        .val($(this).val())
        .attr({name: $(this).attr('name')})
      .insertBefore(this);

      $(this)
        .removeAttr('name')
        .removeAttr('value')
        .datepicker({altField: alt, altFormat: "yy-mm-dd"})
      .datepicker('setDate', $.datepicker.parseDate("yy-mm-dd", $(alt).val()));
    });
  });
}
