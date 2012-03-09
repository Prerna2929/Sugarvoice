{*
/*********************************************************************************
 * The contents of this file are subject to the SugarCRM Master Subscription
 * Agreement ("License") which can be viewed at
 * http://www.sugarcrm.com/crm/en/msa/master_subscription_agreement_11_April_2011.pdf
 * By installing or using this file, You have unconditionally agreed to the
 * terms and conditions of the License, and You may not use this file except in
 * compliance with the License.  Under the terms of the license, You shall not,
 * among other things: 1) sublicense, resell, rent, lease, redistribute, assign
 * or otherwise transfer Your rights to the Software, and 2) use the Software
 * for timesharing or service bureau purposes such as hosting the Software for
 * commercial gain and/or for the benefit of a third party.  Use of the Software
 * may be subject to applicable fees and any use of the Software without first
 * paying applicable fees is strictly prohibited.  You do not have the right to
 * remove SugarCRM copyrights from the source code or user interface.
 *
 * All copies of the Covered Code must include on each user interface screen:
 *  (i) the "Powered by SugarCRM" logo and
 *  (ii) the SugarCRM copyright notice
 * in the same form as they appear in the distribution.  See full license for
 * requirements.
 *
 * Your Warranty, Limitations of liability and Indemnity are expressly stated
 * in the License.  Please refer to the License for the specific language
 * governing these rights and limitations under the License.  Portions created
 * by SugarCRM are Copyright (C) 2004-2011 SugarCRM, Inc.; All Rights Reserved.
 ********************************************************************************/

*}
<!--end body panes-->
		</td>
		</tr>
	  </table>
    </div>
    <div class="clear"></div>
</div>
<div id="bottomLinks">
{if $AUTHENTICATED}
{$BOTTOMLINKS}
{/if}
</div>
<div id="footer">
    {$STATISTICS}
