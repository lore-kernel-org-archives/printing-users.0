Received: from ms-10.1blu.de (ms-10.1blu.de [178.254.4.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4715521578F
	for <printing-users@lists.linux.dev>; Fri, 30 May 2025 09:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.254.4.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748596811; cv=none; b=eV/BSSPCF+G8k0j6kTmzufg17RG5tFh4JI3JjOX2rApf9iZ7qLRku82dPxLE6CvaS3xXk05pK4iS7Ep0t23mr3Afo9OYQfmCPPwqcd0EU4kCsKeknAzO1ApsyE19i9xIspNHDHSeBl695ItGvvrLguLBZEz0pNRkrTxjndKafvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748596811; c=relaxed/simple;
	bh=wY2ASS0hqEnIKaScMD/+etk94cBxv6Usu1SN4mnFK0k=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=GOAOaRuLJHsCdo+lovMPgYhjb4Ord7sf06q8NvZrOQQ2DYt90YvnUKTqX/PXRZSEquHVYJsFswwCd3BfofUnDyY+9qlJDXUvbVcDcfqZiHM4vNXOGahXWxOMieubomu/h1ZwTa4cmSxuOXYfyrce8sIeYVRdC45jp2Mv2YexL0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=unixarea.de; spf=pass smtp.mailfrom=unixarea.de; dkim=pass (2048-bit key) header.d=unixarea.de header.i=@unixarea.de header.b=ECBpbPL4; arc=none smtp.client-ip=178.254.4.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=unixarea.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=unixarea.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=unixarea.de header.i=@unixarea.de header.b="ECBpbPL4"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=unixarea.de
	; s=blu3434000; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=y0DscpAnPH3+gHggPzSId1f6ePfIZy2Tpkiy7dFL/+Y=; b=ECBpbPL4x5xshbJmEGlTW63dgr
	7IN9p2jacxfH++oC3kAhjbMRB9vClQWvM3zbmUr4eoWeYtrqqod6lZquPdST6/SSTNw1iqXFH32zl
	goktCHYLVzl37eZAyxNzotOmVKaBeEGdVWQ1qW4iQjP07x9eKs7j0R7zXl3nmQ7GU6YM5Te/kNInO
	QOya1C9Mqmxs4HSA4+en7gJBYMKhz3LiDpf1lE7ui8jjErlis7x9Y1HzrdAVGyALeU0+oWqj410Re
	U67rG8mdrOnALFaBbRv9eJWcgXiSvIgg8qYMkJrpfcTCtVBqb1qnXoiPqwTuBT6VUPT+evW7X4cng
	6HTaOg+w==;
Received: from [212.222.85.178] (helo=pureos)
	by ms-10.1blu.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <guru@unixarea.de>)
	id 1uKvuA-008UTG-Ow
	for printing-users@lists.linux.dev;
	Fri, 30 May 2025 11:19:58 +0200
Date: Fri, 30 May 2025 11:19:57 +0200
From: Matthias Apitz <guru@unixarea.de>
To: printing-users@lists.linux.dev
Subject: Fwd: [cups] An issue with fonts in freefont-otf-20120503.tar.gz
Message-ID: <aDl4PaS2pcJEqalO@pureos>
Reply-To: Matthias Apitz <guru@unixarea.de>
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Operating-System: FreeBSD 14.0-CURRENT 1400094 (amd64)
X-message-flag: Mails in HTML will not be read!  Send only plain text.
X-Con-Id: 51246
X-Con-U: 0-guru

Hello,

I'm a long term CUPS user, since CUPS 1.4.3, 2010, because we use CUPS
to print UTF-8 text files out of a Library Management System, produced
by the company I'm working for and installed at 100++ customer sites.
The CUPS mailing list seems to be somewhat closed and I was directed to
this list with my problem.

We're printing UTF-8 to PDF with a component 'texttopf' of CUPS 2.3.6, on
Linux and a bit simplified the CUPS server issues a command like this for the
UTF-8 files to print to PDF:

CHARSET=utf-8 /usr/local/sisis-pap/cups2/lib/cups/filter/texttopdf 1 1 1 1 1  CUPS-UTF8.txt > /tmp/out.pdf

texttopdf is part of cups-filters-1.0.62 (in my case) and most of
the language sets are printed fine, but the following India
languages do not: 

Bishnupriya Manipuri: ১৮শ বারো ১৯শ শতাব্দীর হমবুকে বিষ্ণুপ্র

Bengali: সমস্ত মানুষ স্বাধীনভাবে সমান মর্যাদা এবং অধিকার নিয়ে জন্মগ্রহণ করে।
তাঁদের বিবেক এবং বুদ্ধি আছে; সুতরাং সকলেরই একে অপরের প্রতি
ভ্রাতৃত্বসুলভ মনোভাব নিয়ে আচরণ করা উচিৎ।

The resulting PDF file can be seen here:
http://www.unixarea.de/freefont-otf-20120503-CUPS-UTF8.pdf

The problem originated from a very old GNU FreeFonts, from year 2010,
and meanwhile I got access to the latest version from 2021,
freefont-otf-20210506.tar.gz. The problem persists. I started digging
into it and was told the Bengali is only supported in FreeSans, but not
in FreeMono. But, texttopdf is unwilling to use FreeSans.

I simplified the test case to:

1)
the UTF-8 file to print has only one line for Bengali

2)
the file which maps code points to fontnames has only the line for Bengali:

0980 09FF ltor single FreeSans FreeSans:bold FreeSans:oblique FreeSans:bold:oblique

3)
I enabled the DEBUG statements in texttopdf.c

It turns out on STDERR, that texttopdf.c knows from the file with the
fontnames that it *should* use FreeSans, but at the end the function
load_font() in texttopdf.c (attached) selects FreeMono:

...
DEBUG: line: "0980 09FF ltor single FreeSans FreeSans:bold FreeSans:oblique FreeSans:bold:oblique
"
DEBUG: num_fonts:0 lineptr: "FreeSans:bold FreeSans:oblique FreeSans:bold:oblique
"
DEBUG: font_load() entry: "FreeSans"
DEBUG: font_load(): pattern: "^A"
DEBUG: font_load() selected font /usr/share/fonts/FreeFont/FreeMono.otf
DEBUG: num_fonts:0 lineptr: "FreeSans:oblique FreeSans:bold:oblique
"
DEBUG: k:0 valptr: "FreeSans:bold"
DEBUG: font_load() entry: "FreeSans:bold"
DEBUG: font_load(): pattern: "^B"
DEBUG: font_load() selected font /usr/share/fonts/FreeFont/FreeMonoBold.otf
...

I've no clue why font_load() selects the FreeMono.otf and not the
FreeSans.otf.

A comment in the source says:

    /* In the list of fonts returned by FcFontSort()
       find the first one that is both in TrueType format and monospaced */

Maybe that's the reason...


Thanks

	matthias


-- 
Matthias Apitz, ✉ guru@unixarea.de, http://www.unixarea.de/ +49-176-38902045
Public GnuPG key: http://www.unixarea.de/key.pub
