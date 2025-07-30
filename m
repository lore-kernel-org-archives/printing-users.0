Received: from relay.wiredblade.com (relay.wiredblade.com [168.235.105.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB651E5B99
	for <printing-users@lists.linux.dev>; Wed, 30 Jul 2025 06:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=168.235.105.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753856144; cv=none; b=dje9AlMn3PgHrYL3fApu9R696slJ0Mi306fFfImK6u3V2XGCTcRaWVznwgPPyr54xeyqhzc3TILCf32FYxWZCRvaLrqWe3YcVq9JxUi+58SWu7mmkONP3J+SwazRgLKUf61DHtMfOxSCaIJkQdAao6s93ES/bhNOzz/nhzZ8gjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753856144; c=relaxed/simple;
	bh=mbwhjXOZAzU7KSczFVXEMVEYi/lJ00kT337tUhA3sRw=;
	h=Message-Id:To:Subject:From:Mime-Version:Content-Type:Date; b=CgN1g1pAJ00mYQe1SBPaKSAApqxKGErMXJKqRAJy+oUyBnKY/oiQ+PentSpTorkuyXs0OMpVxiDEeavlYv86E0n1b36YxzQVxcDQxXqsFk+0mowq9qYW7egG0dvp3dMWlwDfjCuCfBWkQ3An7K4+Q/Vv12KYEG00vR6DSczPiCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=compata.com; spf=none smtp.mailfrom=relay.compata.com; dkim=pass (2048-bit key) header.d=relay.compata.com header.i=@relay.compata.com header.b=tyiWKGBY; arc=none smtp.client-ip=168.235.105.136
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=compata.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=relay.compata.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=relay.compata.com header.i=@relay.compata.com header.b="tyiWKGBY"
dkim-signature: v=1; a=rsa-sha256; d=relay.compata.com; s=mail;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:MIME-Version:Content-Type;
	bh=iD4/7tD6yk2KA6MkZtgM6NN3J5P5zntHcxSesOEO1SU=;
	b=tyiWKGBYQ0J2Me4DkRsQcGCIjYx620giTxRb216ro9fR9PyJa+/zr08Lesn/PfU3H7ICESwAepf6tAPGQNFKbRt+/TR0S4AA2i1wmMlB0u+Q2k7pgITW8C4jmWzBgd9vUh2eaURct6QinqSEio8gHBv3Kgr6/hLr8M103jeaLQ+Fs2lQt2h/aCPO+ExLvyo+tzC/dxZXatWdrddsYQf4KbLlmxLS9j0biWzEhmnfa2qHJzM8G4RRy9JkFD
	M4CpMY9rX8Ecb++/mrNFhNyQG7Te0PI7JyFm+06UaY8u5XAUasqtdA27MIcDfwfa7l7uoApiWJZRccx/uUGvv3CEJZ9g==
Received: from compata.com (ip68-5-8-94.oc.oc.cox.net [68.5.8.94]) by relay.wiredblade.com
 with ESMTPSA (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
 ; Wed, 30 Jul 2025 06:15:41 +0000
Received: from d9020.compata.com (d9020.compata.com [192.168.44.22]) by compata.com (8.18.1/8.18.1)
 with ESMTP id 56U6FeqW1463015 for <printing-users@lists.linux.dev>; Tue,
 29 Jul 2025 23:15:40 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 compata.com 56U6FeqW1463015
Received: from d9020.compata.com (localhost [127.0.0.1]) by d9020.compata.com (8.18.1/8.18.1)
 with ESMTP id 56U6Feav3458581 for <printing-users@lists.linux.dev>; Tue,
 29 Jul 2025 23:15:40 -0700
Message-Id: <202507300615.56U6Feav3458581@d9020.compata.com>
X-Mailer: exmh version 2.9.0-6 2024-04-27 with nmh-1.8
To: printing-users@lists.linux.dev
Subject: CUPS and IPP strangeness
From: Dave Close <dave@compata.com>
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Date: Tue, 29 Jul 2025 23:15:40 -0700
X-Scanned-By: MIMEDefang 3.6 on 192.168.44.23

I'm managing a small network with about a dozen printers. Some are
unable to accept IPP and are configured to use JetDirect. All others
are configured with IPP.

But one JetDirect printer in particular is having some strangeness.
The /etc/cups/printers.conf file contains these lines.

  <Printer PF0>
  Info HP p2055dn
  DeviceURI socket://pf0

But /var/log/cups/error_log contains lines like this one (wrapped here).

  E [29/Jul/2025:22:03:18 -0700] Returning IPP client-error-bad-request
  for Send-Document (ipp://localhost:631/printers/PF0) from localhost

That sure look to me like CUPS is trying to send IPP traffic to this
printer. That certainly won't work, port 631 is not open on this printer.
I've restarted CUPS without effect. What can I do to fix this?

My major task on this network is to port it to a new system running a
much more recent OS. At this time, CUPS is running on CentOS 6 and is
version cups-1.4.2-81.el6_10.x86_64. I need to keep it running awhile
longer.
-- 
         Dave Close, Compata, Irvine CA       +1 714 434 7359
       dave@compata.com              dhclose@alumni.caltech.edu
  "One thing a person cannot do, no matter how rigorous his analysis
   or heroic his imagination, is to draw up a list of things
   that would never occur to him." -- Thomas Schelling


