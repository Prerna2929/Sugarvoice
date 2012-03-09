$(document).ready(function(){

       var chatName = "test"
       ,   channel  = "sugar-chat";

       //initialize button
       
       $( "#chatSendButton" ).button();


       PUBNUB.subscribe({
           channel  : channel,
           callback : function(message) {
               $("#incomingMessages").append(
                   "<div class='message'><span class='username'>" +
                   (message.chatName || 'Anonymous') +
                   "</span> : " +
                   (message.text || ' ') +
                   "</div>"
               );
               $("#incomingMessages").scrollTop(
                   $("#incomingMessages")[0].scrollHeight
               );
           }
       });

       $("#messageText").bind( 'keydown', function(e) {
           if ((e.keyCode || e.charCode) !== 13) return true;
           $("#chatSendButton").click();
           return false;
       });

       $("#chatSendButton").click(function(){
           PUBNUB.publish({
               channel : channel,
               message : {
                    chatName : chatName,
                    text     : $("#messageText").val()
                }
           });
           $("#messageText").val("");
       });

   });