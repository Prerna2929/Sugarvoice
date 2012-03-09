/**
 * "The contents of this file are subject to the Mozilla Public License
 *  Version 1.1 (the "License"); you may not use this file except in
 *  compliance with the License. You may obtain a copy of the License at
 *  http://www.mozilla.org/MPL/
 
 *  Software distributed under the License is distributed on an "AS IS"
 *  basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 *  License for the specific language governing rights and limitations
 *  under the License.

 *  The Original Code is OpenVBX, released June 15, 2010.

 *  The Initial Developer of the Original Code is Twilio Inc.
 *  Portions created by Twilio Inc. are Copyright (C) 2010.
 *  All Rights Reserved.

 * Contributor(s):
 **/
var SugarVoice = {

    voice_channel: 'sugar_voice',

    //log to console

    log : function(message) {
            console.log(message);
    }

};

SugarVoice.action = {
    
    incoming: function (message) {
        var dialer = $('#dialer')
        if (!dialer.hasClass('open')) {
            SugarVoice.ui.toggleSwitchboardPanel(this);
        }
        
        $('.new-customer-tbody')
            .html("<td class='nc-cid'>"          + message['from'] + "</td>\n\
                   <td class='nc-first'>"        + message['first'] + "</td>\n\
                   <td class='nc-last'>"         + message['first'] + "</td>\n\
                   <td class='nc-queue'>"        + message['first'] + "</td>\n\
                   <td class='nc-city'>"         + message['first'] + "</td>\n\
                   <td class='nc-business'>"     + message['first'] + "</td>\n\
                   <td class='nc-times-called'>" + message['first'] + "</td>"
                    );
    }
    
}

SugarVoice.ui = {

    state : function() {
        var state = $('#dialer').hasClass('open') ? 'open' : 'closed';
        if (state == 'open') {
            state = $('#dialer .client-ui-tab').hasClass('open') ? 'open' : 'tab';
        }
        return state;
    },

    // Buttons	
    pressUser: function(key) {
        $('#client-ui-number').focus().val($('#client-ui-number').val() + key);
        if(!SugarVoice.connection || !key) {
            return;
        }
        SugarVoice.connection.sendDigits(key);
    },
	
    show_actions: function(elements) {
        $(elements, $('#client-ui-actions')).show();
    },
	
    hide_actions: function(elements) {
        $(elements, $('#client-ui-actions')).removeClass('muted').hide();
    },
	
    // Timer
    startTick: function() {
        this.startTime = new Date();
        this.tickInterval = setInterval('SugarVoice.ui.tick()', 1000);
        this.displayTime();
    },

    tick: function() {
        this.displayTime();
    },

    endTick: function() {
        this.startTime = null;
        if(this.tickInterval) {
            clearInterval(this.tickInterval);
            this.tickInterval = null;
        }
    },

    getTicks: function() {
        var currentTime = new Date();
        return currentTime.getTime() - this.startTime.getTime();
    },

    displayTime: function() {
        var totalseconds = Math.floor(this.getTicks() / 1000);

        var minutes = Math.floor(totalseconds / 60);
        var seconds = totalseconds % 60;

        if(minutes < 10) {
            minutes = '0' + minutes;
        }

        if(seconds < 10) {
            seconds = '0' + seconds;
        }

        $('.client-ui-timer').text(minutes + ':' + seconds);
    },
        
    displayTransferButtons: function(clicked){
        var toggle = $(clicked).find('#chat-toggle'),
        inputs = $(clicked).siblings('#chat-inputs');
        if (toggle.hasClass('open')) {
            toggle.removeClass('open').html('&raquo;');
            inputs.slideUp('fast');
        }
        else {
            toggle.addClass('open').html('&laquo;');
            inputs.slideDown();
        }
            
    },
	
    // open & close the switchboard pannel
    toggleSwitchboardPanel: function(clicked) {
        $('#dialer').toggleClass('open')                    
    },
	
    // toggle status by classname for a user in the list
    toggleUserStatus: function(userid, available) {
        var	user = $('#client-ui-user-list li#user-' + userid);
        if (available) {
            user.addClass('online');
        }
        else {
            user.removeClass('online');
        }
    }
	
	
};

$(function () {
    var dialer = $('#dialer');
  
    // PUBNUB.subscribe() - LISTEN
    PUBNUB.subscribe({
        channel  : "sugar_voice",
        error : function() { // LOST CONNECTION (auto reconnects)
            console.log("Connection Lost. Will auto-reconnect when Online.")
        },
        callback : function(message) { // RECEIVED A MESSAGE.
            console.log(message)
            // Actions   
            switch (message['event']) {

                // All Users, Send Your Info!
                case 'ping' :
                    PUBNUB.publish({
                        'channel' : sugar_voice,
                        'message' : {
                            'action' : 'update',
                            'user'   : current_user 
                        }
                    });
                    break;
	
                case 'incoming' :
                    //start flashing your phone in a certain color to indicate incoming phone call
                    SugarVoice.action.incoming(message);
                    break;
		
                    //thank you firebug!		
                    console.log(message); 
	    
            }

        }
    });
        

    /* Change this functionality to handle the clicking of the users
         * Dialer tab clicked */
    $('.client-ui-tab-wedge a, .client-ui-tab-status-inner', dialer).on('click', function(event) {
        SugarVoice.ui.toggleSwitchboardPanel(this);
    });

});