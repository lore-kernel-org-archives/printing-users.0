Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08532BA46
	for <printing-users@lists.linux.dev>; Mon,  8 Jul 2024 22:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720477814; cv=none; b=jNOFNhDc5HtPbGVFOURnUAeuQ3EVXoXhJheT9Y5ee+PDVN99uvvUMXr5maEDQkr5aglSSVeODU9fuDjDCmbsEtUczNQDpeSW1PBw0w70YOATI2YpSsLI/hjYykyq+kdXtg3uB3OqRFm5Gs5iK1tVN+0HO74uT8NB/PhhCwnnZ1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720477814; c=relaxed/simple;
	bh=vq6+DWRhBJtpmvIe1YLUl6JyCPqhv4KRWV55S0Z8h7g=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=ldv3sLsXI59kbMb68wDTtzbxi+u6Kc/vkgWkU2oZbBMr9NR1U+0I2vtlb0Dzs2pWrJJEbFJxvuXzvhR120dFN4cgUxKA8y3DED3tQsYotbpED9DxGUh+Rf5/moSO0EznOBvGvL0ytvSxSj/oj7ytN2ATZ2xM7z4b3bfAQLCEDr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=lS5+xnPw; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="lS5+xnPw"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 2CABE81C9E;
	Mon,  8 Jul 2024 22:21:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 2CABE81C9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1720477287;
	bh=vq6+DWRhBJtpmvIe1YLUl6JyCPqhv4KRWV55S0Z8h7g=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=lS5+xnPwreFVKZnJ1FOYaUUFiOhf/ks62l7En4LC/tIQ88xvtuzANEAdRsDyC0mbs
	 a+zvsExvo9OL0OmwIlukqtQlKKIrL/0ZdItxEuJ7sVGAVyvqVwNGhWQe1uTnjTtifR
	 1yDOe/NL/ZZ8NJJaACQPYVmmdYwWTgl3ARnR9kLg=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.32\))
Subject: Re: hplip-printer-app hangs and oddities (Re: Cups automatic duplex
 printing problems)
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <47f41feb-8b4e-4840-9336-6ce705086dcb@sessink.nl>
Date: Mon, 8 Jul 2024 18:21:15 -0400
Cc: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
Content-Transfer-Encoding: quoted-printable
Message-Id: <C5628583-E69F-4CB4-B39D-5A1DCA15E401@msweet.org>
References: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
 <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
 <5bf4527c-004f-4324-8977-ba2431373d6b@sessink.nl>
 <7CC4FC04-EB2B-4AA4-9244-87016D2B2946@msweet.org>
 <e938a691-098a-46b8-9725-11a3259b6844@redhat.com>
 <e43a7eab-2ca4-4fcb-a345-fb65061b18b8@sessink.nl>
 <SYBP282MB2617E3FA5A60DFE9E56A9A21877C2@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
 <b0aea059-3333-47e8-bdaa-0d0a52002fdd@sessink.nl>
 <D50FF68C-206A-415F-8999-D2EA217F065B@msweet.org>
 <4825bc26-5434-44ff-85c1-c851a5a7cb89@sessink.nl>
 <47f41feb-8b4e-4840-9336-6ce705086dcb@sessink.nl>
To: Valentijn Sessink <valentijn@sessink.nl>
X-Mailer: Apple Mail (2.3776.700.32)

Valentijn,

Does the PPD file in question have any JCL options (look for JCLOpenUI)?

It is possible that the JCL code is missing a trailing newline which =
could cause this - in which case we should append one to make sure the =
JCL code doesn't prevent language switching...


> On Jul 8, 2024, at 2:29=E2=80=AFPM, Valentijn Sessink =
<valentijn@sessink.nl> wrote:
>=20
> Hi list,
>=20
> I'm replying to a very old message of mine. I tried to fix =
ttps://github.com/OpenPrinting/hplip-printer-app/issues/17 because I =
like my postscript printers to actually print postscript. Yes, I'm that =
kind of nerd.
>=20
> Anyway, I sort of fixed the bug but I don't know why. So it's probably =
rubbish that I made, I just don't grasp the code path here.
>=20
> I switched the last two lines of ppdEmitJCL() and suddenly
>=20
> On 02-02-2024 16:10, Valentijn Sessink wrote:
>> %%@PJL ENTER LANGUAGE =3D PostScript
>=20
> ... the two %% are gone.
>=20
> But this code has been there for ages. Has postscript with PJL been =
broken since 2014? I can't imagine that.
>=20
> Would anyone please know why a normal Postscript printer with a PJL =
definition in its PPD file
> *JCLToPSInterpreter: "@PJL ENTER LANGUAGE =3D PostScript <0A>"
> ... would print %%@PJL ENTER LANGUAGE (with two extra %% signs)?
>=20
> Sorry for the voodoo code (semi-randomly switching two lines of code). =
With printers, I just cannot seem to avoid it :-(
>=20
> Best regards,
>=20
> Valentijn
> --=20
> Durgerdamstraat 29, 1507 JL Zaandam; telefoon 075-7100071
>=20

________________________
Michael Sweet

