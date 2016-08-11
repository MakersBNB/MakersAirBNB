$( document ).ready(function() {
  $(function(){
    var fromDate = $('#availableFrom').val();
    var toDate = $('#availableTo').val();
    $('#selectDate').datepicker({ dateFormat: 'yyyy-mm-dd',
        altFormat: 'yyyy-mm-dd',
        minDate: fromDate,
        maxDate: toDate
    });
  });
});
