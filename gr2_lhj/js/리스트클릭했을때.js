const buttons=document.querySelectorAll('article');

console.log(buttons);
buttons.forEach(el=>{
    el.addEventListener('click',(event)=>{
        console.dir(event.target.tagName);
    })
})