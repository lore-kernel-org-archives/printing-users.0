Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7458F17D2;
	Fri, 14 Mar 2025 19:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741981387; cv=none; b=E+808DciwqSLy/TQLqO2YRKQ9hHYN616j9LRBakMrYASxuuCOqkPz072vfm+ajaq7h9WP/pjDbs4EaGkV2w6cyX5kP4yBaembH3xfgd2YqzdZrP/5lrRSfGwUshQK9M+9zq5Pgi5fGz1XaYcXj1mgCMv3uVQD9LOz1pLOx4fDjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741981387; c=relaxed/simple;
	bh=0cek4zicYSAilemNtWiJrixntaXoy3H/CrN+ktAhL9k=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=nhpv83Hkd4lpkl0oc1IWThL0yH8DiZpmTG3cbrGg7GHU0Atc9FUak52+hUbQ9blitoocGXwj8xKgsV+AuUm0aumkQMOjGTf7hlAGhKIrcJapX5YSOIPrjA69RAcidGJ72tv+Z+SFKCN/Wap2VK+68BuX4ULrOA3oaXX2fdhTwnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X5alBAeU; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X5alBAeU"
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43d0a5cfd7dso591855e9.1;
        Fri, 14 Mar 2025 12:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741981383; x=1742586183; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1hu/zJ2jHGdBnKchkjhSGGREZ6UBkK9mReCjWBTN9G4=;
        b=X5alBAeURrtSaRAtAj9nAw+6pC0x7kzXEK98reBL7cHO+1aUlVKY6i+TCNhneQ1Mc9
         CBRVEAJcEjic8lzPWIrfpwGU9B8HWvH2Usv6v399tb4mbF5tirkUmh2rr0TVzn+982n4
         dvIdFzHNQADmj2sZPJOhDAcipb7fUXv1rKvRx2RwvQXX0fIyCpqHuoGiS9+tO42it+3/
         xYeVDXWZgL6Q9gXmC85+s04LMMcYKWWqY/fFBQXHNBO8+HAenOs+r3Uvv4m0p4wcDBcb
         SG0TQJQrbwIXhqDgXSu+3BZc5IQe86oe/hdwjGuDPV0buTh2e1e1jrP4AGY97W/xree5
         RaDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741981383; x=1742586183;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1hu/zJ2jHGdBnKchkjhSGGREZ6UBkK9mReCjWBTN9G4=;
        b=Bzbkb0Rf5NdEJvOE6B8D7qbUKRZiIlVqo04LfgyMAEvlhNWF32RNxqMPjVYUakkTo7
         ZcqNz4yY52AhzStkpVSXOh98JU1PTfM/srirWIHvTYQS+zqVbxWCXGJCyF4Igax3FI2f
         LP5RyqozB/LVXdI9NZx9Rt0WtBKCb2J1JgN3Cmtspoh1WZ/sCVU0RdYCmHPijnoyRHb2
         71pZUz+QXnwZMIPP3zOY5S8E9rdhmk6PQyNRqhpyNF6dPaEDBuUT3IRcUS0fK7rIVlNe
         yWrlxo9pBL7tx/ZJDurt3ZWL6gOrcyxDgYXRTAmWbpehDGrG+rc69Fwrt5UyUvSOwi6+
         jdWg==
X-Forwarded-Encrypted: i=1; AJvYcCUm5TWNMwdyjLgQEZvWZSgvSmKwQfykCE0efxBFC4rezwrXF6rM1YLeVpfKUYXcreYXu7Wyt9pVL2lEjL7BDgbUUhXnuoI=@lists.linux.dev, AJvYcCXvXFO5cxKYArK7V0zSCtNCJzJqoN9cWlF+9eSuDTVjnPI5JlQc5ocGMpYi081G3uuBBO7gYNw+NkbQnAnk5Yc=@lists.linux.dev
X-Gm-Message-State: AOJu0YxzCYokpOlaWB2GboiSiNXoLqg+a2OYMzF5loo5SlsHqhGmRtvl
	iW6cHL2l1qRVvyrb2/xP4lbbzGn1Vv545VQnzbmbBhzEQ++A1Sc9hN0nF6ZP
