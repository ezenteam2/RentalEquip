var table__userid = document.querySelector(".table__userid");
var table__username = document.querySelector(".table__username");
var table__state = document.querySelector(".table__state");
var table__coupon = document.querySelector(".table__coupon");

// 상태
var state__exit = document.querySelector(".state__exit");
var stateModal = document.querySelector(".state--modal");
var table__state = document.querySelector(".table__state");

table__state.addEventListener('click',function(event){
    stateModal.style.display = 'block';
})
state__exit.addEventListener('click',function(event){
    stateModal.style.display = 'none';
})


