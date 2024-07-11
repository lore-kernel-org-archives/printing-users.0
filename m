Received: from filter.openoffice.nl (filter.openoffice.nl [144.76.204.185])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A42B16D305
	for <printing-users@lists.linux.dev>; Thu, 11 Jul 2024 13:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=144.76.204.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720703171; cv=none; b=R/iXDmYSdnjmfKsjQkeoEtB5LGhB2BW7LnteDTPLy5kik3XeHFnvT8EhEyjn40wsNC8WLs9sQ+l6zrK8Y2H2Ip/WIDXMErJuRUwCrhKYN70Io2VCIyLVxGHBj8sqAMkV0ikCrGGCvZ8nHO3oHhD/uOD7umFYGA766kg0x1sMN3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720703171; c=relaxed/simple;
	bh=CRglg5tClTYQ98QaTjUBeNpKGTFLwO3e448eugddkcg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GCnRjZK6/Sx6JHbT+ukjsFRWXY5D59WGwLwRYz4T7LiWc0TvwG04igLaoqEnROcgHudrm8D9U+8RGIpbMPqgs3u6RZUxVsm94JyRvrh1K0hOnCMdl0I1S/hPYb/hqPz9GjDfLaB8zQki1qdL0NwzaWqEcLYqQL5GHUEZo7D5GEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl; spf=pass smtp.mailfrom=sessink.nl; dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b=YF6AJnTz; arc=none smtp.client-ip=144.76.204.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sessink.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b="YF6AJnTz"
Received: from localhost (localhost [127.0.0.1])
	by filter.openoffice.nl (Postfix) with ESMTP id A45571009F2;
	Thu, 11 Jul 2024 15:05:59 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at filter.openoffice.nl
Received: from filter.openoffice.nl ([IPv6:::1])
	by localhost (filter.openoffice.nl [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id 6voJeMxeROCp; Thu, 11 Jul 2024 15:05:57 +0200 (CEST)
Received: from blub.net (mail.blub.net [95.217.39.243])
	by filter.openoffice.nl (Postfix) with ESMTP id 6AFD210077D;
	Thu, 11 Jul 2024 15:05:57 +0200 (CEST)
Received: from [IPV6:2a02:a46d:bbe9:0:81ba:cf91:701e:6fd3] (2a02-a46d-bbe9-0-81ba-cf91-701e-6fd3.fixed6.kpn.net [IPv6:2a02:a46d:bbe9:0:81ba:cf91:701e:6fd3])
	by blub.net (Postfix) with ESMTPSA id 36A6E300116;
	Thu, 11 Jul 2024 15:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
	t=1720703157; bh=CRglg5tClTYQ98QaTjUBeNpKGTFLwO3e448eugddkcg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YF6AJnTz2cwdd+WOIVOnvjIG3aO7GfPRTCnOXCzchVprt1Pa95oZIkzeKJq6qf3CR
	 ZKQCHOF13ze130clx7jGGfqxYuHhfXmNH/OzCW3RaMGhNHGbzfYSubEcXfzyWcBW8I
	 tJuUjNG7Cc8O48KQ2crQK62s8VGfjLclVuOOaHBM=
Message-ID: <09bdb923-393d-4608-b88e-74d0ab3c5c9d@sessink.nl>
Date: Thu, 11 Jul 2024 15:05:56 +0200
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: hplip-printer-app hangs and oddities (Re: Cups automatic duplex
 printing problems)
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
References: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
 <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
 <5bf4527c-004f-4324-8977-ba2431373d6b@sessink.nl>
 <7CC4FC04-EB2B-4AA4-9244-87016D2B2946@msweet.org>
 <e938a691-098a-46b8-9725-11a3259b6844@redhat.com>
 <e43a7eab-2ca4-4fcb-a345-fb65061b18b8@sessink.nl>
 <SYBP282MB2617E3FA5A60DFE9E56A9A21877C2@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
 <b0aea059-3333-47e8-bdaa-0d0a52002fdd@sessink.nl>
 <D50FF68C-206A-415F-8999-D2EA217F065B@msweet.org>
 <4825bc26-5434-44ff-85c1-c851a5a7cb89@sessink.nl>
 <47f41feb-8b4e-4840-9336-6ce705086dcb@sessink.nl>
 <C5628583-E69F-4CB4-B39D-5A1DCA15E401@msweet.org>
 <92f812ad-4674-470a-8dc2-a1dd9488637b@sessink.nl>
 <F430A113-E0D9-45BB-A047-7545C2F7F05C@msweet.org>
Content-Language: nl-NL
From: Valentijn Sessink <valentijn@sessink.nl>
In-Reply-To: <F430A113-E0D9-45BB-A047-7545C2F7F05C@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 11-07-2024 13:52, Michael Sweet wrote:
> If this affected all PS printers we would have heard about it a long time ago.

Only those with JCL in the PPD. And I just checked:
$ /usr/lib/cups/driver/postscript-hp list | wc -l
1184

... but only some 200 have '^*JCL' in their ppd's and only 175 have 
^*JCLToPSInterpreter. There are *very* old printers among these. Most of 
these printers will happily print PCL and I'm not sure people try to 
dive into the source for problems like this.

> I will see if I can determine what is going wrong - the whole build process for this printer application will make debugging challenging... :/

Yes it is...

Thank you for looking into this! (I added the PPD to the bug report)

Best regards,

Valentijn
-- 
Durgerdamstraat 29, 1507 JL Zaandam; telefoon 075-7100071
