$( document ).ready(function() {
  $(function(){
    var fromDate = formattedDate($('#availableFrom').val());
    var toDate = formattedDate($('#availableTo').val());
    console.log(fromDate);
    console.log(toDate);
    $('#calendar').datepicker({ dateFormat: 'dd/mm/yy',
        altFormat: 'dd/mm/yy',
        minDate: fromDate,
        maxDate: toDate
    });
  });
});

function formattedDate(date) {
    var d = new Date(date || Date.now()),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear().toString().substr(2,2);

    if (month.length < 2) month = '0' + month;
    if (day.length < 2) day = '0' + day;

    return [month, day, year].join('/');
}
