Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1660144632
	for <printing-users@lists.linux.dev>; Fri,  2 Feb 2024 15:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706886641; cv=none; b=tz2SEfUyrr9X56AfnGZW8U3ww/ku+IehR866Dzdv3GEt9LcOqkYwWMAjNbftvuPpyxcvbSPpeGsP4x1TUS+xYQDs/YaocSh98zMcthm3SFQ15r82e5Azmzl3j14rN2Fp5xvOpZ2tH37qFYLURrBNuinXrlxPMVniQxY7mHeD78U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706886641; c=relaxed/simple;
	bh=+BwcbW37rQvPf5YsmXwCsmQ09eks4dCXXqYVIHiKXSs=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=f+XB4uKlMa9m+IrP1KCr+h/kPi/BlZom2tduRuOgAQKQBzQUbTY1hEiXwhIfB4AVgq2NFpEZLSzuRp27xw3v27Vqr2UeHCsnpClS4mwbDePvEFqRA7C6MJXT3nhtYCoSKCgLqUHvI1LGuqRCAK4el237RKsubZFLmGlnGdUptEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=pZ+Ok4xh; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="pZ+Ok4xh"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 7476F803D3;
	Fri,  2 Feb 2024 15:02:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 7476F803D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1706886175;
	bh=+BwcbW37rQvPf5YsmXwCsmQ09eks4dCXXqYVIHiKXSs=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=pZ+Ok4xh5pNk1lo2GgPip5+7XuECMoQ8nQWXTUMquMcwZTFAYfmDrNxJCIOXq2F0v
	 0BXI4pN9f8lx7PWcich8gaCYNn1rkJ8Bf0t0LNlCKmD0KJZLQ6V2lxk2H1yit6R8X8
	 axADz8wCfqCpkQqFqglBVKq8OoQSNofAu7NH5soo=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.11\))
Subject: Re: hplip-printer-app hangs and oddities (Re: Cups automatic duplex
 printing problems)
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <b0aea059-3333-47e8-bdaa-0d0a52002fdd@sessink.nl>
Date: Fri, 2 Feb 2024 10:02:43 -0500
Cc: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
Content-Transfer-Encoding: quoted-printable
Message-Id: <D50FF68C-206A-415F-8999-D2EA217F065B@msweet.org>
References: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
 <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
 <5bf4527c-004f-4324-8977-ba2431373d6b@sessink.nl>
 <7CC4FC04-EB2B-4AA4-9244-87016D2B2946@msweet.org>
 <e938a691-098a-46b8-9725-11a3259b6844@redhat.com>
 <e43a7eab-2ca4-4fcb-a345-fb65061b18b8@sessink.nl>
 <SYBP282MB2617E3FA5A60DFE9E56A9A21877C2@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
 <b0aea059-3333-47e8-bdaa-0d0a52002fdd@sessink.nl>
To: Valentijn Sessink <valentijn@sessink.nl>
X-Mailer: Apple Mail (2.3774.400.11)

Valentijn,

This sounds like a bug in that printer application - please do file an =
issue here:

    https://github.com/OpenPrinting/hplip-printer-app/issues

You can also try the "hp-printer-app" snap with that printer.  It will =
just send PCL to your printer but has fewer moving parts so it should be =
more reliable.  I'm in the process of updating the snap for updated =
dependencies but have no pending issues that would affect your =
printer...


> On Feb 1, 2024, at 5:35=E2=80=AFPM, Valentijn Sessink =
<valentijn@sessink.nl> wrote:
>=20
> Hi list,
>=20
> Dougs mention of the Snap repo helped somewhat but also broke somewhat =
more.
>=20
> - I tried using the Snap backend, which seemed to help, a 2 sided =
print comes out 2 sided and a 2 copy 2 sided print comes out in 2 =
copies. (Or that is what I guessed from the remote printer display that =
tells me that the latter had 4 sides and printed out on 2 sheets of =
paper.) So far, so good.
>=20
> - However. This makes things worse for my personal, unfortunately =
unbreakable, HP Laserjet 2055DN. I have installed the snap =
hplip-printer-app (edge) and added the printer, but it's printing raw =
Postscript every other time (%%@PJL ENTER LANGUAGE =3D Postscript =
%!PS-Adobe-3.0 %%LanguageLevel: 2).
>=20
> Trying to use the pcl3 variant seems somewhat better but I've seen the =
weirdest messages in the logs. I even saw a =
"hplip-printer-app.hplip-printer-app-server[57930]: Segmentation fault =
(core dumped)" when I tried to remove a printer - maybe too soon, I'm =
not sure.
>=20
> Also, removing jobs sometimes makes hplip-printer-app hang, i.e.  =
become totally non responsive; I've seen "hp[48675]: io/hpmud/jd.c 632: =
timeout write_channel hp:/net/HP_LaserJet_P2055dn?ip=3D172.17.2.55" that =
I don't understand and cannot get rid of, the Snap doesn't properly =
restart in these situations =
("snap.hplip-printer-app.hplip-printer-app-server.service: Killing =
process 54142 (hplip-printer-a) with signal SIGKILL.", "Failed with =
result 'timeout'" and "Unit process 54133 (hplip-printer-a) remains =
running after unit stopped."
>=20
> I've also seen Evince snap hanging during getting printer information, =
but I'm not in the mood to yet have to debug _another_ printing problem.
>=20
>=20
> Anyway, I'm guessing: the old way of printing doesn't work anymore for =
new printers but the new way of printing doesn't work for older printers =
yet? What should I do if I need the best of both worlds?
>=20
>=20
> (Also: using the snap printing system makes Libreoffice forget all =
printers unless Libreoffice is a snap as well, but thats _even_ lower on =
the todo list than the Evince problem - and probably even off topic =
here, too).
>=20
> Best regards,
>=20
> Valentijn
>=20
> On 31-01-2024 12:38, Douglas Kosovic wrote:
>> Hi Valentijn,
> [...]
>> You could then try the official OpenPrinting Snap of CUPS for a much =
newer version of CUPS that has many bug fixes:
>> https://snapcraft.io/install/cups/ubuntu
>> I believe Ubuntu will be moving to the CUPS Snap for its printing =
system in a future release
> --=20
> Durgerdamstraat 29, 1507 JL Zaandam; telefoon 075-7100071
>=20

________________________
Michael Sweet

