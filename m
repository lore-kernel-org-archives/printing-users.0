Received: from filter.openoffice.nl (filter.openoffice.nl [144.76.204.185])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BFF66BB24
	for <printing-users@lists.linux.dev>; Tue, 30 Jan 2024 13:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=144.76.204.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706622109; cv=none; b=vEvXEYVuH4OfLGYOP/ebo1kD7bz0slzxCJJmr/o7SDmfLSQsPIqblnV6XDh4vpsiHq3bVO2bHW1kK2VmdtQnf/XdtaymANyxu6cI7KkMTcB2C0PTqy8fAljDyUNZUit12swC/t767mzu0AmkwNagcaPQOqB0OJ4jyzqLiq+9NUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706622109; c=relaxed/simple;
	bh=tBZjSJBSQyPxTGhUkABGxOhJ9+b0qWoKU5kLXWEsLeM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eB02melj10kh0re/OxNmOLKOuAH/Vu7Z7PRjquLzTp/xw5pCTKQrSGA81RwjCfFGvTIPqhZ/vWqbXaa7Oesb1Swo7qNafflU37hl8vfq4KNNZe9VeW8uaLwawal275kEFAgeSqPhEUN1zxXV6k71m0CRm5adYnaqD+6+E7A50Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl; spf=pass smtp.mailfrom=sessink.nl; dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b=1p4gtK7m; arc=none smtp.client-ip=144.76.204.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sessink.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b="1p4gtK7m"
Received: from localhost (localhost [127.0.0.1])
	by filter.openoffice.nl (Postfix) with ESMTP id AC6571007F5;
	Tue, 30 Jan 2024 14:41:37 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at filter.openoffice.nl
Received: from filter.openoffice.nl ([IPv6:::1])
	by localhost (filter.openoffice.nl [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id mxDdaIBR7YQQ; Tue, 30 Jan 2024 14:41:35 +0100 (CET)
Received: from blub.net (mail.blub.net [IPv6:2a01:4f9:6b:429d::243])
	by filter.openoffice.nl (Postfix) with ESMTP id 8B2E51007E3;
	Tue, 30 Jan 2024 14:41:35 +0100 (CET)
Received: from [IPV6:2a02:a46d:bbe9:0:6a10:fb9c:3df8:82ae] (2a02-a46d-bbe9-0-6a10-fb9c-3df8-82ae.fixed6.kpn.net [IPv6:2a02:a46d:bbe9:0:6a10:fb9c:3df8:82ae])
	by blub.net (Postfix) with ESMTPSA id 24D313001EC;
	Tue, 30 Jan 2024 14:41:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
	t=1706622095; bh=tBZjSJBSQyPxTGhUkABGxOhJ9+b0qWoKU5kLXWEsLeM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=1p4gtK7mG0+raXDU0DEUEkOms8tlD9lRhLCrbYAzsdmyjnaeyPXnoTgIq473OPDl6
	 3Go7j5MkmV4gtfFXDWT0FsfrwnkszrYRB+1U7d8yrv42kV8dFMiUIbttHBPVQYynAD
	 Z0SEd3JWClBbQ/wxyngcck4hVA/WJIMIlBSAMs4Y=
Message-ID: <e43a7eab-2ca4-4fcb-a345-fb65061b18b8@sessink.nl>
Date: Tue, 30 Jan 2024 14:41:34 +0100
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Cups automatic duplex printing problems
Content-Language: nl-NL, en-US
To: Zdenek Dohnal <zdohnal@redhat.com>, Michael Sweet <msweet@msweet.org>
Cc: printing-users@lists.linux.dev
References: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
 <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
 <5bf4527c-004f-4324-8977-ba2431373d6b@sessink.nl>
 <7CC4FC04-EB2B-4AA4-9244-87016D2B2946@msweet.org>
 <e938a691-098a-46b8-9725-11a3259b6844@redhat.com>
From: Valentijn Sessink <valentijn@sessink.nl>
In-Reply-To: <e938a691-098a-46b8-9725-11a3259b6844@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 24-01-2024 10:18, Zdenek Dohnal wrote:
> AFAIK implicitclass runs IPP backend - so we have to add another PPD <-> 
> IPP "make sure the value is similar/same to prevent unexpected" code.
> Valentijn, it would be great if you reported to the application you used 
> the fact that it would be great if they sent IPP attribute as option 
> instead of PPD option.

Uhm, this happens in several applications - more or less generally under 
Ubuntu 22.04. Evince, Libreoffice for sure. Didn't check other (more 
obscure?) software packages and I'm not sure about older versions.

Is there anything I can do in the mean time? Or is there nothing to do 
but wait until this "another PPD <-> IPP prevent-the-unexpected" code is 
implemented?

Best regards,

Valentijn
-- 
Durgerdamstraat 29, 1507 JL Zaandam; telefoon 075-7100071
