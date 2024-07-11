Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD4015D5C8
	for <printing-users@lists.linux.dev>; Thu, 11 Jul 2024 11:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720698787; cv=none; b=OYjLozCtQiVAs7/Xkgno5vk597upTWvVA5aTmLTgq4gStR4lc3/x3BI2bvZauoHJLVRemNsXdeENQSaWwsyHcrJ7nH7SeIIfld812Ve3eQ4ZKkTDgghN2GaFfwvbQZrH8+ex4fAEM4XZRtmOvNumg29DG+c236q4mzlCeXaQ67w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720698787; c=relaxed/simple;
	bh=DZOlWgfQqMpohaumcLbG9NQoaurtN8BVmJRsqiKfi4Q=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=F4giehKFDO53thC0pHkMYBr+i7odY6+ka0CqFIMRV9YnswQO85qlY1c1UHdxeMmqDd5bNwn8Y6AieAl2rpjpRgGf8tAJLOIfQTw/rRCHOpnBndDEwtc3E0sVit/+aExPliEeLpSjEmY+G66gK7hAfIoOCVn0OnbfAJNuZgkr070=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=Cgvyvae0; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="Cgvyvae0"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 0E6CF803C9;
	Thu, 11 Jul 2024 11:52:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 0E6CF803C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1720698779;
	bh=DZOlWgfQqMpohaumcLbG9NQoaurtN8BVmJRsqiKfi4Q=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=Cgvyvae0GiPPW5/X3r3pZJ1ROFBN2tngZjWgByiP2H3dSj5Rz8wBoLcJOv1/s+cCy
	 fFveLYxfjI/znI7evA1OA8q0og/BhkGhrTicI6UQsukG1YTPL65AMNfgS6UtYdJotE
	 xrfsO41tEA0kb8vq+TDqRrMZouRWUdLcEhx7IMkw=
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
In-Reply-To: <92f812ad-4674-470a-8dc2-a1dd9488637b@sessink.nl>
Date: Thu, 11 Jul 2024 07:52:47 -0400
Cc: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
Content-Transfer-Encoding: quoted-printable
Message-Id: <F430A113-E0D9-45BB-A047-7545C2F7F05C@msweet.org>
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
 <C5628583-E69F-4CB4-B39D-5A1DCA15E401@msweet.org>
 <92f812ad-4674-470a-8dc2-a1dd9488637b@sessink.nl>
To: Valentijn Sessink <valentijn@sessink.nl>
X-Mailer: Apple Mail (2.3776.700.32)

Valentijn,

If this affected all PS printers we would have heard about it a long =
time ago.

I will see if I can determine what is going wrong - the whole build =
process for this printer application will make debugging challenging... =
:/


> On Jul 9, 2024, at 4:19=E2=80=AFAM, Valentijn Sessink =
<valentijn@sessink.nl> wrote:
>=20
> Hi Michael, hello list,
>=20
> On 09-07-2024 00:21, Michael Sweet wrote:
>> Does the PPD file in question have any JCL options (look for =
JCLOpenUI)?
>=20
> Yes it does (please see bug report, sorry it wasn't clickable due to =
the missing "h"). For your convenience:
> https://github.com/OpenPrinting/hplip-printer-app/issues/17
>=20
>> It is possible that the JCL code is missing a trailing newline which =
could cause this - in which case we should append one to make sure the =
JCL code doesn't prevent language switching...
>=20
> Nope, there actually is a <0A> at the end, I did check that.
>=20
> But please note that the %% is at the *beginning* of a PJL line, i.e. =
there are postscript comments already, where PJL is still being sent to =
the printer:
>=20
> =C2=B7%-12345X@PJL
> @PJL JOB NAME =3D "Test Page" DISPLAY =3D "4 valentyn Test Page"
> @PJL SET USERNAME =3D "valentyn"
> %%@PJL ENTER LANGUAGE =3D PostScript
> %!PS-Adobe-3.0
>=20
> I can't figure out the code path. But if I change the code at the end =
of ppdEmitJCL() to:
>=20
>  ppdEmit(ppd, fp, PPD_ORDER_JCL);
>  fputs(ppd->jcl_end, fp);
>  fputs(ppd->jcl_ps, fp);
>=20
> ... _and_ change the PPD file to say:
> *JCLEnd: "END-OF-TASK<0A>"
>=20
> ... then the output to the printer says:
>=20
> @PJL SET USERNAME =3D "valentyn"
> %%END-OF-TASK
> @PJL ENTER LANGUAGE =3D PostScript
> %!PS-Adobe-3.0
>=20
> So somewhere, something says "%%" to the printer, while there is still =
some PJL to be sent. But as said: I can't figure out the code path.
>=20
> I can't think of anything else to try. Tried to get DEBUG_printf to =
work but my grasp of the whole cups/filtering stuff is too small to =
actually be able to get that to work. Also, "debian/rules clean" for =
some reason messes up the code base and I'm sort of unable to rebuild =
cleanly without re-unpacking the debian source. But that's all in the =
category of "I'm not an actual programmer" so you shouldn't bother.
>=20
> But it is an actual bug that could potentially bug all printers with a =
ppd file that has PJL commands.
>=20
> Best regards,
>=20
> Valentijn
> --=20
> Durgerdamstraat 29, 1507 JL Zaandam; telefoon 075-7100071
>=20

________________________
Michael Sweet

