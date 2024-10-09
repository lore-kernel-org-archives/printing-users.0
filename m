Received: from outbound1.mail.transip.nl (outbound1.mail.transip.nl [149.210.149.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347931E0E1C
	for <printing-users@lists.linux.dev>; Wed,  9 Oct 2024 15:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.210.149.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728487047; cv=none; b=kGKNZN8mcssQbpRM6ICi2cT33jJ6q4j23exbrFEenmJs4vK6tg4e9I48ugidTHYeQsHG8Q8Nn7iuzhlFSRTQXm7xU3hVh3wPIRyvao3CPIn4XIpmiN4XUvI3LZEq6BTzNDNKzBwTiItAASjQhx8WMiH+BaFpsni/MI7M6vISK6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728487047; c=relaxed/simple;
	bh=B8lr5ZfCZgBy1YRyI2Oh2b+7Vi8NXO1WdhoxgmFCO3E=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=D9rBnIJEiBJZeX3lZzfIGTgGh0Zm/kvODrdCmw/trM1n3HRTsPYz0AmFFvE3LZ/y98mo8OLPx80ikeIp1y4FvOxu2JatDC+3QPEaHp9XedKLrRilCB9bZuBBnKm6B62Ix4aHf0IfccI+0SrJiLw19asTqit9R9d7ZoPWWektG5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=Julf.com; spf=pass smtp.mailfrom=Julf.com; dkim=pass (2048-bit key) header.d=julf.com header.i=@julf.com header.b=Kbg7g46n; arc=none smtp.client-ip=149.210.149.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=Julf.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=Julf.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=julf.com header.i=@julf.com header.b="Kbg7g46n"
Received: from submission8.mail.transip.nl (unknown [10.103.8.159])
	by outbound1.mail.transip.nl (Postfix) with ESMTP id 4XNx8b3RmKzRhrq
	for <printing-users@lists.linux.dev>; Wed,  9 Oct 2024 17:07:59 +0200 (CEST)
Received: from [172.24.42.151] (julf.connected.by.freedominter.net [45.138.231.4])
	by submission8.mail.transip.nl (Postfix) with ESMTPA id 4XNx8Z6V7zz2npc8w
	for <printing-users@lists.linux.dev>; Wed,  9 Oct 2024 17:07:58 +0200 (CEST)
Message-ID: <992686da-6f09-4c3c-8f87-0a65934abaf0@Julf.com>
Date: Wed, 9 Oct 2024 17:07:56 +0200
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: printing-users@lists.linux.dev
Content-Language: en-US
From: Johan Helsingius <julf@Julf.com>
Subject: Canon LBP series network printers (CAPS)
Autocrypt: addr=julf@Julf.com; keydata=
 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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: ClueGetter at submission8.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=julf.com; t=1728486478; h=from:subject:to:date:
 mime-version:content-type;
 bh=LgODmv5ns2KLL1oJ6X4h96q9lZZHh8+aNRA2D5aH4nc=;
 b=Kbg7g46ngfb46KMFEojsc2oVi/DSIICCUoLStroH+/k/mfIm3yrMPGtRiLTDBylAKq2376
 QvQhK5yT1dVbrDpxfxn8cfkoP671khtAS49r9da7dCM3jbBFcQoGpzsFVwwwUBS6PbjZVO
 qgbWX4zNyzT9BF1x82oQ/zGIqVFxqzBcDa2FIaEpUvWajls/DWsxCMK6QnwCfjFD62Or/w
 9fuRxqrlvSaft9E+qogIKZHrg7iUu2GABnWRuBAloA0Q8kw4GN/4TWbQfP8hmhcXD1ec+i
 LFVYXQqJksQz3lCGrcU4WxI8CqVuZyEpDUvCoRJuF/FHtgc7Q4j4pU4aYja74A==
X-Report-Abuse-To: abuse@transip.nl

Hello everyone,

I have a Canon LBP7210Cdn network laser printer that talks
USB and apparently AppSocket / HP JetDirect (as it listens
to port 9100).

I somehow got it to work with CUPS 2-3 years ago, but of
course I didn't document the magic incantations I went
trough.

Now I had to reinstall my OS (either my kernel got
corrupted or I got hit by the cups-browsed exploit
as suddenly shell startup took forever, and ps / top
stopped working).

Anyway, no matter what I do I can't get CUPS to work
with the printer. Tried the stuff from the Canon website,
tried other stuff, both network and USB, but no cigar.

My OS is Linux (Devuan Daedalus).

Any hints, pointers or advice greatly appreciated!

	Julf
