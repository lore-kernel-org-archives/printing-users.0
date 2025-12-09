Received: from mail.vordruckleitverlag.de (mail.vordruckleitverlag.de [136.243.178.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647F713774D
	for <printing-users@lists.linux.dev>; Tue,  9 Dec 2025 10:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.243.178.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765275649; cv=none; b=RoBrSmbzUbl64l/DbbvaD4BhgWQRM3GgQwGnD9ZH81+5UgUduwBRjvyGbqxVNdaz+ROs5yCpfkT6lfGCyfiW3IH4A3qM5cWrN/G/1NMsNJkxiwzFLQigCx7WMlKfwX32zq/OUAws+bdyE6tUuw+sPWJhTlWMjeOmcsGtDoHSryg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765275649; c=relaxed/simple;
	bh=sEY8yPHwAqJEVvLKNv/yqkxrByeXQbzx74SvjyOH5Sg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=g8E9LLBhzknaXWoMfK1fkovZNAdHgOSlFHlcGY10odAvx+4nyGfZ12/zPHhYeSSNvWeQrnCDn39kNmmoImd+djo4T8KUSm+fLir9+Ql3/bphjUvtxEoL+9KmQVTkLn8lzCaGtSn5sPE+KH9DSgJzoiQkdvn46VsXqwf8vXB65p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=vordruckleitverlag.de; spf=pass smtp.mailfrom=vordruckleitverlag.de; dkim=pass (2048-bit key) header.d=vordruckleitverlag.de header.i=@vordruckleitverlag.de header.b=is53yof7; arc=none smtp.client-ip=136.243.178.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=vordruckleitverlag.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vordruckleitverlag.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=vordruckleitverlag.de header.i=@vordruckleitverlag.de header.b="is53yof7"
Received: from [192.168.2.116] (p5097cf15.dip0.t-ipconnect.de [80.151.207.21])
	by server1020.dmsolutionsonline.de (Mailservice) with ESMTPSA id 0194FB182C8F
	for <printing-users@lists.linux.dev>; Tue,  9 Dec 2025 11:10:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=vordruckleitverlag.de; s=dmplsk; t=1765275050;
	bh=FFsAvczGHWXsr1nzwHoDnNZK7wye6kRYERJA2lPNF08=; h=Subject:To:From;
	b=is53yof7ildMNX9Wm6prKfiuz3VgRyofozM6XyCLOYwuhHJsONSRhTuqaoasJxPac
	 n7z1n8sAWJNdmM66b3Xz13ryqXtayltg41uBtHC4IEdpJJ3SYTUFZfpWoDoCCf8CDV
	 1OSjSyUHG2kjakINg860rkPvw4/S/5jQSh7CvZaHlg7iOQF+QV5B6KQiwM3OlQ0D1h
	 4Pvy7ERchMLrUVcBePLXO1EhBGLZo6oUu/jpWFY7+MmfbClTEPzoYIkge0wGE+agzR
	 BJwf1Jmez+h4h/bTl1SV6ech/gWwDlKK5Lclq1oDcMpBaSfbAJCcCdJRSkSf1ymQmY
	 DCvQE1OruS/yQ==
Authentication-Results: server1020;
        spf=pass (sender IP is 80.151.207.21) smtp.mailfrom=listen@vordruckleitverlag.de smtp.helo=[192.168.2.116]
Received-SPF: pass (server1020: connection is authenticated)
Message-ID: <5af2f7fb-00a3-44b4-a2a0-b1dab47e2de8@vordruckleitverlag.de>
Date: Tue, 9 Dec 2025 11:10:49 +0100
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Canon ImageClass MF4770n not listed on Canon OpenPrinting list
Content-Language: de-DE
To: printing-users@lists.linux.dev
References: <983f9dd9392ab3edb0130c8b90af33a6@disroot.org>
From: =?UTF-8?B?SsO2cmcgVGjDvG1tbGVy?= <listen@vordruckleitverlag.de>
In-Reply-To: <983f9dd9392ab3edb0130c8b90af33a6@disroot.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-PPP-Message-ID: 
 <176527505019.5898.1162086505687063291@server1020.dmsolutionsonline.de>
X-PPP-Vhost: vordruckleitverlag.de
X-Virus-Scanned: clamav-milter 0.103.9 at server1020
X-Virus-Status: Clean

Am 09.12.25 um 02:47 schrieb jacobk:
> Hello,
> 
> I have access to a Canon ImageClass MF4770n printer, and I wanted to 
> print to it from Trisquel. Canon provides a Linux driver [1], but I 
> don't want to use it because it's proprietary, and the license might 
> preclude my use case anyway (use in a business). Maybe I am reading the 
> license too strictly, but I would like to avoid it anyway.
> 
> I looked at a list on openprinting.org [2] and didn't see this model 
> mentioned as working or non-working, so my understanding is that this is 
> a printer that hasn't been investigated much yet.
> 
> The ppd files included with the Canon driver package are released under 
> a free license, but they depend on a nonfree filter program called 
> "rastertoufr2", presumably to convert raster input to UFR II output. I 
> found a different repository with a filter to convert PostScript to UFR 
> II [3], and a different program to convert raster to PostScript [4].
> 
> Would I be correct to think those programs could be combined to build a 
> fully-free printer driver for this model, or am I missing something 
> important?
> 
> I also made a similar post on the Trisquel forums [5].
> 
>   - Jacob K
> 
> [1] https://in.canon/en/support/0100924010?model=imageCLASS+MF4770n
> [2] https://openprinting.org/printers/manufacturer/Canon
> [3] https://github.com/vicamo/cndrvcups-lb
> [4] https://github.com/pts/sam2p
> [5] https://trisquel.info/en/forum/canon-imageclass-mf4770n-will-not- 
> work-without-proprietary-software-it-seems
> 

Hi,

reading the license I'm sure, commercial use is allowed - if your 
business is legal ;-)

looking into the git sources [3] I'm sure they're under the same 
restrictions as I found there:

https://github.com/vicamo/cndrvcups-lb/blob/master/LICENSE-ufr2-2.40E.txt:

[1] SOFTWARE LICENSE AGREEMENT FOR CANON'S OR ITS LICENSORS' SOFTWARE 
PROGRAMS

IMPORTANT

This is a legal agreement ("Agreement") between you and Canon Inc. 
("Canon")  governing your use of Canon's or its licensors' software 
programs incorporated in this Canon's product "Canon UFR II/UFR II LT 
Printer Driver for Linux v2.40 " ("Product"), and which software 
programs are listed in Schedule 1 of Exhibit attached hereto.  Such 
Canon's or its licensors' software programs shall be
referred to hereinafter as the "Software."
...

so IMHO a driver built by this would be "tainted" as well...

I think, all ufr stuff is a "secret" of Canon and because of the linux 
drivers you can get no one had a big interest on "breaking" it. 
Espacially as Canon printers are not that wide spread in the desktop 
computer world...

-- 
cu

jth
