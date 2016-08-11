var d = new Date();
var month = d.getMonth() + 1;
var year = d.getFullYear();
var date = year + "-" + month + "-01";
var selectedDateTo = null;
var selectedDateFrom = null;

$('td').click(function(){
  var td = $(this);
  if (td.text()) {
    $('.selected').removeClass('selected');
    $(this).addClass('selected');
  }
});

$( document ).ready(function() {
  for(var i = 0; i <= 5; i++) {
    addRows();
  }
  monthNames();
  updateCell(new Date(date).getDay());

  $(".next").click(function() {
    increaseDate();
    deleteRows();
    updateCell(getDate());
  });

  $(".prev").click(function() {
    decreaseDate();
    deleteRows();
    updateCell(getDate());
  });

});

function getDate() {
  date = year + "-" + month + "-01";
  console.log(date);
  return firstDayOfMonth(date);
}

function increaseDate() {
  year = month === 12 ? (year += 1) : year;
  month = month !== 12 ? (month += 1) : (month = 1);
  monthNames();
}

function decreaseDate() {
  year = month === 1 ? (year -= 1) : year;
  month = month !== 1 ? (month -= 1) : (month = 12);
  monthNames();
}

function addRows() {
    var table = document.getElementById("calendar");
    var row = table.insertRow(1);
    for(var i = 0; i <= 6; i++){
      var cell = row.insertCell(i);
      cell.id = "day";
    }
}

function deleteRows() {
  $("td").empty();
}

function updateCell(firstDay) {
  var table = document.getElementById("calendar");
  var days = 0;
  for(var i = 1, row; row = table.rows[i]; i++) {
    for(var c = firstDay, col; col = row.cells[c]; c++){
      days++;
      if(days <= howManyDays()) {
        col.innerHTML = days;
      }
    }
    firstDay = 0;
  }
}

function firstDayOfMonth(date) {
  if(typeof date === 'undefined'){
    var d = new Date();
    date = d.getFullYear() + "-" + (d.getMonth() + 1) + "-01";
  }
  var day = new Date(date).getDay();
  return day;
}

function monthNames(){
  var names = ["January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"
];
  $('#month-year').text(names[month - 1] + " " + year);
}

function howManyDays() {
  switch(month) {
    case 4,6,9,11:
      return 30;
    case 2:
      leap = (year%4===0 && year%100!==0 || year%400===0) ? 29 : 28;
      return leap;
    default:
      return 31;
  }
}
