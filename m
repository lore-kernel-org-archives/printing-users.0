Received: from filter.openoffice.nl (filter.openoffice.nl [144.76.204.185])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB13E17583
	for <printing-users@lists.linux.dev>; Mon, 15 Jan 2024 14:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sessink.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b="Y6bi7LXe"
Received: from localhost (localhost [127.0.0.1])
	by filter.openoffice.nl (Postfix) with ESMTP id 7786E1008D2
	for <printing-users@lists.linux.dev>; Mon, 15 Jan 2024 15:07:59 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at filter.openoffice.nl
Received: from filter.openoffice.nl ([127.0.0.1])
	by localhost (filter.openoffice.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m79yeeRtm1EW for <printing-users@lists.linux.dev>;
	Mon, 15 Jan 2024 15:07:57 +0100 (CET)
Received: from blub.net (mail.blub.net [IPv6:2a01:4f9:6b:429d::243])
	by filter.openoffice.nl (Postfix) with ESMTP id 2F53B100791
	for <printing-users@lists.linux.dev>; Mon, 15 Jan 2024 15:07:57 +0100 (CET)
Received: from [IPV6:2a02:a46d:bbe9:14df::3] (2a02-a46d-bbe9-14df--3.fixed6.kpn.net [IPv6:2a02:a46d:bbe9:14df::3])
	by blub.net (Postfix) with ESMTPSA id B8743300167
	for <printing-users@lists.linux.dev>; Mon, 15 Jan 2024 15:07:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
	t=1705327676; bh=RkSXghjSxsXNp+8wzRe5hR9pa04f4CuA+qQbl9KPqHs=;
	h=Date:To:From:Subject:From;
	b=Y6bi7LXe0k9kYqlkxOg+XSLv029v0x+RlRPf1XesmNghO/6go7W7xFdYtyesjo7Rl
	 LZO8wtSy0sz23uMSE4gxKKT70DH+9mHRv/4EfN7WkVVyQ329wGPxin6NzrgSM0dyqU
	 P61V+opolQicShxVE4C/YyvZC+xjXKi1+OgmalA8=
Message-ID: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
Date: Mon, 15 Jan 2024 15:07:55 +0100
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: printing-users@lists.linux.dev
Content-Language: nl-NL
From: Valentijn Sessink <valentijn@sessink.nl>
Subject: Cups automatic duplex printing problems
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello list,

I'm having printing problems under Linux, with several printers, and I'm 
not sure how to proceed. It boils down to:
- I cannot print duplex on autodetected printers;
- I cannot print multiple copies on manually added printers: whatever I 
try, the printer says it is a duplex job with just one page to print.

With some help, I'm probably able to debug some of the problems, but I 
actually sort of lost track with regard to printing - there is 
cups-browsed (which adds printers?), cups-filters (does that do anything 
anymore? Or are these driverless-printers just bypassed?), cups itself; 
then there are manufacturers that send out printer drivers that look 
like PPD's to me - that should not be necessary to include anymore, 
right? Driverless printing is just what it says, driverless?

This is under: Ubuntu 22.04
Cups 2.4.1op1-1ubuntu4.7
Cups-browsed 1.28.15-0ubuntu1.2

I hope this very new list can help me to become informed again and debug 
simple printing problems :-)

Best regards,

Valentijn
