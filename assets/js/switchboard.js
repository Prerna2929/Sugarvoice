(function(){
            /* ======================================================================== */
            /* ================================ UTILITY =============================== */
            /* ======================================================================== */
            
             updater = function( fun, rate ) {

                var timeout
                ,   now     = function(){return+new Date}
                ,   last    = now()
                ,   runnit  = function() {
                    var right_now = now();

                    // Don't continue if too soon (but check back)
                    if (last + rate > right_now) {
                        // Come back and check after waiting.
                        clearTimeout(timeout);
                        timeout = setTimeout( runnit, rate );

                        return 1;
                    }

                    fun();
                };

                // Provide Rate Limited Function Call
                return runnit;
            };

            /* --------
                Step 1: Provide an agent creation/management interface.
        -------- */

            var sugar_voice  = 'sugar_voice'
            ,   agent = (function(){
                var agents = {};
                return {
                    add : function(user) {
                        agents[user['uuid']] = user;
                        return user;
                    },
                    get : function(uuid) {
                        return agents[uuid];
                    },
                    all : function() {
                        return agents;
                    }
                };
            })();	
	
	
            /* --------
                Step 2: Capture Current User's Information. (change to logged in user on implementation)
        -------- */

            var current_user = agent.add({
                // User's UUID (Uniquely Identify Each Agent).
                uuid : cookie.get('uuid') || PUBNUB.uuid(function(uuid){
                    current_user.uuid = uuid;
                    cookie.set( 'uuid', uuid );
                }),

                // Get or Set User's Name
                name : cookie.get('name') || (function(){
                    var name = prompt('Agent Name:') || 'unknown agent';
                    cookie.set( 'name', name );
                })(),

                // Set user's location to Home
                room : 'sugar_voice'
            });
	
            /* --------
                Step 3: Subscribe to sugar_voice channel to receive incoming phone calls and tell others that you are logged in and ready to go.
        -------- */

            PUBNUB.subscribe({ 'channel' : sugar_voice }, function(message) {
                var button = PUBNUB.$('button')
                ,   output = PUBNUB.$('output')
		
                // Actions   
                switch (message['action']) {

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

                    // Receive User Info from 'ping'
                case 'update' :
                    user_update_lobby(message['user']);
                    break;
	
                case 'incoming_call' :
                    //start flashing your phone in a certain color to indicate incoming phone call
                    output.innerHTML = '<p>Call from ' + message['caller'] + ' with system id ' + message['sid'] + '</p><br>' + output.innerHTML	
                    $("#jquery_jplayer_1").jPlayer("play"); // Begins playing ring sound.
                    break;
				
                case 'claim_call' :
                    output.innerHTML = '<p>Agent ' + message['agent_email'] +' claimed '+ message['caller'] + ' with system id ' + message['sid'] + '</p><br>' + output.innerHTML
                    $("#jquery_jplayer_1").jPlayer("stop");
                    //add disconnect sound here - must make sure this only plays for the current user who took the call
                    break;
			
                case 'end_active_call' :
                    output.innerHTML = '<p>' + message['agent_email'] + ' ended call ' + message['caller'] + ' with system id ' + message['sid'] + '</p><br>' + output.innerHTML
                    //add disconnect sound here - must make sure this only plays for the current user who took the call
                    break;
				
                case 'requeue_call' :
                    output.innerHTML = '<p>Call requeued ' + message['sid'] + '</p><br>' + output.innerHTML
                    break;
		
                    //thank you firebug!		
                    console.log(message); 
	    
            }
        });
	
        /* --------
                Step 4: Current agent joins sugar_voice
        -------- */

        PUBNUB.publish({
            'channel' : sugar_voice,
            'message' : { 'action' : 'ping' }
        });

        /* --------
                    Step 5: Update Function (agent joined sugar_voice)
        -------- */

        function user_update_lobby(user) {
            // Agent logs in or updates
            agent.add(user);
            update_interface();
        }


        /* --------
            Step 6: Provide UI Update (with re-draw rate limit)
        -------- */

        var update_interface = updater( function() {
            // Update UI.

            // Debug
            console.log(JSON.stringify(agent.all()));
        }, 200 );

    })();