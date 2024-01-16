Received: from filter.openoffice.nl (filter.openoffice.nl [144.76.204.185])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC4A1BDD9
	for <printing-users@lists.linux.dev>; Tue, 16 Jan 2024 12:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sessink.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b="Z/aFoupj"
Received: from localhost (localhost [127.0.0.1])
	by filter.openoffice.nl (Postfix) with ESMTP id 1B09F10091F;
	Tue, 16 Jan 2024 13:23:03 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at filter.openoffice.nl
Received: from filter.openoffice.nl ([IPv6:::1])
	by localhost (filter.openoffice.nl [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id RgHzlhddCX2l; Tue, 16 Jan 2024 13:23:01 +0100 (CET)
Received: from blub.net (mail.blub.net [95.217.39.243])
	by filter.openoffice.nl (Postfix) with ESMTP id E742610079A;
	Tue, 16 Jan 2024 13:23:00 +0100 (CET)
Received: from [IPV6:2a02:a46d:bbe9:0:f3fe:d40d:985e:6254] (2a02-a46d-bbe9-0-f3fe-d40d-985e-6254.fixed6.kpn.net [IPv6:2a02:a46d:bbe9:0:f3fe:d40d:985e:6254])
	by blub.net (Postfix) with ESMTPSA id 69B2C3001B2;
	Tue, 16 Jan 2024 13:23:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
	t=1705407780; bh=qdISGOfjwSiR2qKbt++c8nyWJw1R/0+cQdreDmciyxE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Z/aFoupj9w0JnHrqxNEnaulQO5/R0n7y0ReY5Jh7/eSieMYNnEa1HDA+wqN+F5tXV
	 LRdGKcVHkrKwOyR7ARN0HaBnXBD/c1p5szU5S/fdVA6l2c4SKFNojLvfALFUM91bE+
	 gcvjmTYgIBtnH/H6XUosSG+mqQHwApQdxjn5vFBA=
Message-ID: <1cfe7dc6-4073-4184-b557-d5181a5b8639@sessink.nl>
Date: Tue, 16 Jan 2024 13:22:57 +0100
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Cups automatic duplex printing problems
Content-Language: nl-NL, en-US
To: Michael Sweet <msweet@msweet.org>
Cc: printing-users@lists.linux.dev
References: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
 <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
From: Valentijn Sessink <valentijn@sessink.nl>
In-Reply-To: <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Michael / hi list,

Printers I tried yesterday were a somewhat older and veeeeery slooooow 
HP Laserjet CP5225dn and a more modern Xerox Altalink C8155. They're 
connected through plain old ethernet. The network is rather 
straightforward if not a bit old fashioned, with IPv4 192.168.something/24.

Debugging (i.e. trying what works and what doesn't) is rather tedious: 
remove printer; print simplex, 2 copies, duplex 2 copies; add printer 
manually; print simplex 2 copies then duplex 2 copies. The CP5225dn 
takes ages to fulfill its duties...

The first "I cannot print duplex" messages in my mailbox are from 
november 2022. The "I cannot print multiple copies" is from November 
2023 - not sure if it worked before, though.

I'll try the "logging" option next time when I'm in the office.

Best regards,

Valentijn

On 16-01-2024 12:26, Michael Sweet wrote:
> It would help to know what printers you are trying to use and how they are connected.
> 
> I would also advise that you enable debug logging (cupsctl --debug-logging) and then look at the /var/log/cups/error_log file to see what is happening during a print job.
