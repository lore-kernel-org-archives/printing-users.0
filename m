Received: from filter.openoffice.nl (filter.openoffice.nl [144.76.204.185])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0EB1144632
	for <printing-users@lists.linux.dev>; Fri,  2 Feb 2024 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=144.76.204.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706886638; cv=none; b=nNKcPyz8N5Ok4u0hPUCTLU4hPpZyJ/hA6QZVPr24VKimJZzC1PrzWovaLPWY03bBIhRJvUzoEHeEMsSoBcy+RjjobY+WHiLRyXsHvolfHThAu1Y2CSNJ4giceWJDtDBeHwR4TRfkfFEn06MzYkZzySMjLVEp4MU/39DlrPCFE2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706886638; c=relaxed/simple;
	bh=DUCO/KvPPjSs0Vft5X+0Yif8TxDT9FkCaHEBSRdG+TQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pSwLDzERJZGvQOe0Mwuq4P0ovyCJzbZthvvzuwfG7CfWsiQASOJpyKYVJOTLuRka8EJKuwIRqpn+kM9go78Pl1aavF01/QRoHtxAg36HjEjwyfHgjIBkptDTuEbEiyHB2Un7HIWcDRB7dBSh4MinDytMJj3cCiu0rUQxpVQkny4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl; spf=pass smtp.mailfrom=sessink.nl; dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b=jSGSg/Eu; arc=none smtp.client-ip=144.76.204.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sessink.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b="jSGSg/Eu"
Received: from localhost (localhost [127.0.0.1])
	by filter.openoffice.nl (Postfix) with ESMTP id 054311007F5;
	Fri,  2 Feb 2024 16:10:33 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at filter.openoffice.nl
Received: from filter.openoffice.nl ([IPv6:::1])
	by localhost (filter.openoffice.nl [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id QVS2cmphwPMQ; Fri,  2 Feb 2024 16:10:30 +0100 (CET)
Received: from blub.net (mail.blub.net [IPv6:2a01:4f9:6b:429d::243])
	by filter.openoffice.nl (Postfix) with ESMTP id 9FBD8100111;
	Fri,  2 Feb 2024 16:10:30 +0100 (CET)
Received: from [IPV6:2a02:a46d:bbe9:0:5708:4290:278:c3a7] (2a02-a46d-bbe9-0-5708-4290-278-c3a7.fixed6.kpn.net [IPv6:2a02:a46d:bbe9:0:5708:4290:278:c3a7])
	by blub.net (Postfix) with ESMTPSA id 3CFBA3001B4;
	Fri,  2 Feb 2024 16:10:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
	t=1706886630; bh=DUCO/KvPPjSs0Vft5X+0Yif8TxDT9FkCaHEBSRdG+TQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jSGSg/EuAWO0oKRnGWssU4jX0ewXOot/cMeu8RJBXTACvK8mQV0ikvxAJas4uEFWv
	 5BKZXPiQDsBBi8l9omXL9gjThA6ef8gc4GmRISAVzrr00SSJLR4LqCupW8AmblSYdf
	 3GRUGmGg1+4w7o3ZQlP5MKLKX0nVNgy+ONotWXAo=
Message-ID: <4825bc26-5434-44ff-85c1-c851a5a7cb89@sessink.nl>
Date: Fri, 2 Feb 2024 16:10:28 +0100
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: hplip-printer-app hangs and oddities (Re: Cups automatic duplex
 printing problems)
Content-Language: nl-NL
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
From: Valentijn Sessink <valentijn@sessink.nl>
In-Reply-To: <D50FF68C-206A-415F-8999-D2EA217F065B@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Michael,

Thanks - I did.

https://github.com/OpenPrinting/hplip-printer-app/issues/17 this is the 
bug file.

Summary: I'm seeing a
%%@PJL ENTER LANGUAGE = PostScript
(with the two %%).

Tried to find where they would be inserted (hplip? cups?), but didn't 
find them.

My "wild guesses" in the bug report were obviously wrong and please note 
that the regular hplip shows the same behaviour when printing PS. 
(Defaults to PCL though, although Postscript is "recommended", too).

If I can do anything to test, please let me know.

V.

On 02-02-2024 16:02, Michael Sweet wrote:
> This sounds like a bug in that printer application - please do file an issue here:
> 
>      https://github.com/OpenPrinting/hplip-printer-app/issues
> 
> You can also try the "hp-printer-app" snap with that printer.  It will just send PCL to your printer but has fewer moving parts so it should be more reliable.  I'm in the process of updating the snap for updated dependencies but have no pending issues that would affect your printer...

-- 
Durgerdamstraat 29, 1507 JL Zaandam; telefoon 075-7100071
