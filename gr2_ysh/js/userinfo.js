var table__userid = document.querySelector(".table__userid");
var table__username = document.querySelector(".table__username");
var table__state = document.querySelector(".table__state");
var table__coupon = document.querySelector(".table__coupon");


// 상품 목록
var table__itemlist = document.querySelector(".table__itemlist");
var itemlist__exit = document.querySelector(".itemlist__exit");
var itemlistModal = document.querySelector(".itemlist--modal");

table__itemlist.addEventListener('click',function(event){
    itemlistModal.style.display = 'block';
})
itemlist__exit.addEventListener('click',function(event){
    itemlistModal.style.display = 'none';
})

window.onkeydown = function(event){
    if(event.keyCode==27){
        itemlistModal.style.display='none'
    }
}


// 쿠폰
var table__coupon = document.querySelector(".table__coupon");
var coupon__exit = document.querySelector(".coupon__exit");
var couponModal = document.querySelector(".coupon--modal");

table__coupon.addEventListener('click',function(event){
    couponModal.style.display = 'block';
})
coupon__exit.addEventListener('click',function(event){
    couponModal.style.display = 'none';
})

// 등급
var ranking__exit = document.querySelector(".ranking__exit");
var rankingModal = document.querySelector(".ranking--modal");
var table__ranking = document.querySelector(".table__ranking");

table__ranking.addEventListener('click',function(event){
    rankingModal.style.display = 'block';
})
ranking__exit.addEventListener('click',function(event){
    rankingModal.style.display = 'none';
})


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


