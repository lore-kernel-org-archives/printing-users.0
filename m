Received: from mail.vordruckleitverlag.de (mail.vordruckleitverlag.de [136.243.178.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2575A257ACF
	for <printing-users@lists.linux.dev>; Wed, 20 Aug 2025 05:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.243.178.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755667719; cv=none; b=vCtP0rp5bpiij2JaY2l+uXP1XT/PejD7Q1v/PscZjp3K7rmCSeYJo99ZECZozHZDY9V558ll5SpfwfrjuRpRHKWYLsjZyBZkU3Q9HrB35Sez/lDnz1Lcsf9x3qgbCCQeu0NriYGvkdAKKD8fUGaIINOFSbl9NwpWlosoAW2z4uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755667719; c=relaxed/simple;
	bh=t4kIYQsQpWSe0lGgD2mGIhoCXQziyWjNTXbkNEPfEro=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=njm/9n5urgm94KXL0dDopp6V2wMNTNN52ZHsXoBXBFNZHqfk+HyiEDazeecNlib8DB7pLizFlmV0C/v3m4xCahfZeEEr83lllL9g97gOl6iwH1zm1E63LwijQZTuTMy07O8EODprC9Kf9P171H/K4QDbTkXBCgBFkRPVjY84+fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vordruckleitverlag.de; spf=pass smtp.mailfrom=vordruckleitverlag.de; arc=none smtp.client-ip=136.243.178.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vordruckleitverlag.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vordruckleitverlag.de
Received: from [192.168.2.116] (p5097cf15.dip0.t-ipconnect.de [80.151.207.21])
	by server1020.dmsolutionsonline.de (Mailservice) with ESMTPSA id E7B1CB18A5B1
	for <printing-users@lists.linux.dev>; Wed, 20 Aug 2025 07:28:25 +0200 (CEST)
Authentication-Results: server1020;
        spf=pass (sender IP is 80.151.207.21) smtp.mailfrom=listen@vordruckleitverlag.de smtp.helo=[192.168.2.116]
Received-SPF: pass (server1020: connection is authenticated)
Message-ID: <70c45d50-4972-465b-bfa3-5ab1a69da3b5@vordruckleitverlag.de>
Date: Wed, 20 Aug 2025 07:28:25 +0200
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: How to relay driverless?
Content-Language: de-DE
To: printing-users@lists.linux.dev
References: <4125cf30-dac1-4b44-9676-4d032aebb64b@nicemail.eu>
From: =?UTF-8?B?SsO2cmcgVGjDvG1tbGVy?= <listen@vordruckleitverlag.de>
In-Reply-To: <4125cf30-dac1-4b44-9676-4d032aebb64b@nicemail.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-PPP-Message-ID: 
 <175566770614.3194.14560564687612170280@server1020.dmsolutionsonline.de>
X-PPP-Vhost: vordruckleitverlag.de
X-Virus-Scanned: clamav-milter 0.103.9 at server1020
X-Virus-Status: Clean

Am 19.08.25 um 18:20 schrieb schnabeltasse@nicemail.eu:
> Can you help me with that?
> 
> 
> I have a printer that is driverless-capable.
> It is added to a cups on my server via driverless. Printing with that works.
> Now I share these printers with CUPS and avahi to an adjacent network. Not directly.
> How do I make autodiscovery on clients in the adjacent network work so that they too can automatically choose driverless and stuff works?
> 
> Same explanation in simpler statements to avoid confusion in long sentences:
> 
> (Internalnet{clients, printer, serveriface1},10.1.1.0/24)--(Server{<-avahitointernal,avahitoguestnet->})--(guestnet{randomhosts}10.2.2.0/24)
> 
> No routing between internal and guest.
> 
> Clients will discover shared printers from server.
> They will be able to add them and choose driverless.
> Or even add them automatically with cups-browsed.
> They print to that shared printer on the cups.
> And the cups brings the printjob to the specified printer in the other network.
> Via ipp everywhere driverless.
> 
> The part from cups host to printer works.
> The part from guests to cups to printer doesn't work.
> 
> 
> + Schnabeltasse +
> 

Hi,

AFAIK "Browsing On" has to be set in the cups conf and maybe the 
"BrowseLocalProtocols" too ("dnssd" here) and you should make sure, that 
the client can reach the server via https://<server>:631...

-- 
cu

jth