X-Gm-Gg: ASbGncuqwEdnRk4w1XycsPXIdGPRs1bZaEv67hO7m73gBAfu0en6HBZScl2k5yVVhuh
	MAY8hTJmEKSP/EU/LjfXSOo6YpEXfcaGnLhYxRz39Vuk/5aR56yt+dz4+7KLYfY2/S7BwUOHDPI
	lf2HtfF//o6TTg5Iz7hCroGqqgM2ghf8tyON/UgxawAGPPVdfJKedrxDDuiBSl24FLfpt5wLY+n
	mbskFqk8Ars36RT5Ganjdku2kMXBPwSs891w8wF08h5aUX/cakb1vA88xjX0Bow9gt1nDOBR9ai
	nxxz/LQGWAN7KaawoE6xizdLv5Rnd0+vE5Adk9ZmvKmjhGfUyJgiGAuT0n7JkhqUpi5xh+bui88
	+dLBciG5YCEsnBdBuZCg=
X-Google-Smtp-Source: AGHT+IEeIqRW6kF/AECWxyZR2vdYtkBLeMY5mDHuFk+9szvO4FmCmBeMvc1wZdHwXUyrDxCUqjLS7w==
X-Received: by 2002:a05:600c:470e:b0:43c:ee62:33f5 with SMTP id 5b1f17b1804b1-43d1eccf8c6mr45245185e9.27.1741981383190;
        Fri, 14 Mar 2025 12:43:03 -0700 (PDT)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d200fad4dsm26563245e9.29.2025.03.14.12.43.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Mar 2025 12:43:02 -0700 (PDT)
Message-ID: <50c26c93-01e2-4a10-b878-070a6380c543@gmail.com>
Date: Fri, 14 Mar 2025 20:43:01 +0100
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Introduction and Interest in Contributing to OpenPrinting for
 GSoC
To: Abhivyakti Singh <abhivyaktis04@gmail.com>,
 printing-users@lists.linux.dev, printing-architecture@lists.linux.dev
References: <CAHDAiUqbowc-zGu_E6jLrHya0UMpp_L4pmky42k2UX+QiDEXJg@mail.gmail.com>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CAHDAiUqbowc-zGu_E6jLrHya0UMpp_L4pmky42k2UX+QiDEXJg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi, welcome to OpenPrinting!

Perhaps you already went through some points of what I am asking you to do. 
Please do what you did not have done yet.

To get deeper insight into OpenPrinting, have a look here:

https://wiki.linuxfoundation.org/gsoc/google-summer-code-2025-openprinting-projects#introduction

This is the project idea list for this year's Google Summer of Code (which you 
probably have already seen). It has an introduction about what we are doing, and 
in the beginning links to several videos and podcasts with me. Especially watch 
the Destination Linux video for a general introduction and the Indaba to learn 
about the New Architecture, removal of PPD file and classic driver support in 
CUPS 3.x.

For an impression how our GSoC projects look like, see the contributor's 
write-ups in my news posts and their final reports are linked in my October News:

https://openprinting.github.io/OpenPrinting-News-October-2024/#google-summer-of-code-2024

All my news posts are here

https://openprinting.github.io/news/

So you get updates on what we are doing and what we have done.

In the project ideas list and in the news posts you find links to join our 
Telegram group, mailing lists, and Mastodon.

Telegram OpenPrinting group: https://t.me/+RizBbjXz4uU2ZWM1

Please have a look through the materials and tell us where you are most 
interested in. Also feel free to ask questions, asking here in this chat or 
using the other communication platforms of OpenPrinting.

To familiarize with our code please try out the following

1. Create a print queue in Linux (btr to take Ubuntu as the base system) and 
print out of that.
2. Download CUPS code, build it, add a comment in the code, and try to print and 
capture the CUPS error log. Your comments should be visible in the CUPS error log.
3. Go to Openprinting.Org and learn the basics.
4. Learn about driverless print.
5. Learn about print applications.

Once you are done with these basics, let me know and we can proceed from there.

    Till



On 3/14/25 16:53, Abhivyakti Singh wrote:
> Dear OpenPrinting Maintainers,
> 
> I’m Abhivyakti Singh, a first-year Computer Science student eager to
> contribute to OpenPrinting as part of my preparation for Google Summer
> of Code (GSoC) 2025.
> 
> My experience includes:
> 
> * C/C++ programming
> * Web development
> * Linux command-line tools
> * Verilog for hardware design
> * Exploring Linux kernel development
> 
> I'm particularly interested in learning more about OpenPrinting and
> contributing to its development. If there are any beginner-friendly
> issues or resources you recommend for newcomers, I would greatly
> appreciate your guidance.
> 
> I’m excited to start learning and contributing. Looking forward to
> your suggestions!
> 
> Best regards,
> Abhivyakti Singh
> 
> GitHub: https://github.com/just-a-coder23
> 
> LinkedIn: https://www.linkedin.com/in/abhivyakti-singh-70a98231a/
> 

