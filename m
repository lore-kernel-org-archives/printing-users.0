Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A3237BE87
	for <printing-users@lists.linux.dev>; Wed, 14 Jan 2026 08:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768378697; cv=none; b=OuXKyEhB65kOiXPdaF2HNVd+D30t5TBbSN/GTGP3D4jYxhsX9MtRQ7EooVHCly9F/uOeo4EwXPrSMmV3XiwLY0KPasyfo/Vt9ppDRJTtjMrARIxPAKiIKZC1oCHx6yPZ8BKTD6Q9wuqHuw8WHnTWIZayu9PktUTGQQ3cYFJQzt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768378697; c=relaxed/simple;
	bh=MTEolYJEuTWNKn6jZaPh2PE4zMpDBTpQ28w+xW8mfTQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
	 In-Reply-To:Content-Type; b=WwaTPGqSkwc3bGjAf4/wiLraixfg+uKWhuJ04qn0x96P9CIx22czF0Gvnvz4TibP6/a0KA5Lq7Gznr3KyTNp0EaBrByAgLa2w4ai6D+TDNFJIW+vXTYVCV6z6D2LnyFMOOuIgEkp4Ls9mo0xOED8CnVPvwikWfZ0tWbo6qqfLL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QB9BMQt5; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QB9BMQt5"
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47d1d8a49f5so53040555e9.3
        for <printing-users@lists.linux.dev>; Wed, 14 Jan 2026 00:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768378690; x=1768983490; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+4iELnoBHRotj7+HdvkUzQ70ezj64JOZRxsxkE7NWS0=;
        b=QB9BMQt5aEWHgezkS7y2aUm5cQoK1ILzWgUeGqC9Ga/JX6WHsGamJwRLoVy0YKewk2
         BC/Y7ITEr26nEEZIXq5xeQ0cOBizIHzpDFwl0BkLxHpbUm/qnjAFJhNz9I4idf664jBl
         /DN9oeLTc6qu1R1OYD7jkU6uHC8y2v7X4q/sbn3Ib8CkG0qNb5AASbes78HqXrf29Gua
         hKmGSpquZtezhaI52vaRlYVJ/YnZVlwZMHEn8QgLTSwlNYZ5s86PoQpoDoTF0aXUmY1P
         RizPtgnyUBmGMzF6sm/S9YkYdYeXZhiGz4AYG7mONl9IjPLTmSBl1DmRC238uENrtEyG
         YlqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768378690; x=1768983490;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+4iELnoBHRotj7+HdvkUzQ70ezj64JOZRxsxkE7NWS0=;
        b=bPBEVrW8u2xGbVZ6DS+LdjFG4vk8+kB0bx0d6vOeJexObU5TrDYkFIyKBCWzS6CmuS
         TQvb8jD4f9MMIGlTXlt5cudX5vgs9P/npbacFlz17FQsS6XnN5WZ6IUS28TK7GaZdCkm
         L6pJI75LrOSkbHNRtH2u1FBGocxPlEB7H61WwAmx5mrP7n7K/813OHmoZE8lqQKEbCNM
         /p4uLR0L6KBzog/DZ9x12mK52Vpj7TfeZHeT0ucyeVI+F6tlusG4bUVBg2eciF1hIIx0
         drrs/ziWLWiBLiuCIXJl4dtORmuKBqdIezBLKeQc1LT0TpY2D/bT8HxMkcGjYBspLwpa
         704A==
X-Forwarded-Encrypted: i=1; AJvYcCXkyrvPDjHHWGqbNzAVbb9kzsrfFWkkJOrjLogzs5xu6CBI1yh5+5N9of40PpOjKV3k/WFl8MRT57eFt3elYA==@lists.linux.dev
X-Gm-Message-State: AOJu0Yz0k4Jx97I1G6U4oout4jAVlawk6axB3hME63BkGTXVtuQ5WIeY
	gOyfmTxMX0324DhoOCHDIoVm0z8PxvSATEQ4AiznJgDFT7q5iN79Qgy2
