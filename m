Received: from filter.openoffice.nl (filter.openoffice.nl [144.76.204.185])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3427F5A787
	for <printing-users@lists.linux.dev>; Tue, 23 Jan 2024 12:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=144.76.204.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706012190; cv=none; b=S8vjRNYVF/xrn5tBddaHE8431IypZF0XBcbVR6QnK/3McsQiLrPkA8OEguLYlOdqeTnMC+Mu131e21UMLalXwW/N5fPEVJEJdbVztYwIBjXZ95IyPlX+LwmoQve+8Z6w8d71LLDUDQF+WQTa57ng7auanBVBgSJn/dYWhLS9TOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706012190; c=relaxed/simple;
	bh=yxHVvo7NQYKkVzYWrixUBej5iLaNtX5RTiVoMqLck6c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SpVH8fqZDynNjdz8eFbfFM9eIkboEoCdcJHzcN3w2RR6qBVbCu5UilC4DHAOnPlRWAATBBYDLM97dpY2O4P6dRQnx5HWdCEB5+dzAAgLCAlh/Sqm4qNNAzMUhfCTvx6QTPSxzbdJhHfKq+uCc4SyDkMFFdMq77/lQ31ltUXBa5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl; spf=pass smtp.mailfrom=sessink.nl; dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b=2WIwGBxe; arc=none smtp.client-ip=144.76.204.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sessink.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b="2WIwGBxe"
Received: from localhost (localhost [127.0.0.1])
	by filter.openoffice.nl (Postfix) with ESMTP id 1531F100A11;
	Tue, 23 Jan 2024 13:16:18 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at filter.openoffice.nl
