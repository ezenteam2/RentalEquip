var first = document.querySelector(".allow__must--inner1");
var firstBtn = document.querySelector(".allow__must--img1-1");
var second = document.querySelector(".allow__must--inner2");
var secondBtn = document.querySelector(".allow__must--img2-1");

firstBtn.addEventListener('click',function(event){    
    first.style.display = "block"; 
    firstBtn.style.transform = 'rotate(180deg)';
    firstBtn.style.transition = '0.5s';
})
secondBtn.addEventListener('click',function(event){
    second.style.display = "block";
    secondBtn.style.transform = 'rotate(180deg)';  
    secondBtn.style.transition = '0.5s';
})

var total = document.querySelector(".allow__total");
var totalChecked = document.querySelector(".allow__total--checked");

var must1 = document.querySelector(".allow__must1");
var must1Checked = document.querySelector(".allow__must1--checked");

var must2 = document.querySelector(".allow__must2");
var must2Checked = document.querySelector(".allow__must2--checked");

var notMust = document.querySelector(".allow__not-must");
var notMustChecked = document.querySelector(".allow__not-must--checked");

total.addEventListener('click',function(event){
    totalChecked.style.display="block";
    must1Checked.style.display="block";
    must2Checked.style.display="block";
    notMustChecked.style.display="block";
})
must1.addEventListener('click',function(event){
    must1Checked.style.display="block";
})
must2.addEventListener('click',function(event){
    must2Checked.style.display="block";
})
notMust.addEventListener('click',function(event){
    notMustChecked.style.display="block";
})