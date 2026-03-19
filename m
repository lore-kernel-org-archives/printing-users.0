Received: from filter.openoffice.nl (filter.openoffice.nl [144.76.204.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876721F91E3
	for <printing-users@lists.linux.dev>; Thu, 19 Mar 2026 13:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=144.76.204.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773927338; cv=none; b=VZdboq4tPXyOLe/H0l6e2wn36kl/tHj3pT770O2HlpUNtP0kQUpI+oniCJrtIaLq49ayVsKRVeqZCrdWb4or92sSf7qfX/x7tkGOD6K25et75P9O3stxYe+vxqHZ0YLIugD5r7o9x8Iym7nA1YO71Xv4rzKnAQmcWgUdTT7eoyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773927338; c=relaxed/simple;
	bh=WNaFPSJ65Km60cVCyMp+oVFqdl7fIt+a+CpLzJ+gbvU=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=m8RP2TISd3MSwmP3efciwRF5NIxHPiszf3pvZn6wCm5AKd9Iva5TgmwzZ6oj94rsgOQ3B0eyQNvJNFU7qcmGOpZyoWmc3tA4t/OkjKvJD7r7jiXKC1FPK9QMSVoU35f6VKCFYs8VRM4E6P1ogcBsyWTEsVbRSABM4kJZUari0rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl; spf=pass smtp.mailfrom=sessink.nl; dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b=p5qPqgXA; arc=none smtp.client-ip=144.76.204.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sessink.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b="p5qPqgXA"
Received: from localhost (localhost [127.0.0.1])
	by filter.openoffice.nl (Postfix) with ESMTP id E4750100447
	for <printing-users@lists.linux.dev>; Thu, 19 Mar 2026 14:28:58 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at filter.openoffice.nl
Received: from filter.openoffice.nl ([127.0.0.1])
	by localhost (filter.openoffice.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id atYkXgW152lR for <printing-users@lists.linux.dev>;
	Thu, 19 Mar 2026 14:28:58 +0100 (CET)
Received: from blub.net (mail.blub.net [95.217.39.243])
	by filter.openoffice.nl (Postfix) with ESMTP id 88A661003BA
	for <printing-users@lists.linux.dev>; Thu, 19 Mar 2026 14:28:58 +0100 (CET)
Received: from [192.168.102.110] (84-86-8-46.fixed.kpn.net [84.86.8.46])
	by blub.net (Postfix) with ESMTPSA id 5071F3001E0
	for <printing-users@lists.linux.dev>; Thu, 19 Mar 2026 14:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
	t=1773926938; bh=WNaFPSJ65Km60cVCyMp+oVFqdl7fIt+a+CpLzJ+gbvU=;
	h=Date:To:From:Subject:From;
	b=p5qPqgXAbFZhT8YI2CgxwhpaT9Bch0t7DgWI6AEdYhhJJGkQMj674N70L7VEZbrHf
	 +L59cLfWW+wbCd0+i+eTYqJF/qgVh2ueGcxIVxm1lAuAJo4mFQX3YWXQMisHo/99nH
	 UUHPQ9ZzsORinj9cm8NxQdhM7Ghu0eO5p3XTL2Ek=
Message-ID: <40ecc01e-69e6-4bb6-a98e-775cabd4091b@sessink.nl>
Date: Thu, 19 Mar 2026 14:28:57 +0100
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: nl-NL
To: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
From: Valentijn Sessink <valentijn@sessink.nl>
Subject: driverless printing and custom paper size
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi List,

I have the feeling that I'm in a catch-22 situation. I have a custom 
paper size (being a derivative of the European A4 210x297mm, this one's 
224x297).

Now the printer manufacturer tells me: "define the custom width and 
length of the paper in the print driver software and on the printer 
control panel" - essentially telling me: no, we don't advertise the 
paper sizes you entered on the printer, you'll have to re-define them 
locally.

However, the printer itself is perfectly able to print driverless - or 
at least, that is what I'm thinking when a printer just seems to "add 
itself" through cups-browsed.

This is a Xerox Altalink C8155
cups.lpoptions -p Xerox_AltaLink_C8155_A0_6A_FC -l
... tells me:
PageSize/Media Size: 12x19 3.5x5.5 4x6 5x7 6x9 8x10 A3 *A4 A5 A6 ARCHA 
ARCHB B4 B5 B6 Env10 Env9 EnvC4 EnvC5 EnvC6 EnvDL EnvMonarch EnvPersonal 
Executive FanFoldGermanLegal FolioSP ISOB4 ISOB5 ISOB6 Legal Letter 
Oficio SRA3 Statement Tabloid Custom.WIDTHxHEIGHT
InputSlot/Media Source: *Auto Tray1 Tray2 Tray3 Tray4 Tray5
MediaType/Media Type: *Auto Stationery StationeryPreprinted 
StationeryLetterhead StationeryPrepunched StationeryLightweight 
Transparency Envelope EnvelopePlain EnvelopeWindow Labels Cardstock
cupsPrintQuality/cupsPrintQuality: Draft *Normal High
ColorModel/Output Mode: *RGB Gray
Duplex/Duplex: *None DuplexNoTumble DuplexTumble
OutputBin/OutputBin: *Auto Left Middle Top
StapleLocation/StapleLocation: *None SaddleStitch SinglePortrait 
SingleRevLandscape SingleLandscape SingleRevPortrait EdgeStitchPortrait 
EdgeStitchLandscape EdgeStitchRevPortrait EdgeStitchRevLandscape 
DualPortrait DualLandscape DualRevPortrait DualRevLandscape BindPortrait 
BindLandscape BindRevPortrait BindRevLandscape
FoldType/FoldType: *None Auto Half
PunchMedia/PunchMedia: *None DualPortrait DualLandscape DualRevPortrait 
DualRevLandscape QuadPortrait QuadLandscape QuadRevPortrait QuadRevLandscape
Booklet/Booklet: *False True
cupsFinishingTemplate/cupsFinishingTemplate: *none JogOffset

However, I manually told the printer that Tray 1 now contains 224 x 
297mm paper.

https://www.support.xerox.com/en-us/article/KB0028639 is the Define 
Custom Paper Sizes page from Xerox, that tells to edit the local printer 
driver settings.

I hope someone has an idea how to proceed. Next thing I'll try is to 
actually "add" the printer manually, then change the local paper size in 
the PPD - but that doesn't make me all too happy because it means 
editing it on every computer that needs to print...

Best regards,

Valentijn
-- 
Durgerdamstraat 29, 1507 JL Zaandam; telefoon 075-7100071

