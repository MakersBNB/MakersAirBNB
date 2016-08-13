$( document ).ready(function() {
  $(function(){
    var fromDate = $('#availableFrom').val();
    var toDate = $('#availableTo').val();
    $('#calendar').datepicker({ dateFormat: 'yy-mm-dd',
        altFormat: 'dd/mm/yy',
        minDate: fromDate,
        maxDate: toDate,
        onSelect: function (date) {
          $('#selectedFrom').val(date);
          $('#selectedTo').val(date);
        }
    });
  });

});
