
import { initializeApp } from 'https://www.gstatic.com/firebasejs/9.12.1/firebase-app.js'

            
import { getAnalytics } from 'https://www.gstatic.com/firebasejs/9.12.1/firebase-analytics.js'

            
import { getAuth } from 'https://www.gstatic.com/firebasejs/9.12.1/firebase-auth.js'
import { getFirestore, collection, getDocs, addDoc, setDoc, doc, getDoc, onSnapshot,query, orderBy } from 'https://www.gstatic.com/firebasejs/9.12.1/firebase-firestore.js'




$(".person").click(function(){
     $("#"+$(this).attr("data-id")).addClass("showChat")
   
}
);

$(".hideChat").click(function(){
     $(this).parent().parent().removeClass("showChat")
})
$(".tooglePopup").click(function(){


$(".popup").toggleClass("popupHeight")

})
   



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


$(".btnSendMessage").click(async function(){
  var x = 1;  
  var messageData = $(this).parent().children(".messageChat").val();
     var receiverData = $(this).parent().parent().attr('id');
  
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



var querySnapshot = await getDocs(collection(db, "messages"));
querySnapshot.forEach(async (doc) => {
    if(doc.id.split(":")[0] == nicknameUser || doc.id.split(":")[1] == nicknameUser){
         
          docMessages.push(doc.id);
          
     }     
    else{
        
    }
    
});
var arraymessages = [];
for(var k = 0; k < docMessages.length; k++){
 
  var messagesField = await getDocs(query(collection(db, "messages/"+docMessages[k]+"/messages"), orderBy("count")));
  var messagesa = [];
  var sendNick = {};
  messagesField.forEach(async (messageDoc) => {
    sendNick = {'senderMessage': messageDoc.data().sender, 'message' : messageDoc.data().message}
    messagesa.push(sendNick);
    
  })
  var messages = {'sender': docMessages[k].replace(/:/g, "").replace(nicknameUser, ""), 'messages' :  messagesa};
  arraymessages.push(messages)
}

for(var k = 0; k < arraymessages.length; k++){
  
  //$("#"+arraymessages[k].sender+"Chat").append(arraymessages[k].messages[k].message);
  for( var z = 0; z < arraymessages[k].messages.length - 1; z++){
    
    if(arraymessages[k].messages[z].senderMessage == nicknameUser){
      $("#"+arraymessages[k].sender+"Chat").append("<div class='messageUser'>"+arraymessages[k].messages[z].message+"</div>");
    }
    else{
      $("#"+arraymessages[k].sender+"Chat").append("<div class='messageFriend'>"+arraymessages[k].messages[z].message+"</div>");
    }
    
  }
}
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
getNewMessages(docMessages);