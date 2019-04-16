(function() {

  // глобальная переменная нашего скрипта
  var message = "Переменка из модуля";

  // функция для вывода этой переменной
  function showMessage() {
    console.log( message );
  }

window.showMessage=showMessage;

}());