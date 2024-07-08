Received: from filter.openoffice.nl (filter.openoffice.nl [144.76.204.185])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2339149E13
	for <printing-users@lists.linux.dev>; Mon,  8 Jul 2024 18:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=144.76.204.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720463951; cv=none; b=s+z/jrw1GDtpSEYYIq88luBo0JMRPwajkBPPpN+FeFX1GjkSlbxuTMNdqJVGqZildIgYRb1s3Bu3HuP7LpEDdoIhaleXwzmwEHtdrKJo6vWGB0fhG559YjQK4LZLrtMJS6a4xzr+WCmefnfOElWmb3yfmvMT4Z4bFeOgnEKriME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720463951; c=relaxed/simple;
	bh=QSF+vCcQv4WNlqnq5WA9LoVUTUsvsUcH6FaGrsvqzXg=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=gG8lasqKrV1keF8EZnGHnbEZ9RELDGOiQu4kAArLkzKan4HAVsfoRl/qn89SIFW8GO4UJCNCXb0S5qjn3L50szlHv5qG5l1AwrkaOijWbxoVqnsK4UA5Tm7ZT+bs59BwHYykJ3TAGREcMR9Y3iHwwt8PtxOm56zLk+DMRHSBMqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl; spf=pass smtp.mailfrom=sessink.nl; dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b=G0gDHamv; arc=none smtp.client-ip=144.76.204.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sessink.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b="G0gDHamv"
Received: from localhost (localhost [127.0.0.1])
	by filter.openoffice.nl (Postfix) with ESMTP id 2D43910071B
	for <printing-users@lists.linux.dev>; Mon,  8 Jul 2024 20:29:20 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at filter.openoffice.nl
Received: from filter.openoffice.nl ([127.0.0.1])
	by localhost (filter.openoffice.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YTA66s8EmPa2 for <printing-users@lists.linux.dev>;
	Mon,  8 Jul 2024 20:29:18 +0200 (CEST)
Received: from blub.net (mail.blub.net [95.217.39.243])
	by filter.openoffice.nl (Postfix) with ESMTP id 1AEF810040C
	for <printing-users@lists.linux.dev>; Mon,  8 Jul 2024 20:29:18 +0200 (CEST)
Received: from [IPV6:2a02:a46d:bbe9:0:ec21:ce0c:925d:1797] (2a02-a46d-bbe9-0-ec21-ce0c-925d-1797.fixed6.kpn.net [IPv6:2a02:a46d:bbe9:0:ec21:ce0c:925d:1797])
	by blub.net (Postfix) with ESMTPSA id DA207300092
	for <printing-users@lists.linux.dev>; Mon,  8 Jul 2024 20:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
	t=1720463357; bh=QSF+vCcQv4WNlqnq5WA9LoVUTUsvsUcH6FaGrsvqzXg=;
	h=Date:Subject:From:To:References:In-Reply-To:From;
	b=G0gDHamvddjvwD85R7m2xHARiTi4UUqodH4pi2Kg+5be24LYnqYKtYO6SbotwUblg
	 PnFWOOT26CcQcVThbW5Vm36R15ypVO4vN18e1W5k4dgrNingQ68UP1NTT8RzFs3QUL
	 GEFx753koqVe8Plg+pQBChkIN5ZGb1ewAh/8hBpw=
Message-ID: <47f41feb-8b4e-4840-9336-6ce705086dcb@sessink.nl>
Date: Mon, 8 Jul 2024 20:29:17 +0200
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: hplip-printer-app hangs and oddities (Re: Cups automatic duplex
 printing problems)
From: Valentijn Sessink <valentijn@sessink.nl>
To: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
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
Content-Language: nl-NL
In-Reply-To: <4825bc26-5434-44ff-85c1-c851a5a7cb89@sessink.nl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi list,

I'm replying to a very old message of mine. I tried to fix 
ttps://github.com/OpenPrinting/hplip-printer-app/issues/17 because I 
like my postscript printers to actually print postscript. Yes, I'm that 
kind of nerd.

Anyway, I sort of fixed the bug but I don't know why. So it's probably 
rubbish that I made, I just don't grasp the code path here.

I switched the last two lines of ppdEmitJCL() and suddenly

On 02-02-2024 16:10, Valentijn Sessink wrote:
> %%@PJL ENTER LANGUAGE = PostScript

... the two %% are gone.

But this code has been there for ages. Has postscript with PJL been 
broken since 2014? I can't imagine that.

Would anyone please know why a normal Postscript printer with a PJL 
definition in its PPD file
*JCLToPSInterpreter: "@PJL ENTER LANGUAGE = PostScript <0A>"
... would print %%@PJL ENTER LANGUAGE (with two extra %% signs)?

Sorry for the voodoo code (semi-randomly switching two lines of code). 
With printers, I just cannot seem to avoid it :-(

Best regards,

Valentijn
-- 
Durgerdamstraat 29, 1507 JL Zaandam; telefoon 075-7100071
