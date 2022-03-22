// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

$(document).ready(function(){
  $('.datetime').datetime_field({
    todayHighlight: true, 
    orientation: 'auto top', 
    format: 'yyyy-mm-dd'
  });
});