Received: from filter.openoffice.nl ([IPv6:::1])
	by localhost (filter.openoffice.nl [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id wV-KqcdAkog3; Tue, 23 Jan 2024 13:16:15 +0100 (CET)
Received: from blub.net (mail.blub.net [IPv6:2a01:4f9:6b:429d::243])
	by filter.openoffice.nl (Postfix) with ESMTP id 9EB4B10011E;
	Tue, 23 Jan 2024 13:16:15 +0100 (CET)
Received: from [IPV6:2a02:a46d:bbe9:0:70dc:adaa:f1c3:5e17] (2a02-a46d-bbe9-0-70dc-adaa-f1c3-5e17.fixed6.kpn.net [IPv6:2a02:a46d:bbe9:0:70dc:adaa:f1c3:5e17])
	by blub.net (Postfix) with ESMTPSA id 3E24B30002F;
	Tue, 23 Jan 2024 13:16:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
	t=1706012175; bh=yxHVvo7NQYKkVzYWrixUBej5iLaNtX5RTiVoMqLck6c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=2WIwGBxeVYKPPyQ34MFGrl8PJlE63ub63QnldRaOHklMeonukY3d0gDb0Wsy2BTTM
	 Ne1W2oPdXtxgmf47l6KCK03gjzO8kPjEGuJOqIIhLwRRx+DJ8qcTKK4Mb3o1cA/SvN
	 6r8Ce3EQNspHs0GWsYDMV9ocVshcSQmf9HW6ZoEY=
Message-ID: <5bf4527c-004f-4324-8977-ba2431373d6b@sessink.nl>
Date: Tue, 23 Jan 2024 13:16:14 +0100
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Cups automatic duplex printing problems
To: Michael Sweet <msweet@msweet.org>
Cc: printing-users@lists.linux.dev
References: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
 <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
Content-Language: nl-NL
From: Valentijn Sessink <valentijn@sessink.nl>
In-Reply-To: <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Michael, hi list,

As per your advice, I set up Cups debugging. I removed all printers, 
waited a while, saw the printers added to Cups:

I sent a duplex job - which printed non-duplex. Please find the debug 
logging entries of the print job below. I'm seeing 
"Duplex=DuplexNoTumble", but also "sides=one-sided".

Is the latter the problem? Or is that just coincidence? What can I do 
more to find the culprit?

Best regards,

Valentijn

D [22/Jan/2024:10:30:49 +0100] [Job 1335] 3 filters for job:
D [22/Jan/2024:10:30:49 +0100] [Job 1335] pdftopdf (application/pdf to 
application/vnd.cups-pdf, cost 66)
D [22/Jan/2024:10:30:49 +0100] [Job 1335] - (application/vnd.cups-pdf to 
printer/Xerox_AltaLink_C8155_A0_6A_FC/application/pdf, cost 0)
D [22/Jan/2024:10:30:49 +0100] [Job 1335] - 
(printer/Xerox_AltaLink_C8155_A0_6A_FC/application/pdf to 
printer/Xerox_AltaLink_C8155_A0_6A_FC, cost 0)
D [22/Jan/2024:10:30:49 +0100] [Job 1335] job-sheets=none,none
D [22/Jan/2024:10:30:49 +0100] [Job 1335] print-color-mode=color, 
print-quality=normal
D [22/Jan/2024:10:30:49 +0100] [Job 1335] Adding preset option 
ColorModel=RGB
D [22/Jan/2024:10:30:49 +0100] [Job 1335] Adding preset option 
cupsPrintQuality=Normal
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
argv[0]="Xerox_AltaLink_C8155_A0_6A_FC"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] argv[1]="1335"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] argv[2]="valentyn"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] argv[3]="Naamloos 2"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] argv[4]="2"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] argv[5]="collate 
Duplex=DuplexNoTumble InputSlot=Auto PageSize=A4 
job-uuid=urn:uuid:8fe40f6e-e621-3ced-40a5-677427ef2efa cups-browsed 
finishings=0 media=iso_a4_210x297mm number-up=1 orientation-requested=0 
output-bin=auto print-color-mode=color print-quality=0 
printer-resolution=600x600dpi sides=one-sided 
job-originating-host-name=localhost date-time-at-creation= 
date-time-at-processing= time-at-creation=1705915849 
time-at-processing=1705915849 document-name-supplied=ZuoKLF 
ColorModel=RGB cupsPrintQuality=Normal OutputBin=Auto"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
argv[6]="/var/spool/cups/d01335-001"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[0]="CUPS_CACHEDIR=/var/cache/cups"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[1]="CUPS_DATADIR=/usr/share/cups"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[2]="CUPS_DOCROOT=/usr/share/cups/doc-root"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[3]="CUPS_REQUESTROOT=/var/spool/cups"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[4]="CUPS_SERVERBIN=/usr/lib/cups"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[5]="CUPS_SERVERROOT=/etc/cups"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] envp[6]="CUPS_STATEDIR=/run/cups"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] envp[7]="HOME=/var/spool/cups/tmp"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[8]="PATH=/usr/lib/cups/filter:/usr/bin:/usr/sbin:/bin:/usr/bin"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[9]="SERVER_ADMIN=root@X1-carbon"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] envp[10]="SOFTWARE=CUPS/2.4.1"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[11]="TMPDIR=/var/spool/cups/tmp"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] envp[12]="USER=root"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] envp[13]="CUPS_MAX_MESSAGE=2047"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[14]="CUPS_SERVER=/var/run/cups/cups.sock"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[15]="CUPS_ENCRYPTION=IfRequested"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] envp[16]="IPP_PORT=631"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] envp[17]="CHARSET=utf-8"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] envp[18]="LANG=en_US.UTF-8"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[19]="PPD=/etc/cups/ppd/Xerox_AltaLink_C8155_A0_6A_FC.ppd"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[20]="CONTENT_TYPE=application/pdf"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[21]="DEVICE_URI=implicitclass://Xerox_AltaLink_C8155_A0_6A_FC/"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[22]="PRINTER_INFO=Xerox_AltaLink_C8155_A0_6A_FC"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[23]="PRINTER_LOCATION=Lunchkamer"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[24]="PRINTER=Xerox_AltaLink_C8155_A0_6A_FC"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[25]="PRINTER_STATE_REASONS=none"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] envp[26]="CUPS_FILETYPE=document"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] 
envp[27]="FINAL_CONTENT_TYPE=application/pdf"
D [22/Jan/2024:10:30:49 +0100] [Job 1335] envp[28]="AUTH_I****"
I [22/Jan/2024:10:30:49 +0100] [Job 1335] Started filter 
/usr/lib/cups/filter/pdftopdf (PID 134008)
I [22/Jan/2024:10:30:49 +0100] [Job 1335] Started backend 
/usr/lib/cups/backend/implicitclass (PID 134010)


On 16-01-2024 12:26, Michael Sweet wrote:
> I would also advise that you enable debug logging (cupsctl --debug-logging) and then look at the /var/log/cups/error_log file to see what is happening during a print job.

-- 
Durgerdamstraat 29, 1507 JL Zaandam; telefoon 075-7100071
