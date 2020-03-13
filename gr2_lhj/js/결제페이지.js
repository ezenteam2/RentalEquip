//자세히보기 눌렀을 때 약관 내용 펼쳐짐
const detBtns=document.querySelectorAll('#detail_more');

detBtns.forEach(el=>{
    el.addEventListener('click', (event)=>{
        if(event.target.parentNode.style.height!=='auto'){
            event.target.parentNode.style.height='auto';
        } else {
            event.target.parentNode.style.height='24px';
        }
    })
})

//모두 동의 버튼을 눌렀을 때
const chkAll = document.querySelector('.check_all input');
const chkBtns=[document.querySelector('.check_1 input'),
                document.querySelector('.check_2 input'),
                document.querySelector('.check_3 input')];

console.log(chkBtns);

chkAll.addEventListener('change',(event)=>{
    if(event.target.checked){
        chkBtns.forEach(el=>{
            el.checked=true;
        })
    } else {
        chkBtns.forEach(el=>{
            el.checked=false;
        })
    }
})

//개별체크 버튼들이 모두 선택되면 모두 동의버튼도 활성화.
//하나라도 해제되면 모두 동의버튼 비활성화
function isChkAll(event){
    let result = true;
    chkBtns.forEach(el=>{
        if(!el.checked){
            result=false;
        }
    })

    if(result){
        chkAll.checked=true;
    } else{
        chkAll.checked=false;
    }
}

chkBtns.forEach(el=>{
    el.addEventListener('change', isChkAll);
})
