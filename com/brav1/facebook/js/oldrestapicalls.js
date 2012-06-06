var OldRestApiCalls = function()
{
	return {
		publishPost : function (pName, pCaption, pDescription, pAttachmentLink, pAttachmentImage, pAttachmentImageLink, pUserPromptMessage, pFriends, pAutoPublish, pActionLinkText, pActionLink)
		{
			FB.api(
				{
				   method: 'stream.publish',
				   message: "",
				   attachment: {
					   name: pName,
					   caption: pCaption,
					   description: pDescription,
					   href: pAttachmentLink,
					   media: [{ type: "image", src: pAttachmentImage, href: pAttachmentImageLink}]
				   },
				   user_prompt_message: pUserPromptMessage,
				   target_id: pFriends,
				   auto_publish: pAutoPublish,
				   action_links: [{text:pActionLinkText,href:pActionLink}]
				},
				function(response) {
					//var resp = eval( '(' + response + ')' );
					if (!response || response.error_code)
					{
						//alert('Post was not published.');
						//callBackKo();
					}
					else
					{
						//alert('Post was published.');
						//callBackOk();
					}
				}
			);
		}
	}
}();