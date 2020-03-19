//질문올리기
const cateLi = document.querySelector('.sel_cate .cate_li');
const cateChk = document.querySelector('#cate_check');
const innerTxt = document.querySelector('.sel_cate h1 span');
const rdoBtns = document.querySelectorAll('.cate_li input[type=radio]');



function checkboxHandle(event){
    if(cateChk.checked){
        cateLi.hidden=false;
    } else {
        cateLi.hidden=true;
    }
}

function rdoBtnHandle(event){
    innerTxt.innerHTML=event.target.value;
    cateChk.checked=false;
    cateLi.hidden=true;
}


cateChk.addEventListener('change', checkboxHandle);
rdoBtns.forEach(el=>{
    el.addEventListener('click', rdoBtnHandle);
})


//펼치기
const qnaChks = document.querySelectorAll('.qna_li input[type=checkbox]');

function qnaChkHandle(event){
    const chkBox=event.target;
    const qnaLi= chkBox.parentNode;

    if(chkBox.checked){
        qnaLi.style.animation='300ms height_auto';
        qnaLi.style.maxHeight='500px';
        
    } else {
        qnaLi.style.animation='300ms height_75px';
        qnaLi.style.maxHeight='75px';
    }
}

qnaChks.forEach(el=>{
    el.addEventListener('change', qnaChkHandle);
})