Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701A21B94D
	for <printing-users@lists.linux.dev>; Tue, 16 Jan 2024 11:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="UixI6SPx"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 0D38E80304;
	Tue, 16 Jan 2024 11:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 0D38E80304
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1705404421;
	bh=WILq5AgFQWk7UdnlDSwGETcSLQQxo7V+HOlDU8h1HOA=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=UixI6SPxuSOCzjQSyF0DgoSZmYMHppME1DqSMM/G+fhVG1m0A8JBE1It8IN8aybGj
	 c6Ny3HPJYIrwNqa3jFhCIL0w3KQnMfjfaVZo9Sfw+nPIMnbNYnXNqDjh2ZgHBKn1D7
	 d6IF7etht819dSxpXhbdeaMhI6LD7dvSEVmtWl4g=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.11\))
Subject: Re: Cups automatic duplex printing problems
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
Date: Tue, 16 Jan 2024 06:26:49 -0500
Cc: printing-users@lists.linux.dev
Content-Transfer-Encoding: quoted-printable
Message-Id: <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
References: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
To: Valentijn Sessink <valentijn@sessink.nl>
X-Mailer: Apple Mail (2.3774.400.11)

Valentijn,

It would help to know what printers you are trying to use and how they =
are connected.

I would also advise that you enable debug logging (cupsctl =
--debug-logging) and then look at the /var/log/cups/error_log file to =
see what is happening during a print job.

WRT PPD files and drivers, generally those are a thing of the past but =
there are still a small subset of printers that depend on them - =
typically label and certain large format printers - due to a mistaken =
believe on the part of the manufacturers that they are somehow special =
and need to do things differently... :/


> On Jan 15, 2024, at 9:07=E2=80=AFAM, Valentijn Sessink =
<valentijn@sessink.nl> wrote:
>=20
> Hello list,
>=20
> I'm having printing problems under Linux, with several printers, and =
I'm not sure how to proceed. It boils down to:
> - I cannot print duplex on autodetected printers;
> - I cannot print multiple copies on manually added printers: whatever =
I try, the printer says it is a duplex job with just one page to print.
>=20
> With some help, I'm probably able to debug some of the problems, but I =
actually sort of lost track with regard to printing - there is =
cups-browsed (which adds printers?), cups-filters (does that do anything =
anymore? Or are these driverless-printers just bypassed?), cups itself; =
then there are manufacturers that send out printer drivers that look =
like PPD's to me - that should not be necessary to include anymore, =
right? Driverless printing is just what it says, driverless?
>=20
> This is under: Ubuntu 22.04
> Cups 2.4.1op1-1ubuntu4.7
> Cups-browsed 1.28.15-0ubuntu1.2
>=20
> I hope this very new list can help me to become informed again and =
debug simple printing problems :-)
>=20
> Best regards,
>=20
> Valentijn
>=20

________________________
Michael Sweet

