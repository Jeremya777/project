import { initializeApp } from 'https://www.gstatic.com/firebasejs/9.12.1/firebase-app.js'

            
import { getAnalytics } from 'https://www.gstatic.com/firebasejs/9.12.1/firebase-analytics.js'

            
import { getAuth } from 'https://www.gstatic.com/firebasejs/9.12.1/firebase-auth.js'
import { getFirestore, collection, getDocs, addDoc, setDoc, doc, getDoc, onSnapshot,query, orderBy, deleteDoc } from 'https://www.gstatic.com/firebasejs/9.12.1/firebase-firestore.js'

// Your web app's Firebase configuration https://pastebin.com/DLdtjC1S
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  const firebaseConfig = {
    apiKey: "AIzaSyDGGX0P2WeK_s3Ws-wSdkOEYHedVjaki9E",
    authDomain: "project-b1337.firebaseapp.com",
    projectId: "project-b1337",
    storageBucket: "project-b1337.appspot.com",
    messagingSenderId: "171456950503",
    appId: "1:171456950503:web:97f7b329816a2bd3d4f242",
    measurementId: "G-0NLP44R5VJ"
  };

  // Initialize Firebase
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);
  var db =getFirestore(app);


$(".sectionMovies").animate({
    width: "100%",
    height: "100%"
},500, function(){
        $(".sectionMusic").animate({
        width: "100%",
        height: "100%"
        },500, function(){

            $(".sectionNews").animate({
                    width: "100%",
                    height: "100%"
                },500, function(){
                    $(".sectionShop").animate({
                            width: "100%",
                            height: "100%"
                        },500, function(){
                                $(".sectionSocial").animate({
                                width: "100%",
                                height: "100%"
                            },500, function(){
                                $(".sectionSettings").animate({
                                width: "100%",
                                height: "100%"
                            },500, function(){
                                $(".sectionDashboard").animate({
                                width: "100%",
                                height: "100%"
                            },500, function(){
                                $(".circle").animate({
        borderWidth: "6px"
    }, 500,function(){

    });
                            });
                            });
                            });
                        });
                });

         });
});






var services = ["#moviesId","#musicId","#newsId", "#shopId","#settingsId","#dashboardId", "#socialId" ]

var tl = gsap.timeline({ defaults: {duration: 0.5, ease: "none"}, repeat: 0 } );
var is_movie_clicked = false;
var is_music_clicked = false;
var is_news_clicked = false;
var is_shop_clicked = false;
var is_social_clicked = false;
var is_settings_clicked = false;
var is_dash_clicked = false;
var is_clicked_section = false;
$(".sectionCenter").click(function() {
    if(is_clicked_section == false){
        var nameService = "#"+$(this).attr("name")+"Id";
        var eleService = document.getElementById($(this).attr("id"));
        var idService = $(this).attr("id");
        services.splice(services.indexOf(nameService),1);
        tl.to(services, {opacity: 0, display: "none"})
        .set(".container", {display: "flex"})
        .set(nameService, {margin: "auto !important"})
        .to(nameService, {height: "100%",width:"100%"})
        .set(".back",{display: "block"})
        if(idService == "movies")
            is_movie_clicked = true;
        if(idService == "music")
            is_music_clicked = true;
        if(idService == "news")
            is_news_clicked = true;
        if(idService == "shop")
            is_shop_clicked = true;
        if(idService == "social")
            is_social_clicked = true;
        if(idService == "settings")
            is_settings_clicked = true;
        if(idService == "dashboard")
            is_dash_clicked = true;
        eleService.style.transform = "none";  
        console.log("services ", services)
        is_clicked_section = true;
        if($(this).attr("id") == "social"){
            $(this).html("<iframe src='social' class='iframeService'></iframe>")
        }
        if($(this).attr("id") == "movies"){
            $(this).html("<iframe src='movies' class='iframeService'></iframe>")
        }
    } 

})




