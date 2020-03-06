const buttons=document.querySelectorAll('button');

buttons.forEach(el=>{
    el.addEventListener('click',(event)=>{
        let article=event.target;
        while(article.tagName!=='ARTICLE'){
            article=article.parentElement;
        }
        if(article.classList.value)
        {
            article.classList.remove('detail_off');
        } else {
            article.classList.add('detail_off');
        }
        
    })
})