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
{include file="_head.tpl" theme_template=true}
<body class="yui-skin-sam">
	{$SUGAR_DCMENU}
        {if $AUTHENTICATED}
<div class="container_20">   
<h2 class="client-ui-timer push_4">00:37</h2>
<div id="client-on-call" class="grid_7 push_6">
    <div id="client-ui-status">
         
        <h2 id="client-ui-message">Call in Progress with</h2>
        <h3 id="client-ui-call">Patrick Hogan</h3>
    </div>
    <div id="call-buttons">
    <button id="client-ui-transfer" class="client-ui-action-button transfer push_10">Xfer</button>
    <button id="client-ui-hangup" class="client-ui-action-button hangup push_14">Create</button>
    <button id="client-ui-create" class="client-ui-action-button hangup push_18">Block</button>
    </div>
</div>
</div>
{/if}
	<div id="header">
    {include file="_companyLogo.tpl" theme_template=true}
    {if $AUTHENTICATED}
    {include file="_globalLinks.tpl" theme_template=true}
	{/if}
    <div class="clear"></div>
    <div class="clear"></div>
    {if !$AUTHENTICATED}
    <br /><br />
    {/if}
	{if $AUTHENTICATED}
      {include file="_headerModuleList.tpl" theme_template=true}
    {/if}
	
    <div class="clear"></div>
    <div class="clear"></div>
</div>
	<div class="clear"></div>
    <div class="clear"></div>
<div id="main">
    <div id="content">
        <table style="width:100%" id="contentTable"><tr><td>
