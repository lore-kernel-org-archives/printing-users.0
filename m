Received: from mailgate02.uberspace.is (mailgate02.uberspace.is [185.26.156.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D39B260582
	for <printing-users@lists.linux.dev>; Tue, 19 Aug 2025 16:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.26.156.114
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755621010; cv=none; b=mINUydEKVKSmfz007p2wMibuqdsHUqGk3ldm56MJW9cMF2TovqCFvzHlZ3WOBzzrh5l/wCHhNQe4Qhx0uzUXQYveNNbb166RVSZvIiCfIm+V8ycnGcByRIEGKMMz7cSM084b46Y41Wpfcg2Pd3zShahxZYzgPbr0bMctRJzp+rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755621010; c=relaxed/simple;
	bh=bfSA5w3M0FAQKnrY7/cCnu9KYmsWz6nOD6aChkL6348=;
	h=Date:From:To:Message-ID:Subject:MIME-Version:Content-Type; b=pK8sy7zfNACH8nA89eig0RzV2CEb0Kg5q4D+jSKu2+gVqj1UMnMexDpqnpNoCmEuwhTR1eKER2uHmIdFBHcG+pFavBr5z9OhrU5cRw5yWaB6UjvLtg713W+Wp+ZwRHT1hz8am3q4NMi5/kAbIfKNAUZCS2N40DLxPNOGhF7I5VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=nicemail.eu; spf=pass smtp.mailfrom=nicemail.eu; dkim=pass (4096-bit key) header.d=nicemail.eu header.i=@nicemail.eu header.b=RQ+dELjJ; arc=none smtp.client-ip=185.26.156.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=nicemail.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nicemail.eu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=nicemail.eu header.i=@nicemail.eu header.b="RQ+dELjJ"
Received: from hermippe.uberspace.de (hermippe.uberspace.de [185.26.156.84])
	by mailgate02.uberspace.is (Postfix) with ESMTPS id DAFF517FD13
	for <printing-users@lists.linux.dev>; Tue, 19 Aug 2025 18:20:19 +0200 (CEST)
Received: (qmail 10212 invoked by uid 988); 19 Aug 2025 16:20:19 -0000
Authentication-Results: hermippe.uberspace.de;
	auth=pass (login)
Received: from unknown (HELO unkown) (::1)
	by hermippe.uberspace.de (Haraka/3.0.1) with ESMTPSA; Tue, 19 Aug 2025 18:20:19 +0200
Date: Tue, 19 Aug 2025 18:20:16 +0200 (GMT+02:00)
From: schnabeltasse@nicemail.eu
To: printing-users@lists.linux.dev
Message-ID: <4125cf30-dac1-4b44-9676-4d032aebb64b@nicemail.eu>
Subject: How to relay driverless?
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Correlation-ID: <4125cf30-dac1-4b44-9676-4d032aebb64b@nicemail.eu>
X-Rspamd-Bar: /
X-Rspamd-Report: SUBJECT_ENDS_QUESTION(1) MIME_GOOD(-0.1) BAYES_SPAM(0.000319)
X-Rspamd-Score: 0.900319
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=nicemail.eu; s=uberspace;
	h=from:to:subject:date;
	bh=bfSA5w3M0FAQKnrY7/cCnu9KYmsWz6nOD6aChkL6348=;
	b=RQ+dELjJ45p6qqa9EWNYQj3E7SBR9Cd4Jz9Fw1ubmzGVr39bGByc0VBOv3Pi4bXWD/u9X2GctS
	clNFgpOHoRdVR5iBlMD40bKBHkXjsD6uKlU6u+4to0FTc3X1tXcmke9chmvfyaGiyv1Faaga3v3Q
	HiQq/shDixEJYA0Nok7dF6mCA0GiE2gloj7mUBOC0xuqrqT8B7bGr4NqT9ulwMFhT+GyjFGkex4A
	w2h4Y2bWUya2PnVJmG+H1OSW0/2FoQOmjQYinzyrZgKannckU2HdC/xWsPFLaesLJvBKUYQH8ByS
	NLeupcmrN06X8cJZHokKcsmqZOEEds9vEPUTpBkFBr9acv/2Ngdh2T5FVJ5C509RLx04ye0JydaM
	CnMfEprckemzm7crBHpDNknZl8+2o6jEmy/JzGhEIqdKKxwqRDt7ug0yVlSZ9lciEr92hmoFmXTU
	LPK1pPnhgbhsF+pyXcdVFp6/vUe8GIP32iRRGEnaKxdvxw1BSdjG0Bi6Z4qNQaBWlom4LQ600bsw
	iXhDL0yJJZ25jo+7+sJTIJ7fU7OCsA02+uDay7vrswIRbplQHcgzDJrVHLFHqUuUPz8mdj61j6nT
	7h+k0luyDm2nLGIh9FzN5rwTpZeISjLfLPPPhJ/HxNdewloA/lOSjes5bvWwf/x7C/dc4u0XBLm5
	A=

Can you help me with that?


I have a printer that is driverless-capable.
It is added to a cups on my server via driverless. Printing with that works.
Now I share these printers with CUPS and avahi to an adjacent network. Not directly.
How do I make autodiscovery on clients in the adjacent network work so that they too can automatically choose driverless and stuff works?

Same explanation in simpler statements to avoid confusion in long sentences:

(Internalnet{clients, printer, serveriface1},10.1.1.0/24)--(Server{<-avahitointernal,avahitoguestnet->})--(guestnet{randomhosts}10.2.2.0/24)

No routing between internal and guest.

Clients will discover shared printers from server.
They will be able to add them and choose driverless.
Or even add them automatically with cups-browsed.
They print to that shared printer on the cups.
And the cups brings the printjob to the specified printer in the other network.
Via ipp everywhere driverless.

The part from cups host to printer works.
The part from guests to cups to printer doesn't work.


+ Schnabeltasse +
