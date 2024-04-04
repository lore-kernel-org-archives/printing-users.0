Received: from shymkent.ilbers.de (shymkent.ilbers.de [85.214.156.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C457D134721
	for <printing-users@lists.linux.dev>; Thu,  4 Apr 2024 19:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.156.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712260501; cv=none; b=Y/1lMzsDZpu0j9VTAVFy1UYVltU2tR2nCZqRFaqWxUrtiwbV7cWPfqXv6g2mnbkPKvjod0FoowP+cw6gDNBJ2iACT5KMQKpWICBrS/+dvJjJ8DUCKwxV2Ut4MGOP/NbWew6BvTQiBDnWUTUPUoWa+c1zrPHPir5Z7x44H3ebX6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712260501; c=relaxed/simple;
	bh=AHCkuc8KPL87uH5G9wnEorlJYV2OY+8VUWaaeeif4dM=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=PmBrCJLxM4iDR9pxnPWjVDglZ0mY8pcVfGDkMXCnFiKaG9WZJ2f6+S/AwGIgmBKmQ0earFp45t9pPdkqnQ4JML72DOxgsQvX0bF0EzMqRIlwCa6righBpF0vAlEKtvyPZ8u3A8/dF+J4G698ntpguArye/W//yG2Uz2+zeIc5wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=radix50.net; spf=pass smtp.mailfrom=radix50.net; arc=none smtp.client-ip=85.214.156.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=radix50.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radix50.net
Received: from ilbers.de (ipbcc051c6.dynamic.kabel-deutschland.de [188.192.81.198])
	(authenticated bits=0)
	by shymkent.ilbers.de (8.15.2/8.15.2/Debian-8+deb9u1) with ESMTPSA id 434JstmF030632
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <printing-users@lists.linux.dev>; Thu, 4 Apr 2024 21:54:57 +0200
Date: Thu, 4 Apr 2024 21:54:50 +0200
From: Baurzhan Ismagulov <ibr@radix50.net>
To: printing-users@lists.linux.dev
Subject: Canon MF657Cdw support
Message-ID: <Zg8FisNEtycH8xLp@ilbers.de>
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

I have a 10-year old HP M570dn with a transfer unit leaving stripes. A
replacement would cost 317 EUR, plus 50 EUR service fee. For this amount I see
e.g. Canon MF657Cdw which claims to support AirPrint. However,
https://lore.kernel.org/printing-architecture/3722d77c-bac7-c6d3-8851-bed47902158e@redhat.com/
says some models have issues and can't be used driverless. I would be happy to
hear your opinions:

1. Repair or buy?

2. Experiences with Canon MF657Cdw? Or other recommendations?

With kind regards,
Baurzhan
