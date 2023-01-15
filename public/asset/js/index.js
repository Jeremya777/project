gsap.to(".borderLeft", {scaleY: 1, duration: 1, ease: "none"});

let tl = gsap.timeline({repeat: -1, delay: 1, defaults: {duration: 1, ease: "none"}});
tl.to(".borderLeft", { scaleY: 0, yPercent: -100})
    .to(".borderTop", { scaleX: 1}, "<")
    .to(".borderTop", { scaleX: 0, xPercent: 100})
    .to(".borderRight", { scaleY: 1}, "<")
    .to(".borderRight", { scaleY: 0, yPercent: 100})
    .to(".borderBottom", { scaleX: 1}, "<")
    .to(".borderBottom", { scaleX: 0, xPercent: -100})
    .fromTo(".borderLeft", { yPercent: 0, scaleY: 0}, {scaleY: 1, yPercent:0, immediateRender: false}, "<");

var titleSplit = new SplitText(".title", {type: "chars"});
gsap.to(titleSplit.chars,{ 
    scale: 1.2,
    color: "lime",
    backgroundColor: "whitesmoke",
    stagger:{ 
        each: 0.2,
        repeat: -1,
        from: "center",
        yoyo: true
  }})
var formDataUser = new Object();

var is_password_time = false;
registration_form_username.onkeyup = function(){
    if(this.value.length < 3 || /^[a-zA-Z0-9- ]*$/.test(this.value) == false || this.value.length > 15){
        console.log("equal")
        $(".buttonForm").css("display","none");
        
    }
    else{    
        $(".buttonForm").css("display","block");
    }
}
registration_form_plainPassword.onkeyup = function(){
    if(this.value.length < 5 || !/^[a-zA-Z0-9- ]*$/.test(this.value) == false){
        console.log("equal")
        $(".buttonForm").css("display","none");
        
    }
    else{    
        $(".buttonForm").css("display","block");
    }
}
$(".buttonForm").click(function(){
    if(is_password_time == false){
        registration_form_username.style.display = "none";
        registration_form_plainPassword.style.display = "block";
        $(".buttonForm").css("display","none");
        formDataUser.username = usernameData.value;
        console.log(formDataUser.username)
        is_password_time = true;
    }
    else{
        formDataUser.password = registration_form_plainPassword;
        console.log("password")
    }
})
    