X-Gm-Gg: AY/fxX4NIJWPZ/w/QDSA1F74wP+S1VXY47Q525xCfZRRQhKRLaUEreCDqIGCeGIKGC9
	Sgca4lPPuJWBeNyYs1gFo2tn4rt37Ob+sxsyN2a//f6MKQi5XO1S27pKGZCFqdwCVUxhOG3i5UH
	zDHtW48gSCXlJfs4LwU5L7SpzonWfpKMpsRZ1xMGMi8BvFrVqrU6UMmvUMe+4s1e8DN4puF6m9k
	plX4zyktxoZRAuevuWdmWcRqW/vymr/fxJWuPCckUrfULoVAHKR5SNTdKjf2ixQMQfs1nESLmfj
	epTrdIA3TU+Rd3L9/5UFqwYdwY9xyN1j64AhIgKCvRK24oS3gGRgVcMx3AzeFASee4EYEqKYMZx
	7b2r2JAJHrmsdLHr6MdK9OfCmtoHWs8Jt/lQ6IB8PwDbf0GDFtL7W9Pde85jMt3K4vQamTsm7OE
	1Gsio9nQkkPRso1KZ8xnD33czRl1tdROk9jzSoKBoZbRbcy/w7JCmgRcMtweyDgeC76ak=
X-Received: by 2002:a05:600c:5490:b0:47e:e20e:bba4 with SMTP id 5b1f17b1804b1-47ee3356e79mr17802125e9.18.1768378690159;
        Wed, 14 Jan 2026 00:18:10 -0800 (PST)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee55d42f0sm17286115e9.7.2026.01.14.00.18.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 00:18:09 -0800 (PST)
Message-ID: <f2884298-af5b-474b-9ab1-7fd93bc828bf@gmail.com>
Date: Wed, 14 Jan 2026 09:18:08 +0100
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Inquiry Regarding RISC-V Architecture Support
To: =?UTF-8?B?6buE6KiA5Lyf?= <yanwei.huang@deepcomputing.io>,
 "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>,
 "printing-architecture@lists.linux.dev"
 <printing-architecture@lists.linux.dev>
References: <7c9337b79c412431401958354b131e22fbf4940c.f8c4ec63.d1dc.40e3.93fe.7ecf7c83f66f@feishu.cn>
Content-Language: en-US
Cc: Yuning Liang <yuning.liang@deepcomputing.io>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <7c9337b79c412431401958354b131e22fbf4940c.f8c4ec63.d1dc.40e3.93fe.7ecf7c83f66f@feishu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/13/26 07:28, 黄言伟 wrote:
> Dear OpenPrinting Team,
> 
> I hope this email finds you well. Please accept my apologies for any inconvenience. I am an enthusiast of RISC-V architecture and own several RISC-V devices. I am writing to inquire whether OpenPrinting supports the RISC-V architecture.
> 
> If support is available, could you kindly provide guidance on how to install and run printer drivers on my RISC-V devices? Any assistance you could offer would be greatly appreciated.
> 
> Thank you for your time and support.
> 
> Best regards,
> Yanwei
> 

The printing stack consisting of CUPS, cups-filters, Ghostscript, and other 
components works on RISC-V. This is thanks to the portable way of coding applied 
by most open-source developers, especially also the developers working on said 
components of the printing stack.

So distros which publish a RISC-V version contain a working printing stack and 
driverless IPP printers (practically all modern ones are, AirPrint, Mopria, IPP 
Everywhere) just work with them. Also there are many open-source printer drivers 
for many legacy and specialty printers of the last 30 or 40 years, and distros 
usually include many of those.

I by myself have tested the printing stack on RISC-V, running Ubuntu on the 
first DC ROMA mainboard for Framework laptops a year ago and everything built 
and worked for me, both with standard Debian packages and with Snap packages:

https://openprinting.github.io/OpenPrinting-News-We-got-a-Framework-RISC-V-board-from-DeepComputing/

With this I know that printing with my driverless IPP printer just works as it 
does with an x86 client, but for all the old printer drivers I only know that 
they build on RISC-V. As I do not have all these printers and as many of the 
drivers are written by hobby programmers who just wanted to get their printer to 
work and perhaps did not make their code that portable (at least I did not see 
many complaints from users of non-x86 architectures, like ARM or so) I am not 
sure whether all of them will actually work correctly on RISC-V.

I was responsible for the Ubuntu packaging of the printing stack in that time 
and when testing on RISC-V I did not modify or fix any of the packages for 
RISC-V issues. They all just worked (or at least built in case of legacy printer 
drivers). I only needed to activate RISC-V builds for our Snaps in the Snap Store.

What is really a problem are printers which need proprietary drivers, as those 
drivers are closed source only available for x86. Here one would need to run an 
x86 emulator. This approach is already made use of. We have a contributor at 
OpenPrinting who sells ARM-based SBCs to turn legacy printers into driverless 
IPP printers and he does not only install all open-source drivers on them but 
also an x86 emulation framework to allow running proprietary drivers.

Fortunately these printers which need proprietary drivers are rather rare nowadays.

    Till