$(".back").click(function(){
    is_clicked_section = false;
    gsap.set(".back", {display: "none"})
    const services_not_alter = ["#moviesId","#musicId","#newsId", "#shopId","#settingsId","#dashboardId", "#socialId" ];
    services = services_not_alter;
    console.log(services);
    console.log("services not altered ", services_not_alter)
    gsap.set(".container", {display: "block"})
    gsap.set(services_not_alter, {display: "block",opacity: 1})
    if(is_movie_clicked == true){
        gsap.set("#moviesId", {width:"42%", height:"50%"})
        is_movie_clicked = false;
    }
    if(is_music_clicked == true){
        gsap.set("#musicId", {width:"43.2%", height:"50%"})
        is_music_clicked = false;
    }
    if(is_news_clicked == true){
        gsap.set("#newsId", {width:"13.4%", height:"50%"})
        is_news_clicked = false;
    }
    if(is_shop_clicked == true){
        gsap.set("#shopId", {width:"47%", height:"38%"})
        is_shop_clicked = false;
    }
    if(is_social_clicked == true){
        gsap.set("#socialId", {width:"38.4%", height:"38%"})
        is_social_clicked = false;
    }
    if(is_settings_clicked == true){
        gsap.set("#settingsId", {width:"13.2%", height:"38%"})
        is_settings_clicked = false;
    }
    if(is_dash_clicked == true){
        gsap.set("#dashboardId", {width:"50%", height:"146px"})
        is_dash_clicked = false;
    }
})















let constrain = 20;
let mouseOverContainer = document.getElementById("body");
let ex1Layer = document.getElementById("movies");
let ex2Layer = document.getElementById("music");
let ex3Layer = document.getElementById("news");
let ex4Layer = document.getElementById("shop");
let ex5Layer = document.getElementById("social");
let ex6Layer = document.getElementById("settings");
let ex7Layer = document.getElementById("dashboard");
function transforms1(x, y, el) {

let box = el.getBoundingClientRect();

let calcX = -(y - box.y - (box.height / 2)) / constrain;
let calcY = (x - box.x - (box.width / 2)) / constrain;
    
return "perspective(938px) "
+ "   rotateX("+ calcX +"deg) "
+ "   rotateY("+ calcY +"deg) ";
};
function transforms2(x, y, el) {
let box = el.getBoundingClientRect();
let calcX = -(y - box.y - (box.height / 2)) / constrain;
let calcY = (x - box.x - (box.width / 2)) / constrain;

return "perspective(950px) "
+ "   rotateX("+ calcX +"deg) "
+ "   rotateY("+ calcY +"deg) ";
};
function transforms3(x, y, el) {
let box = el.getBoundingClientRect();
let calcX = -(y - box.y - (box.height / 2)) / constrain;
let calcY = (x - box.x - (box.width / 2)) / constrain;

return "perspective(500px) "
+ "   rotateX("+ calcX +"deg) "
+ "   rotateY("+ calcY +"deg) ";
};
function transforms4(x, y, el) {
let box = el.getBoundingClientRect();
let calcX = -(y - box.y - (box.height / 2)) / constrain;
let calcY = (x - box.x - (box.width / 2)) / constrain;

return "perspective(1036px) "
+ "   rotateX("+ calcX +"deg) "
+ "   rotateY("+ calcY +"deg) ";
};
function transforms5(x, y, el) {
let box = el.getBoundingClientRect();
let calcX = -(y - box.y - (box.height / 2)) / constrain;
let calcY = (x - box.x - (box.width / 2)) / constrain;

return "perspective(852px) "
+ "   rotateX("+ calcX +"deg) "
+ "   rotateY("+ calcY +"deg) ";
};
function transforms6(x, y, el) {
let box = el.getBoundingClientRect();
let calcX = -(y - box.y - (box.height / 2)) / constrain;
let calcY = (x - box.x - (box.width / 2)) / constrain;

return "perspective(294px) "
+ "   rotateX("+ calcX +"deg) "
+ "   rotateY("+ calcY +"deg) ";
};
function transforms7(x, y, el) {
let box = el.getBoundingClientRect();
let calcX = -(y - box.y - (box.height / 2)) / constrain;
let calcY = (x - box.x - (box.width / 2)) / constrain;

return "perspective(1085.5px) "
+ "   rotateX("+ calcX +"deg) "
+ "   rotateY("+ calcY +"deg) ";
};
function transformElement1(el, xyEl) {
el.style.transform  = transforms1.apply(null, xyEl);
}
function transformElement2(el, xyEl) {
el.style.transform  = transforms2.apply(null, xyEl);
}
function transformElement3(el, xyEl) {
el.style.transform  = transforms3.apply(null, xyEl);
}
function transformElement4(el, xyEl) {
el.style.transform  = transforms4.apply(null, xyEl);
}
function transformElement5(el, xyEl) {
el.style.transform  = transforms5.apply(null, xyEl);
}
function transformElement6(el, xyEl) {
el.style.transform  = transforms6.apply(null, xyEl);
}
function transformElement7(el, xyEl) {
el.style.transform  = transforms7.apply(null, xyEl);
}
mouseOverContainer.onmousemove = function(e) {

let xy = [e.clientX, e.clientY];
let position = xy.concat([ex1Layer]);
let position2 = xy.concat([ex2Layer]);
let position3 = xy.concat([ex3Layer]);
let position4 = xy.concat([ex4Layer]);
let position5 = xy.concat([ex5Layer]);
let position6 = xy.concat([ex6Layer]);
let position7 = xy.concat([ex7Layer]);
if( is_movie_clicked == false){
window.requestAnimationFrame(function(){
transformElement1(ex1Layer, position);
});
}
if(is_music_clicked == false){
window.requestAnimationFrame(function(){
transformElement2(ex2Layer, position2);
});
}
if(is_news_clicked == false){
window.requestAnimationFrame(function(){
transformElement3(ex3Layer, position3);
});
}
if(is_shop_clicked == false){
window.requestAnimationFrame(function(){
transformElement4(ex4Layer, position4);
});
}
if(is_social_clicked == false){
window.requestAnimationFrame(function(){
transformElement4(ex5Layer, position5);
});

}
if(is_settings_clicked == false){
window.requestAnimationFrame(function(){
transformElement4(ex6Layer, position6);
});
}
if(is_dash_clicked == false){
window.requestAnimationFrame(function(){
transformElement7(ex7Layer, position7);
});
}
};

