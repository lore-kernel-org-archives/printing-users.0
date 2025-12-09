Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD3C1E98EF
	for <printing-users@lists.linux.dev>; Tue,  9 Dec 2025 01:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765244848; cv=none; b=a2/1w+7iiWFQE50apeoFqzoPsNRPYGlMF5f1YBf+QyI9X1zFytSrQ3Pj1WQ2X/nSL+JMex118VMPtUrCKwcPu8skwlta8Zp4geODv+0D0I6DRjkOJgM8Zlli1DE0pKv/sB/+AdoDIouIQGvwPUDIXiiHnv2cT+CCq7X+8gsdgrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765244848; c=relaxed/simple;
	bh=mn7/RGTbCSsZztQdpN7cnMUK+W8mXZW9sHM+SJStBHE=;
	h=MIME-Version:Date:From:To:Subject:Message-ID:Content-Type; b=O5NW2bfM2/ykZQhADwawvRYgkMed4mcTv9Q+uUgG4O8TsACXE6cEjSA9xoBUFIolKQsOXar2H0nKfWBP1LfA+wKMP52LS2OmGmWmR36hhq8i+Pl0wWa0PFrCiVJ8AXth97JavQ1NyqSOksOYYzHt0vD6Hlf/c/+WLhRgFN7U7WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=I+hjqyQG; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="I+hjqyQG"
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id EA0FC273A3
	for <printing-users@lists.linux.dev>; Tue,  9 Dec 2025 02:47:24 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yrwZs_A_lNPy for <printing-users@lists.linux.dev>;
 Tue,  9 Dec 2025 02:47:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1765244843; bh=mn7/RGTbCSsZztQdpN7cnMUK+W8mXZW9sHM+SJStBHE=;
	h=Date:From:To:Subject;
	b=I+hjqyQGHwWyxWeo4XQTlK0jAXcCnNhMPJxov/JP/sYbCwQK10myFwGu09p6bht0B
	 phTfEUgpYIfz0gpHpzidIVLy8IiC1mAxYJtna/XQzdqBUsh912G59kzNpM6X+TzzNW
	 x6JMPTTwJQe0lbtojWdIb8auNdZpMptQh5ubFEezJN9sXkDv+Saw+9Rm+uNJXYAUTX
	 lYcy4lIgiPloEDhyV/IJUYXhcMpAI3XKVFwnQ7EmirFL6VmxRcvVNEXb9okoH+DOxn
	 itZeK/5C4qzYfawRJ7hHyi6G6pQ+wffWm7u9SJZd4wp8FjQIr/+KOIPx4ghfUiDdAF
	 gNIjYgzE4xzUA==
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Date: Mon, 08 Dec 2025 19:47:22 -0600
From: jacobk <jacobk@disroot.org>
To: printing-users@lists.linux.dev
Subject: Canon ImageClass MF4770n not listed on Canon OpenPrinting list
Message-ID: <983f9dd9392ab3edb0130c8b90af33a6@disroot.org>
X-Sender: jacobk@disroot.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I have access to a Canon ImageClass MF4770n printer, and I wanted to 
print to it from Trisquel. Canon provides a Linux driver [1], but I 
don't want to use it because it's proprietary, and the license might 
preclude my use case anyway (use in a business). Maybe I am reading the 
license too strictly, but I would like to avoid it anyway.

I looked at a list on openprinting.org [2] and didn't see this model 
mentioned as working or non-working, so my understanding is that this is 
a printer that hasn't been investigated much yet.

The ppd files included with the Canon driver package are released under 
a free license, but they depend on a nonfree filter program called 
"rastertoufr2", presumably to convert raster input to UFR II output. I 
found a different repository with a filter to convert PostScript to UFR 
II [3], and a different program to convert raster to PostScript [4].

Would I be correct to think those programs could be combined to build a 
fully-free printer driver for this model, or am I missing something 
important?

I also made a similar post on the Trisquel forums [5].

  - Jacob K

[1] https://in.canon/en/support/0100924010?model=imageCLASS+MF4770n
[2] https://openprinting.org/printers/manufacturer/Canon
[3] https://github.com/vicamo/cndrvcups-lb
[4] https://github.com/pts/sam2p
[5] 
https://trisquel.info/en/forum/canon-imageclass-mf4770n-will-not-work-without-proprietary-software-it-seems