</div>
</script>
{if $AUTHENTICATED}
            <div id="jquery_jplayer_1" class="jp-jplayer" style="display: none;"></div>
            <div id="jp_container_1" class="jp-audio" style="display: none;">
                <div class="jp-type-single">
                    <div class="jp-gui jp-interface">
                        <ul class="jp-controls">
                            <li><a href="javascript:;" class="jp-play" tabindex="1">play</a></li>
                            <li><a href="javascript:;" class="jp-pause" tabindex="1">pause</a></li>
                            <li><a href="javascript:;" class="jp-stop" tabindex="1">stop</a></li>
                            <li><a href="javascript:;" class="jp-mute" tabindex="1" title="mute">mute</a></li>
                            <li><a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute">unmute</a></li>
                            <li><a href="javascript:;" class="jp-volume-max" tabindex="1" title="max volume">max volume</a></li>
                        </ul>
                        <div class="jp-progress">
                            <div class="jp-seek-bar">
                                <div class="jp-play-bar"></div>
                            </div>
                        </div>
                        <div class="jp-volume-bar">
                            <div class="jp-volume-bar-value"></div>
                        </div>
                        <div class="jp-time-holder">
                            <div class="jp-current-time"></div>
                            <div class="jp-duration"></div>
                            <ul class="jp-toggles">
                                <li><a href="javascript:;" class="jp-repeat" tabindex="1" title="repeat">repeat</a></li>
                                <li><a href="javascript:;" class="jp-repeat-off" tabindex="1" title="repeat off">repeat off</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="jp-title">
                        <ul>
                            <li>Bubble</li>
                        </ul>
                    </div>
                    <div class="jp-no-solution">
                        <span>Update Required</span>
                        To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
                    </div>
                </div>
            </div>
   <div id="dialer">
                <div class="client-ui-tab open">
                    <div class="client-ui-bg-overlay"><!-- leave me alone! --></div>
                    <div class="client-ui-inset">
                        <div id="client-ui-tab-status">
                            <div class="client-ui-tab-wedge"><a href="#dialer"><span class="symbol">»</span> Hide</a></div>
                        </div><!-- #client-ui-tab-status -->
                    </div><!-- #client-ui-tab-inset -->
                    
                </div><!-- .client-ui-tab .open -->
                
                <div class="client-ui-content">
                    <div class="client-ui-bg-overlay"><!-- leave me alone! --></div>        
                    <div class="container_20"> 
                        <div id="client-call-panel" class="grid_8 push_1">  
                        
                            <div id="calls-waiting">
                                <div id="new-customer" class="queue-calls">
                                    <h3>New Customer</h3>
                                    <table class="db-information">
                                        <thead>
                                            <tr>
                                                <th scope="col" id="nc-cid">CID</th>
                                                <th scope="col" id="nc-first">First</th>
                                                <th scope="col" id="nc-last">Last</th>
                                                <th scope="col" id="nc-city">Queue</th>
                                                <th scope="col" id="nc-city">City</th>
                                                <th scope="col" id="nc-business">Business</th>
                                                <th scope="col" id="nc-times-called">Times Called</th>
                                            </tr>
                                        </thead>
                                        <tbody class="new-customer-tbody">
                                            <tr>
                                                <td class="nc-cid">415-343-5295</td>
                                                <td class="nc-first">Patrick</td>
                                                <td class="nc-last">Hogan</td>
                                                <td class="city">Modesto</td> 
                                                <td class="business">Karate</td>
                                                <td id="nc-times-called">1</td> 
                                            </tr>
                                        </tbody>
                                    </table>   
                                </div><!-- #new-customer --> 
                                <div id="old-customer" class="queue-calls">
                                    <h3>Old Customer</h3>
                                    <table class="db-information">
                                        <thead>
                                            <tr>
                                                <th scope="col" id="oc-cid">CID</th>
                                                <th scope="col" id="oc-first">First</th>
                                                <th scope="col" id="oc-last">Last</th>
                                                <th scope="col" id="oc-retainer">Retainer</th>
                                                <th scope="col" id="oc-office">Office</th>
                                                <th scope="col" id="oc-times-called">Times Called</th>
                                                <th scope="col" id="oc-action">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>415-343-5295</td>
                                                <td>Fred</td>
                                                <td>Friendly</td>
                                                <td>$1,300</td>
                                                <td>Modesto</td> 
                                                <td>15</td>
                                                <td><button class="client-ui-action-button transfer" id="client-ui-claim">Claim</button></td>
                                            </tr>
                                            <tr>
                                                <td>415-343-5295</td>
                                                <td>Corey</td>
                                                <td>Careless</td>
                                                <td>-$900</td>
                                                <td>Sacramento</td>
                                                <td>5</td>
                                                <td><button class="client-ui-action-button transfer" id="client-ui-claim">Claim</button></td>
                                            </tr>
                                        </tbody>
                                    </table>   
                                </div><!-- #old-customer --> 
                            </div><!-- #calls-waiting --> 
                        </div><!-- #client-call-panel --> 
                        
                        <div id="user-list" class="grid_8 push_8">
                            <ul id="client-ui-user-list">
                                <li id="user-1" class="user-item no-icons">
                                    <span class="user-name">Tom</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-2" class="user-item no-icons">
                                    <span class="user-name">Lauren</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-3" class="user-item no-icons">
                                    <span class="user-name">Katie</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-4" class="user-item no-icons">
                                    <span class="user-name">Maria</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-5" class="user-item no-icons">
                                    <span class="user-name">Maria</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-6" class="user-item no-icons">
                                    <span class="user-name">Jim</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-7" class="user-item no-icons">
                                    <span class="user-name">Steve</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-8" class="user-item no-icons">
                                    <span class="user-name">Tami</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-9" class="user-item no-icons">
                                    <span class="user-name">Tami</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-10" class="user-item no-icons">
                                    <span class="user-name">Sharon</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-11" class="user-item no-icons">
                                    <span class="user-name">Jim</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-12" class="user-item no-icons">
                                    <span class="user-name">Steve</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-13" class="user-item no-icons">
                                    <span class="user-name">Tami</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-14" class="user-item no-icons">
                                    <span class="user-name">Tami</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-15" class="user-item no-icons">
                                    <span class="user-name">Sharon</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-16" class="user-item no-icons">
                                    <span class="user-name">Jim</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-17" class="user-item no-icons">
                                    <span class="user-name">Steve</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-18" class="user-item no-icons">
                                    <span class="user-name">Tami</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-19" class="user-item no-icons">
                                    <span class="user-name">Tami</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                                <li id="user-20" class="user-item no-icons">
                                    <span class="user-name">Sharon</span>
                                    <button class="user-dial-button" style="display: none;">
                                        <span class="button-text">Transfer</span>
                                    </button>
                                    <input type="hidden" name="email" value="askhogan@gmail.com">
                                </li>
                            </ul>
                        </div>
                        
                        <div id="chat" class="grid_4 push_16"> 
                            <span id="chat-name"><strong>Discussion:</strong></span>
                            <div id="chat-image"></div>
                            <div id="chat-inputs" data-role="content">
                                <div id="incomingMessages" name="incomingMessages" class="msgContainerDiv" ></div>
                                <label for="messageText"><strong class="message-title">Message:</strong></label>
                                <textarea id="messageText"></textarea>
                                <div><button data-theme="a" id="chatSendButton" name="chatSendButton">Send</button></div>
                            </div><!-- #chat-inputs --> 
                        </div><!-- #chat --> 
                    </div><!-- #container-20 -->  
                </div><!-- #client-ui-content --> 
            </div><!-- #dialer --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.js" type="text/javascript"></script>
<div pub-key="pub-a340cfc0-c215-4708-b5b6-66a98432fcba" sub-key="sub-de9f8075-4e40-11e1-8f49-698928a00a86" ssl="off" origin="pubsub.pubnub.com" id="pubnub"></div>
<script src="http://cdn.pubnub.com/pubnub-3.1.min.js"></script>
<script src="themes/Sugar/assets/js/jquery.cookie.js"></script>
<script src="themes/Sugar/assets/js/client.js"></script>
<script src="themes/Sugar/assets/js/chat.js"></script>
<script>
{literal}
            	// @todo pull out when html is deleted from view
	var dialog = $('.call-dialog').css('opacity', 0);

	$('.twilio-call').on('click', function(e) {
		e.preventDefault();

		switch (Client.ui.state()) {
			case 'closed':
				Client.ui.toggleCallView('open');
				break;
			case 'open':
				Client.ui.toggleCallView('close');
				break;
			case 'tab':
				Client.ui.toggleTab();
				break;
			default:
				// do nothing
		}
	});
{/literal}
</script>
                        
    <!-- Google Analytics
    ================================================== -->
    <script>
{literal}        
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-29824423-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
  {/literal}
    </script>
{/if}

