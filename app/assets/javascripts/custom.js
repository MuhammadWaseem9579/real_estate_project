let product = document.getElementsByClassName('product');
let product_page = Math.ceil(product.length/4);
let l = 0;
let movePer = 25.34;
let maxMove = 203;

// Mobile view

let mobile_view = window.matchMedia("(max-width: 768px)");
if (mobile_view.matches)
 {
   movePer = 50.36;
   maxMove = 504;

 }
 let right_mover = ()=>{
   l = l + movePer;
   if (product == 1){l=0}
   for(const i of product){
     if (l > maxMove){l = l - movePer;}
     i.style.left = "-"+ l + '%';
   }
 }
 i = 0;
 document.getElementById('span-1').onclick = () => { console.log(i); }

 $('document').ready(function() {
  alert("Hello");
  $('go_for').on('click', function(){
      var url = "/ads_filter"
      console.log("URl", url);
      $.ajax({
          type: "POST",
          url: url,
          dataType: 'json',
          data: {
              "status" : $("#bugselect").val()
          },
          success: function(data) {
              alert('Bug status changed to : ' + $("#bugselect").val());
          },
          error: function(e){
              alert('error');
          }
      })
  })
});
