Received: from filter.openoffice.nl (filter.openoffice.nl [144.76.204.185])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C421755A
	for <printing-users@lists.linux.dev>; Fri,  2 Feb 2024 13:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=144.76.204.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706879884; cv=none; b=BC7cwQY1h03Bj3C163weZ8wsAdrkZdIEGmXlyuWXC11IZA5Mq25j3865BvFwM3UuYyrsg/+Z7R2QmHPatptvVeEZrrWB0b/gCdKDd1U1oCEdbvh7aWx8JLlRu1D2WJ/NDVrJmO3MtNL8xG8+d09JCCLq57ohni8ihND3CP74NJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706879884; c=relaxed/simple;
	bh=cMyP7dyWsOU5/Pbg0T/C9aOJRu9J7KThzF1D19lOJ8g=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=NCO7yHUahsFEF43akybhJ8XbcuIjmmgJ7ymtU0d0DJykdco1Xtay7MQT1RwW45J6iJ/zmPUtXG5QHCCQ3fxpH5pP/BEp0HcxqjfgINANE9TCl+yA4g8Gbuzmb525RvVQiN8HxruhNE3VAeI7RI1PznZeMq7MfeAb8F2y4qyUf7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl; spf=pass smtp.mailfrom=sessink.nl; dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b=xKmyLZ2J; arc=none smtp.client-ip=144.76.204.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sessink.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b="xKmyLZ2J"
Received: from localhost (localhost [127.0.0.1])
	by filter.openoffice.nl (Postfix) with ESMTP id E265C10073F
	for <printing-users@lists.linux.dev>; Fri,  2 Feb 2024 14:17:57 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at filter.openoffice.nl
Received: from filter.openoffice.nl ([127.0.0.1])
	by localhost (filter.openoffice.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gByk7OBRp_Kf for <printing-users@lists.linux.dev>;
	Fri,  2 Feb 2024 14:17:53 +0100 (CET)
Received: from blub.net (mail.blub.net [IPv6:2a01:4f9:6b:429d::243])
	by filter.openoffice.nl (Postfix) with ESMTP id B2BB1100111
	for <printing-users@lists.linux.dev>; Fri,  2 Feb 2024 14:17:53 +0100 (CET)
Received: from [IPV6:2a02:a46d:bbe9:0:5708:4290:278:c3a7] (2a02-a46d-bbe9-0-5708-4290-278-c3a7.fixed6.kpn.net [IPv6:2a02:a46d:bbe9:0:5708:4290:278:c3a7])
	by blub.net (Postfix) with ESMTPSA id 5E3C8300237
	for <printing-users@lists.linux.dev>; Fri,  2 Feb 2024 14:17:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
	t=1706879873; bh=cMyP7dyWsOU5/Pbg0T/C9aOJRu9J7KThzF1D19lOJ8g=;
	h=Date:To:From:Subject:From;
	b=xKmyLZ2J70n1onsQcXlCNoXR1AeOr5AXs6XzCIyhDpZzGekcz/N2DUziUyNdF7EGN
	 HLE3i/J6aNy8nT/zH7cr2sQaBdqbnoJuQQ0BpIJjdRGSNZ+vC3DAN52psVaIuwxCz/
	 wOmUcCJTknOx3pzo73JMWKtsrOXutZU/5yMtLwC8=
Message-ID: <c2df5e0f-33c1-4576-b6d2-a836bea604fe@sessink.nl>
Date: Fri, 2 Feb 2024 14:17:52 +0100
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
Subject: Postscript woes
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi list,

I'm almost sorry for yet another message.

I'm back to the "regular" (i.e. non snap) cups but it does the same with 
My HP P2055dn printer: every 2nd page is raw PS.

 From tcpdump, I'm seeing the following header sent to the printer:

·%-12345X@PJL
@PJL JOB NAME = "Test Page" DISPLAY = "4 valentyn Test Page"
@PJL SET USERNAME = "valentyn"
%%@PJL ENTER LANGUAGE = PostScript
%!PS-Adobe-3.0
%%Invocation: gs -q -dNOPAUSE -dBATCH -dSAFER -dNOMEDIAATTRS -sstdout=? 
-sDEVICE=ps2write -dShowAcroForm -sOUTPUTFILE=? 
-sProcessColorModel=DeviceGray -sColorConversionStrategy=Gray 
-dLanguageLevel=2 -r600 -dCompressFonts=false -dNoT3CCITT -dNOINTERPOLATE ?

Now shouldn't the "@PJL ENTER LANGUAGE" not be without these percentage 
signs? Why would it say "%%@PJL ENTER LANGUAGE"? Or is the "@PJL ENTER 
LANGUAGE" actually *missing* and is the %%... actually supposed to be a 
Postscript comment? (Don't think so, because the !PS-Adobe clause is on 
the next line).

Best regards,

Valentijn
