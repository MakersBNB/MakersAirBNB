$( document ).ready(function() {
  $(function(){
    var fromDate = $('#availableFrom').val();
    var toDate = $('#availableTo').val();
    $('#selectDate').datepicker({ dateFormat: 'dd/mm/yy',
        altFormat: 'dd/mm/yy',
        minDate: fromDate,
        maxDate: toDate
    });
  });
});
