Received: from mail.vordruckleitverlag.de (mail.vordruckleitverlag.de [136.243.178.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032B82C3259
	for <printing-users@lists.linux.dev>; Thu, 19 Mar 2026 14:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.243.178.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773929491; cv=none; b=HXN3wIPW37CgUHJWKnheZBofJT4wNmOAlFjTemX5bXtdo+LOHfWluSRAhH7RIVYpSMU2+3zUHnJorSObCqC/y3d8tnWF9ynUP1rhzg8hKN3nBnnS3nCc0Sd9deB+6wFsjHzjOAJjkla1qkU2Wen2oDGiuktsPs64bNhfv0t0g+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773929491; c=relaxed/simple;
	bh=fSatMxFSomoAmRGf0CWK1lsL7vQYarQG6SiFZRRrAWo=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=dJl/qkK/qnwdr75NuUfprJwGu4dHkTzxjNhM8wvRAExKXSoSH7iblNsih6bAEcNh5MDYTWh0yOqXtPYoVH6GLi0Rsv3po+mm43yTv+fKwHgPrKgMhKxO/8dy9us4tdaB+Vuqujh/L+xcOml6yej1rBih6KkoKW3PPK0v8ytoDFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=vordruckleitverlag.de; spf=pass smtp.mailfrom=vordruckleitverlag.de; dkim=pass (2048-bit key) header.d=vordruckleitverlag.de header.i=@vordruckleitverlag.de header.b=CdN1Oisk; arc=none smtp.client-ip=136.243.178.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=vordruckleitverlag.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vordruckleitverlag.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=vordruckleitverlag.de header.i=@vordruckleitverlag.de header.b="CdN1Oisk"
Received: from [192.168.2.116] (p5097cf15.dip0.t-ipconnect.de [80.151.207.21])
	by server1020.dmsolutionsonline.de (Mailservice) with ESMTPSA id 813D5B18264E
	for <printing-users@lists.linux.dev>; Thu, 19 Mar 2026 15:04:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=vordruckleitverlag.de; s=dmplsk; t=1773929044;
	bh=Fa1Fl6QJnZ+LnxSoaatsiZixh9iUVQEhPtIvRrFWrWY=; h=Subject:To:From;
	b=CdN1OiskHatDgDMOFNFVCGixL6kVogoATN1NPih2bsZzeLiZBcVOKRQz61pXfCQ+8
	 lyCNESd/v9nRsS8RQ2GL5dTUsN2nXs6pi8Gpgdm1J+BmWd//J5OjGlEQNiM+5FJj9a
	 AINZCmfeY/lfS0ZyFHa1XBbl7dd/Vf0EEpcFytDTZQuAnE6h9TgJjsDk04GeOUtmNF
	 2ooe6L8XDLpWjmViugWGdqGZeC+2zMHVpD9vFpWmRGK8uG+wbnebqi9eBX9jZeptAk
	 BlN5NPWCCtilxF5bLrsxaRVvyOw91gV8CcV1eYgsAov43sAsWltgX2LoQvnQO7cCb4
	 tNgqcLa2WEELA==
Authentication-Results: server1020;
        spf=pass (sender IP is 80.151.207.21) smtp.mailfrom=listen@vordruckleitverlag.de smtp.helo=[192.168.2.116]
Received-SPF: pass (server1020: connection is authenticated)
Message-ID: <a1a00a55-e7b0-45bf-80c7-1760052815a5@vordruckleitverlag.de>
Date: Thu, 19 Mar 2026 15:04:03 +0100
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: driverless printing and custom paper size
Content-Language: de-DE
To: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
References: <40ecc01e-69e6-4bb6-a98e-775cabd4091b@sessink.nl>
From: =?UTF-8?B?SsO2cmcgVGjDvG1tbGVy?= <listen@vordruckleitverlag.de>
In-Reply-To: <40ecc01e-69e6-4bb6-a98e-775cabd4091b@sessink.nl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-PPP-Message-ID: 
 <177392904473.11050.9095205167827444526@server1020.dmsolutionsonline.de>
X-PPP-Vhost: vordruckleitverlag.de
X-Virus-Scanned: clamav-milter 0.103.9 at server1020
X-Virus-Status: Clean

Am 19.03.26 um 14:28 schrieb Valentijn Sessink:
> Hi List,
> 
> I have the feeling that I'm in a catch-22 situation. I have a custom 
> paper size (being a derivative of the European A4 210x297mm, this one's 
> 224x297).
> 
> Now the printer manufacturer tells me: "define the custom width and 
> length of the paper in the print driver software and on the printer 
> control panel" - essentially telling me: no, we don't advertise the 
> paper sizes you entered on the printer, you'll have to re-define them 
> locally.
> 
> However, the printer itself is perfectly able to print driverless - or 
> at least, that is what I'm thinking when a printer just seems to "add 
> itself" through cups-browsed.
> 
> This is a Xerox Altalink C8155
> cups.lpoptions -p Xerox_AltaLink_C8155_A0_6A_FC -l
> ... tells me:
> PageSize/Media Size: 12x19 3.5x5.5 4x6 5x7 6x9 8x10 A3 *A4 A5 A6 ARCHA 
> ARCHB B4 B5 B6 Env10 Env9 EnvC4 EnvC5 EnvC6 EnvDL EnvMonarch EnvPersonal 
> Executive FanFoldGermanLegal FolioSP ISOB4 ISOB5 ISOB6 Legal Letter 
> Oficio SRA3 Statement Tabloid Custom.WIDTHxHEIGHT
> InputSlot/Media Source: *Auto Tray1 Tray2 Tray3 Tray4 Tray5
> MediaType/Media Type: *Auto Stationery StationeryPreprinted 
> StationeryLetterhead StationeryPrepunched StationeryLightweight 
> Transparency Envelope EnvelopePlain EnvelopeWindow Labels Cardstock
> cupsPrintQuality/cupsPrintQuality: Draft *Normal High
> ColorModel/Output Mode: *RGB Gray
> Duplex/Duplex: *None DuplexNoTumble DuplexTumble
> OutputBin/OutputBin: *Auto Left Middle Top
> StapleLocation/StapleLocation: *None SaddleStitch SinglePortrait 
> SingleRevLandscape SingleLandscape SingleRevPortrait EdgeStitchPortrait 
> EdgeStitchLandscape EdgeStitchRevPortrait EdgeStitchRevLandscape 
> DualPortrait DualLandscape DualRevPortrait DualRevLandscape BindPortrait 
> BindLandscape BindRevPortrait BindRevLandscape
> FoldType/FoldType: *None Auto Half
> PunchMedia/PunchMedia: *None DualPortrait DualLandscape DualRevPortrait 
> DualRevLandscape QuadPortrait QuadLandscape QuadRevPortrait 
> QuadRevLandscape
> Booklet/Booklet: *False True
> cupsFinishingTemplate/cupsFinishingTemplate: *none JogOffset
> 
> However, I manually told the printer that Tray 1 now contains 224 x 
> 297mm paper.
> 
> https://www.support.xerox.com/en-us/article/KB0028639 is the Define 
> Custom Paper Sizes page from Xerox, that tells to edit the local printer 
> driver settings.
> 
> I hope someone has an idea how to proceed. Next thing I'll try is to 
> actually "add" the printer manually, then change the local paper size in 
> the PPD - but that doesn't make me all too happy because it means 
> editing it on every computer that needs to print...
> 
> Best regards,
> 
> Valentijn

Hi,

just an idea: can you tell the printer it's a larger papersize, e.g. B4 
in the tray and then just put in your paper and print, starting from 
upper left corner, Depending on the printer this may be working...

-- 
cu

jth