$(".notifications").click(() => {
    $(".socialNotifications").toggleClass("showSocialNot")
})
/*var queryFriendship = await getDocs(query(collection(db, "requestFriendship"), orderBy("count", "asc")));
var requestFriend = [];
queryFriendship.forEach((doc) => {
    if(doc.id.split(":")[1] == nicknameUser){
        requestFriend.push(doc.data().sender);
        console.log(doc.id)
     }     
    else{
        
    }
    
});

for(var l = 0; l < requestFriend.length - 1; l++){
    var dId = requestFriend[l]+":"+nicknameUser;
    $(".socialNotifications").append(requestFriend[l]+ " would be your friend<button class='acceptRequest' id="+dId+" >Accept</button>")
    $(".acceptRequest").click(() => {
        alert($(this).attr("id"));
    })
}*/
function getNewMessages(messArray){
    for(var k = 0; k < messArray.length; k++){
      const unsub = onSnapshot(query(collection(db, "messages", messArray[k]+"/messages" ), orderBy("count")), (doc) => {
        console.log("Current data: ", doc.docs[doc.docs.length - 1].data().receiver);
        var eleChat = (doc.docs[doc.docs.length - 1].data().receiver == nicknameUser) ? doc.docs[doc.docs.length - 1].data().sender : doc.docs[doc.docs.length - 1].data().receiver 
        if(doc.docs[doc.docs.length - 1].data().sender == nicknameUser){
          $("#"+eleChat+"Chat").append("<div class='messageUser'>"+doc.docs[doc.docs.length - 1].data().message+"</div>")
        }
        else{
          $("#"+eleChat+"Chat").append("<div class='messageFriend'>"+doc.docs[doc.docs.length - 1].data().message+"</div>")
        } 
        
       });
    
    }
    }
