
function AgregarAlCarrito(pid){
    
    var carrito = {
        pid : pid
    };
    
    fetch('process/addCarrito.jsp?pid='+pid,{method: 'POST',contentType :'application/json',body: JSON.stringify(carrito)})
    .then(response =>{
      response.json().then(total =>{
          var carrNumber = document.getElementById('contador');
          carrNumber.textContent = total;
      }); 
    })
}
