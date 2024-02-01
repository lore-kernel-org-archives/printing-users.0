Received: from filter.openoffice.nl (filter.openoffice.nl [144.76.204.185])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6BAD3D960
	for <printing-users@lists.linux.dev>; Thu,  1 Feb 2024 22:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=144.76.204.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706826955; cv=none; b=N/WFsjJZTVx60WqmhgiO/fIiYd1sCcziT+0/bpzlGZME/YFHCCfEslzmiuTkA3hhqFUOqwPxfKTCgheLklV7beeZYkZAU4eYVfy7YXHnY5uua8fAIt30Ot1UBDyrjM3qOHujsW73z7GHl87s1lEc9cNpV6pzref0u3QAr17UWvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706826955; c=relaxed/simple;
	bh=Bg2IWHOS6gAkARFHgsbKiqVhJ8l8QZFlXy3kI4q7kDo=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Q6KXUlAay7UmtsgzUzuyikU3LGfgdeXXFNW7Kp/kzfH4dJmWfLrrYnjf/s/cvA1QPLEaH+44hJiL4BpxBeZHpnBXiWI5P1wy3jNz8gONm+ByAIg4QkNx9atCDx3lfpFWuQHHXbKuthBXKO4ZqZb2fuovJfPlU9ByOv0v8hPa3Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl; spf=pass smtp.mailfrom=sessink.nl; dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b=qAMkwi1P; arc=none smtp.client-ip=144.76.204.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sessink.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b="qAMkwi1P"
Received: from localhost (localhost [127.0.0.1])
	by filter.openoffice.nl (Postfix) with ESMTP id 1550110073F
	for <printing-users@lists.linux.dev>; Thu,  1 Feb 2024 23:35:43 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at filter.openoffice.nl
Received: from filter.openoffice.nl ([IPv6:::1])
	by localhost (filter.openoffice.nl [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id ytAYlnCa_nSK for <printing-users@lists.linux.dev>;
	Thu,  1 Feb 2024 23:35:40 +0100 (CET)
Received: from blub.net (mail.blub.net [95.217.39.243])
	by filter.openoffice.nl (Postfix) with ESMTP id 72325100728
	for <printing-users@lists.linux.dev>; Thu,  1 Feb 2024 23:35:40 +0100 (CET)
Received: from [IPV6:2a02:a46d:bbe9:0:5708:4290:278:c3a7] (2a02-a46d-bbe9-0-5708-4290-278-c3a7.fixed6.kpn.net [IPv6:2a02:a46d:bbe9:0:5708:4290:278:c3a7])
	by blub.net (Postfix) with ESMTPSA id 1BD3C300184
	for <printing-users@lists.linux.dev>; Thu,  1 Feb 2024 23:35:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
	t=1706826940; bh=Bg2IWHOS6gAkARFHgsbKiqVhJ8l8QZFlXy3kI4q7kDo=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=qAMkwi1PmoYQUr0JOI/SXccHylt2Sr9MYeN60Enzwq9o/Ggjl6hfeltj1ctZhbLnf
	 De2UzVLuRQXWuykN6DJVYoB6tGs9oMVrkb6gCDS/t1qWWTc7ioioGoFcP0ModI9did
	 F4cZfONihFrBToBFXp36YBcC/YBZHjqzAcZH70wE=
Message-ID: <b0aea059-3333-47e8-bdaa-0d0a52002fdd@sessink.nl>
Date: Thu, 1 Feb 2024 23:35:38 +0100
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: hplip-printer-app hangs and oddities (Re: Cups automatic duplex
 printing problems)
To: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
References: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
 <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
 <5bf4527c-004f-4324-8977-ba2431373d6b@sessink.nl>
 <7CC4FC04-EB2B-4AA4-9244-87016D2B2946@msweet.org>
 <e938a691-098a-46b8-9725-11a3259b6844@redhat.com>
 <e43a7eab-2ca4-4fcb-a345-fb65061b18b8@sessink.nl>
 <SYBP282MB2617E3FA5A60DFE9E56A9A21877C2@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
From: Valentijn Sessink <valentijn@sessink.nl>
Content-Language: en-US
In-Reply-To: <SYBP282MB2617E3FA5A60DFE9E56A9A21877C2@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi list,

Dougs mention of the Snap repo helped somewhat but also broke somewhat more.

- I tried using the Snap backend, which seemed to help, a 2 sided print 
comes out 2 sided and a 2 copy 2 sided print comes out in 2 copies. (Or 
that is what I guessed from the remote printer display that tells me 
that the latter had 4 sides and printed out on 2 sheets of paper.) So 
far, so good.

- However. This makes things worse for my personal, unfortunately 
unbreakable, HP Laserjet 2055DN. I have installed the snap 
hplip-printer-app (edge) and added the printer, but it's printing raw 
Postscript every other time (%%@PJL ENTER LANGUAGE = Postscript 
%!PS-Adobe-3.0 %%LanguageLevel: 2).

Trying to use the pcl3 variant seems somewhat better but I've seen the 
weirdest messages in the logs. I even saw a 
"hplip-printer-app.hplip-printer-app-server[57930]: Segmentation fault 
(core dumped)" when I tried to remove a printer - maybe too soon, I'm 
not sure.

Also, removing jobs sometimes makes hplip-printer-app hang, i.e.  become 
totally non responsive; I've seen "hp[48675]: io/hpmud/jd.c 632: timeout 
write_channel hp:/net/HP_LaserJet_P2055dn?ip=172.17.2.55" that I don't 
understand and cannot get rid of, the Snap doesn't properly restart in 
these situations 
("snap.hplip-printer-app.hplip-printer-app-server.service: Killing 
process 54142 (hplip-printer-a) with signal SIGKILL.", "Failed with 
result 'timeout'" and "Unit process 54133 (hplip-printer-a) remains 
running after unit stopped."

I've also seen Evince snap hanging during getting printer information, 
but I'm not in the mood to yet have to debug _another_ printing problem.


Anyway, I'm guessing: the old way of printing doesn't work anymore for 
new printers but the new way of printing doesn't work for older printers 
yet? What should I do if I need the best of both worlds?


(Also: using the snap printing system makes Libreoffice forget all 
printers unless Libreoffice is a snap as well, but thats _even_ lower on 
the todo list than the Evince problem - and probably even off topic 
here, too).

Best regards,

Valentijn

On 31-01-2024 12:38, Douglas Kosovic wrote:
> Hi Valentijn,
[...]
> You could then try the official OpenPrinting Snap of CUPS for a much newer version of CUPS that has many bug fixes:
> https://snapcraft.io/install/cups/ubuntu
> 
> I believe Ubuntu will be moving to the CUPS Snap for its printing system in a future release
-- 
Durgerdamstraat 29, 1507 JL Zaandam; telefoon 075-7100071
