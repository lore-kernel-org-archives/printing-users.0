Received: from hurricane.shaftnet.org (hurricane.shaftnet.org [135.148.100.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D283A8C1
	for <printing-users@lists.linux.dev>; Thu, 31 Jul 2025 13:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=135.148.100.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753967565; cv=none; b=A1Gi3bUueZUZSnCUaoWRsB834dQ2B8P0vnwX5pUq0WBDUAGUwaJcUGORsk4kzTLVc6y3LmDypDqPbsH1tqS1cUg40HELvRhGdP0SScM5WX7z6sfjqd0Di8PgLWd81yncpABYBHXAyQ8vUPCAc02YKuMJhmt7YjSVcUjMGIDwTwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753967565; c=relaxed/simple;
	bh=Crg2D9q/e8xYGAt6VcK6qSYbvv60crLR3z+czb7xu/E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O5CG6RcVpYOGFQKUgVEkok1cosjvcxAjpngObecOYLAAMIOBapzf06D1voO6zR6XV+xgE/5UKhaG00YZ4gLP8rLdYo4eKzaDfEbfBnmc6QwrsjI2BU0hzcKzzbEg357eWaAXgiVu62nQhK6jFGCkkyOjZIYxkHHt8EsSm4VRiUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=shaftnet.org; spf=pass smtp.mailfrom=hurricane.shaftnet.org; dkim=pass (1024-bit key) header.d=shaftnet.org header.i=@shaftnet.org header.b=kLtVpnn8; arc=none smtp.client-ip=135.148.100.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=shaftnet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hurricane.shaftnet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=shaftnet.org header.i=@shaftnet.org header.b="kLtVpnn8"
Received: from hurricane.shaftnet.org (localhost6 [127.0.0.1])
	by hurricane.shaftnet.org (8.18.1/8.18.1) with ESMTPS id 56VCMjEc3690898
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 31 Jul 2025 08:22:45 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 hurricane.shaftnet.org 56VCMjEc3690898
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
	s=default; t=1753964565;
	bh=Crg2D9q/e8xYGAt6VcK6qSYbvv60crLR3z+czb7xu/E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kLtVpnn8o/GsyRxrGqX823Gd7PCY1ZymSVuzPxOpIRjSsNiuQ/bHluA+l38LyalMM
	 u0YlduOhbhBaYBWkSlT5IHMd2Nx66kL5Zzj3ZGKhXzOrwPLvIWiSodrS85QPqxYsid
	 zKViWF4LL4WCIn5KONEGkoZDJ0SgOlNgOx1lUtdI=
Received: (from pizza@localhost)
	by hurricane.shaftnet.org (8.18.1/8.18.1/Submit) id 56VCMjYc3690897;
	Thu, 31 Jul 2025 08:22:45 -0400
Date: Thu, 31 Jul 2025 08:22:45 -0400
From: Solomon Peachy <pizza@shaftnet.org>
To: Dave Close <dave@compata.com>
Cc: printing-users@lists.linux.dev
Subject: Re: CUPS and IPP strangeness
Message-ID: <aItgFWTHvLF8V3ct@shaftnet.org>
References: <202507300615.56U6Feav3458581@d9020.compata.com>
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vfrRtaDzZFQenVjO"
Content-Disposition: inline
In-Reply-To: <202507300615.56U6Feav3458581@d9020.compata.com>
X-Spam-Report: 
	* -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_DATE_IN_FUTURE_96_Q Date: is 4 days to 4 months after Received:
	*      date


--vfrRtaDzZFQenVjO
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 29, 2025 at 11:15:40PM -0700, Dave Close wrote:
>   E [29/Jul/2025:22:03:18 -0700] Returning IPP client-error-bad-request
>   for Send-Document (ipp://localhost:631/printers/PF0) from localhost
>=20
> That sure look to me like CUPS is trying to send IPP traffic to this
> printer. That certainly won't work, port 631 is not open on this printer.
> I've restarted CUPS without effect. What can I do to fix this?

To me this reads that something sent the _CUPS server_ a "bad" IPP=20
request; if it was talking to the printer via JD the URI would include=20
the printer's address/name ("pf0") instead of "localhost".

> My major task on this network is to port it to a new system running a
> much more recent OS. At this time, CUPS is running on CentOS 6 and is
> version cups-1.4.2-81.el6_10.x86_64. I need to keep it running awhile
> longer.

I see no reason why you'd need to keep such an old CUPS version around;=20
as an example I currently have a CUPS queue talking to a Brother printer=20
via JetDirect with CUPS 2.4.x.  It works more reliably than the=20
printer's native driverless IPP functionality..

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
Dowling Park, FL                      speachy (libera.chat)

--vfrRtaDzZFQenVjO
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmiLYBAACgkQrGLLO/XV
ulGf4g//Sl+Ne1VrfVps7kxok/QmTwoDolWpalCRS938rWHzsGyHiSbWyVnMNIhJ
k7Emm8xS5Seqz3LX1GWKjazm+57zweiSXe1YEEXIHwTuCL4CMymPxCkMxbXKv+vn
14o36+QDNTe0JAe1PRA4UMCrKmjadTTxn60y1ZVNbSdLONmzYhfv6d6ewrKRwV/w
oiVmjHEUvoF9SXgz+ysnfrH64WjKC44ZkOb3eRrdgTepcN/CWXZTKEh6HLy4XIa8
Mr9+hl/xmSy6k4EEZR2KU+TFAXngGzBdDERypMHsFZoOiQXaciXhDNYKndXBAEU4
AHQ7cD/49TVRTyggMZ9bpB3ctL4gtPICwOGpz4x8LzQFN3Ethfw7UBiPwP0Ykxax
Ng1NwVvibBnOotYJnlMdYwkp8ufLb8trs6qTy6n5vTEbic2U/aJiOHygf4pZNJ2C
o/u6eSlDe3GHbQ5IYFaryljx4egIpHtdLIVK/muWNfdeco+e6AdA+LLdYVR2nBXO
k8aKvA37Xe+n3T2qWc0Kfp4J863Cct96eQ9CiXzi8kuJV8xP0RNR1dzqu+OXvaK8
GnlMH4wo4gbBe3LabSA4Lpy6blfBzUy3nrjs1mafJUzC0Tr3XpUcp155DK13K1eU
Fisv21WLjT0U1ThAopbqBNc00iNNTMaepOPv/cvd2R512EvV9lA=
=njmI
-----END PGP SIGNATURE-----

--vfrRtaDzZFQenVjO--
