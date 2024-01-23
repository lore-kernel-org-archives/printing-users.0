Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85A295F56A
	for <printing-users@lists.linux.dev>; Tue, 23 Jan 2024 13:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706014873; cv=none; b=pcGxSyZdMiokK5cGidWXa17NM1DhoSkr101XRPQnR8wGgAGUjOSaqPq4uuD+68DtWk8fUY0h/xjcYThUO3/Bog/vxSACNyJyU5jQy4eAoFrh6SFrP9THoud0l5L6xdCyZPrPft4m7+KxZpsbXFYVJiYxDk9ZkukBfTj/agbRzZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706014873; c=relaxed/simple;
	bh=WsxkX8eIuuntrLkwSF6gKOtWZgIK/8kQXRykhuBj0H0=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=la1JyFEz191OujRBtj88PrxXlCjadJ6H0V8qoIA+ocwzBXKiedAr0dv9KJLmvJEmolnXBAM8VB7oGzL2V3x7kW7A/POIyDc319rYn+/aSzZ98ZYavWIDEbtej/MSlS+c1gZRohtdNCgCaKpBUvjKSjvZK3lnm/wAhZiD9egn2QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=Z7GQIfkS; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="Z7GQIfkS"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id DC94080444;
	Tue, 23 Jan 2024 13:01:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org DC94080444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1706014865;
	bh=WsxkX8eIuuntrLkwSF6gKOtWZgIK/8kQXRykhuBj0H0=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=Z7GQIfkSyQgDYhjMRBsmvvNN/bccNvcOkd1C3Fva2Noz26Bm6JZ+H6QR3MXEsKoi/
	 io74ExSySovcF3JgkgBXJIWFLZNegBdOCLNyMZ72YYOXbDI1ZXYV8h7Ksq/uMax9/t
	 F3cyqn+NVYtBBcS9o96KU8OUwREb7sHZKVubVxbQ=
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
In-Reply-To: <5bf4527c-004f-4324-8977-ba2431373d6b@sessink.nl>
Date: Tue, 23 Jan 2024 08:00:55 -0500
Cc: printing-users@lists.linux.dev
Content-Transfer-Encoding: quoted-printable
Message-Id: <7CC4FC04-EB2B-4AA4-9244-87016D2B2946@msweet.org>
References: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
 <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
 <5bf4527c-004f-4324-8977-ba2431373d6b@sessink.nl>
To: Valentijn Sessink <valentijn@sessink.nl>
X-Mailer: Apple Mail (2.3774.400.11)

Valentijn,

> On Jan 23, 2024, at 7:16=E2=80=AFAM, Valentijn Sessink =
<valentijn@sessink.nl> wrote:
>=20
> Hi Michael, hi list,
>=20
> As per your advice, I set up Cups debugging. I removed all printers, =
waited a while, saw the printers added to Cups:
>=20
> I sent a duplex job - which printed non-duplex. Please find the debug =
logging entries of the print job below. I'm seeing =
"Duplex=3DDuplexNoTumble", but also "sides=3Done-sided".
>=20
> Is the latter the problem? Or is that just coincidence? What can I do =
more to find the culprit?

So the "sides=3Done-sided" (IPP option) specifies a single-sided print =
while "Duplex=3DDuplexNoTumble" (PPD option) specifies a two-sided long =
edge print.

CUPS itself will give priority to the PPD option but I'm not sure what =
the backend will do with it (and I'm not familiar with the =
'implicitclass' backend, it isn't a standard part of CUPS.

________________________
Michael Sweet