const unsubRequestFriendship = onSnapshot(query(collection(db, "requestFriendship" ),orderBy("count", "desc")), (docu) => {
    
   /* if(docu.docs[docu.docs.length - 1].data().receiver == nicknameUser ){
        $(".socialNotifications").prepend(docu.docs[docu.docs.length - 1].data().sender+ " would be your friend <button class='acceptRequest2' id="+docu.docs[docu.docs.length - 1].id+">Accept</button>")
        $(".acceptRequest2").click(async() => {
            var requestId = $(this).attr("id");
            var getData = await getDoc(doc(db, "requestFriendship", docu.docs[docu.docs.length - 1].id ))
            var sender1 = getData.data().sender;
            var receiver1 = getData.data().receiver;
            var status1 = "accepted";
            var count1 = getData.data().count;
            setDoc(doc(db, "requestFriendship", docu.docs[docu.docs.length - 1].id), {
                sender: sender1,
                receiver: receiver1,
                count : count1,
                status : status1
            })
            console.log(sender1)
            console.log(docu.docs[docu.docs.length - 1].id)
        })
    }*/
    $(".socialNotifications").html("");
    docu.forEach((request) => {
        if(request.data().receiver == nicknameUser){
            if(request.data().status == "sent"){
                $(".socialNotifications").append("<p style='color:fuchsia'>"+request.data().sender+"<p><button class='btnAcceptRequest' id="+request.id+">Accept</button><button class='btnDeleteRequest' id="+request.id+">Decline</button>")
            }
            else if(request.data().status == "accepted"){
                $(".socialNotifications").append("<p style='color:fuchsia'>"+request.data().sender+"<p> friends")

            }
            
           
        }
       if(request.data().sender == nicknameUser){
            if(request.data().status == "accepted"){
                $(".socialNotifications").append("<p style='color:fuchsia'>"+request.data().receiver+"<p> accepted your request")
                if(!$("#"+request.data().receiver).length){
                $(".containerChats").append(' <div class="chatPerson" id="'+request.data().receiver+'">\
                <div class="topChat">'+request.data().receiver+' <button class="hideChat">Hide</button></div>\
                <div class="centerChat" id="'+request.data().receiver+'Chat"></div> \
                <div class="bottomChat">\
                    <input class="messageChat"><input type="submit" class="btnSendMessage"></div>\
                </div>')
                $(".popup").append(' <div class="person" data-id="'+request.data().receiver+'"><div class="containerInfoFriends"><div class="imageFriend"></div><div class="friendMessage">'+request.data().receiver+'</div></div></div>')
      
                $(".person").click(function(){
                  $("#"+$(this).attr("data-id")).addClass("showChat")
                
             }
             );
             docMessages.push(nicknameUser+":"+request.data().receiver);
             console.log("docMessages", docMessages)
             console.log("request + nick", nicknameUser+":"+request.data().receiver)
             getNewMessages(docMessages)
             $(".btnSendMessage").click(async function(){
                var x = 1;  
                var messageData = $(this).parent().children(".messageChat").val();
                   var receiverData = $(this).parent().parent().attr('id');
                   alert(receiverData)
                   var classDate = new Date();
                   var dateData = classDate.getFullYear()+"-"+classDate.getMonth()+"-"+classDate.getDate();
                   var timeData = classDate.getHours()+":"+classDate.getMinutes()+":"+classDate.getSeconds();
                   var messagers1 = nicknameUser+":"+receiverData;
                   var messagers2 = receiverData+":"+nicknameUser;  
                   var searchMessages = await getDoc(doc(db,'messages/'+messagers1))
                   var searchMessages2 = await getDoc(doc(db,'messages/'+messagers2))
                   var selectMessage = "";
                   if(searchMessages.exists()){
                      selectMessage = messagers1;
                   }
                   else if(searchMessages2.exists()){
                        selectMessage = messagers2;
                   }
                   else {
                        selectMessage = nicknameUser+":"+receiverData;
                   }
                
                    var getDocuments = await getDocs(collection(db, "messages/"+selectMessage+"/messages"));
                    getDocuments.forEach((doc) => {
                      x++;
                    })
                    setDoc(doc(db, "messages", selectMessage), {
                      creation: "today"
                    })
                    setDoc(doc(db, "messages", selectMessage, "messages", ""+x+""), {
                      count : x,
                      message: messageData,
                      date : dateData,
                      time : timeData,
                      sender : nicknameUser,
                      receiver : receiverData
                    })
              });
            }
            }
       }
    })
    $(".btnAcceptRequest").click(async(e) => {

        var cT = e.currentTarget;
        console.log($(cT).attr("id"))
        var getData = await getDoc(doc(db, "requestFriendship", $(cT).attr("id") ))
            var sender1 = getData.data().sender;
            var receiver1 = getData.data().receiver;
            var status1 = "accepted";
            var count1 = getData.data().count;
            setDoc(doc(db, "requestFriendship",$(cT).attr("id")), {
                sender: sender1,
                receiver: receiver1,
                count : count1,
                status : status1
            })
            var selectMessage = sender1+":"+receiver1;
            setDoc(doc(db, "messages", selectMessage), {
                creation: "today"
              })
              setDoc(doc(db, "messages", selectMessage, "messages", ""+0+""), {
                count : 0,
                message: "default",
                sender : sender1,
                receiver : nicknameUser
              })
              $(".containerChats").append(' <div class="chatPerson" id="'+sender1+'">\
              <div class="topChat">'+sender1+' <button class="hideChat">Hide</button></div>\
              <div class="centerChat" id="'+sender1+'Chat"></div> \
              <div class="bottomChat">\
                  <input class="messageChat"><input type="submit" class="btnSendMessage"></div>\
              </div>')
              $(".popup").append(' <div class="person" data-id="'+sender1+'"><div class="containerInfoFriends"><div class="imageFriend"></div><div class="friendMessage">'+sender1+'</div></div></div>')
    
              $(".person").click(function(){
                $("#"+$(this).attr("data-id")).addClass("showChat")
              
           }
           );
           docMessages.push(sender1+":"+nicknameUser);
           console.log("doc messages", docMessages)
           getNewMessages(docMessages)
           $(".btnSendMessage").click(async function(){
            var x = 1;  
            var messageData = $(this).parent().children(".messageChat").val();
               var receiverData = $(this).parent().parent().attr('id');
               alert(receiverData)
               var classDate = new Date();
               var dateData = classDate.getFullYear()+"-"+classDate.getMonth()+"-"+classDate.getDate();
               var timeData = classDate.getHours()+":"+classDate.getMinutes()+":"+classDate.getSeconds();
               var messagers1 = nicknameUser+":"+receiverData;
               var messagers2 = receiverData+":"+nicknameUser;  
               var searchMessages = await getDoc(doc(db,'messages/'+messagers1))
               var searchMessages2 = await getDoc(doc(db,'messages/'+messagers2))
               var selectMessage = "";
               if(searchMessages.exists()){
                  selectMessage = messagers1;
               }
               else if(searchMessages2.exists()){
                    selectMessage = messagers2;
               }
               else {
                    selectMessage = nicknameUser+":"+receiverData;
               }
            
                var getDocuments = await getDocs(collection(db, "messages/"+selectMessage+"/messages"));
                getDocuments.forEach((doc) => {
                  x++;
                })
                setDoc(doc(db, "messages", selectMessage), {
                  creation: "today"
                })
                setDoc(doc(db, "messages", selectMessage, "messages", ""+x+""), {
                  count : x,
                  message: messageData,
                  date : dateData,
                  time : timeData,
                  sender : nicknameUser,
                  receiver : receiverData
                })
          });
            })
    $(".btnDeleteRequest").click(async(e) => {
        var cT = e.currentTarget;
        await deleteDoc(doc(db, "requestFriendship", $(cT).attr('id')))
    })
    
});

        
