Received: from filter.openoffice.nl (filter.openoffice.nl [144.76.204.185])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9F661D556
	for <printing-users@lists.linux.dev>; Tue,  9 Jul 2024 08:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=144.76.204.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720513152; cv=none; b=o6aeeVi5vGuVxlm5tozA161Id8kxaVodnJC/eptdizFSYaQDLYiYhYwGd942Fn4eC7uNuugmmawdiL8iHHGmnKsfR7J+uoNrfpwKldarSq1sjJwJyRC2IOIg8Wf9l8OyxhCRCbeLtZ9CPOrhQBwifo8XhWP7kKWPtyB4P/QUw1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720513152; c=relaxed/simple;
	bh=8nPDOeI2G+wtqWoSTpjMS6M+st/UDUs9qhjMh4TtWTg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NeuS2Ry10Fdq2YQuulrfQpSE5jkAhdd4n0pOfAy0yoWsTpXhjWEA2RYYjSEXqpKZ5TXVyhlShnH8a/iU+KslkGzFrt2UPJ1MhEDA+kb2FDLMDymkqeW554w5a+s0qOCuM0sgKE4d1qKgq5BSNTuOGmiQjqksvBM4uk+4Ahn7GS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl; spf=pass smtp.mailfrom=sessink.nl; dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b=oUReP7yk; arc=none smtp.client-ip=144.76.204.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sessink.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sessink.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sessink.nl header.i=@sessink.nl header.b="oUReP7yk"
Received: from localhost (localhost [127.0.0.1])
	by filter.openoffice.nl (Postfix) with ESMTP id 17BE61006E7;
	Tue,  9 Jul 2024 10:19:06 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at filter.openoffice.nl
Received: from filter.openoffice.nl ([IPv6:::1])
	by localhost (filter.openoffice.nl [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id 3WcD1XjJOHGZ; Tue,  9 Jul 2024 10:19:03 +0200 (CEST)
Received: from blub.net (mail.blub.net [95.217.39.243])
	by filter.openoffice.nl (Postfix) with ESMTP id C26CA1004E5;
	Tue,  9 Jul 2024 10:19:03 +0200 (CEST)
Received: from [IPV6:2a02:a46d:bbe9:0:6b63:d6a7:2e33:1c11] (2a02-a46d-bbe9-0-6b63-d6a7-2e33-1c11.fixed6.kpn.net [IPv6:2a02:a46d:bbe9:0:6b63:d6a7:2e33:1c11])
	by blub.net (Postfix) with ESMTPSA id 91E113002F8;
	Tue,  9 Jul 2024 10:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
	t=1720513143; bh=8nPDOeI2G+wtqWoSTpjMS6M+st/UDUs9qhjMh4TtWTg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oUReP7ykLosnGE1mcHsT8pXZimZ7JKCPZxMMZ5cTqNYtluMNmYxXUUFj/+VjzZxFC
	 BfWqsi1x+6u6HjIh7wAuhms48l39prCkv8m1cQ2FdyKZ0Kfr3fyncYybes+hh09+ay
	 7eAaudH3vKhO/d2OgB3EGsJcOKXi/Mb0Fo+4vB3Y=
Message-ID: <92f812ad-4674-470a-8dc2-a1dd9488637b@sessink.nl>
Date: Tue, 9 Jul 2024 10:19:02 +0200
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: hplip-printer-app hangs and oddities (Re: Cups automatic duplex
 printing problems)
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
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
Content-Language: nl-NL
From: Valentijn Sessink <valentijn@sessink.nl>
In-Reply-To: <C5628583-E69F-4CB4-B39D-5A1DCA15E401@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Michael, hello list,

On 09-07-2024 00:21, Michael Sweet wrote:
> Does the PPD file in question have any JCL options (look for JCLOpenUI)?

Yes it does (please see bug report, sorry it wasn't clickable due to the 
missing "h"). For your convenience:
https://github.com/OpenPrinting/hplip-printer-app/issues/17

> It is possible that the JCL code is missing a trailing newline which could cause this - in which case we should append one to make sure the JCL code doesn't prevent language switching...

Nope, there actually is a <0A> at the end, I did check that.

But please note that the %% is at the *beginning* of a PJL line, i.e. 
there are postscript comments already, where PJL is still being sent to 
the printer:

·%-12345X@PJL
@PJL JOB NAME = "Test Page" DISPLAY = "4 valentyn Test Page"
@PJL SET USERNAME = "valentyn"
%%@PJL ENTER LANGUAGE = PostScript
%!PS-Adobe-3.0

I can't figure out the code path. But if I change the code at the end of 
ppdEmitJCL() to:

   ppdEmit(ppd, fp, PPD_ORDER_JCL);
   fputs(ppd->jcl_end, fp);
   fputs(ppd->jcl_ps, fp);

... _and_ change the PPD file to say:
*JCLEnd: "END-OF-TASK<0A>"

... then the output to the printer says:

@PJL SET USERNAME = "valentyn"
%%END-OF-TASK
@PJL ENTER LANGUAGE = PostScript
%!PS-Adobe-3.0

So somewhere, something says "%%" to the printer, while there is still 
some PJL to be sent. But as said: I can't figure out the code path.

I can't think of anything else to try. Tried to get DEBUG_printf to work 
but my grasp of the whole cups/filtering stuff is too small to actually 
be able to get that to work. Also, "debian/rules clean" for some reason 
messes up the code base and I'm sort of unable to rebuild cleanly 
without re-unpacking the debian source. But that's all in the category 
of "I'm not an actual programmer" so you shouldn't bother.

But it is an actual bug that could potentially bug all printers with a 
ppd file that has PJL commands.

Best regards,

Valentijn
-- 
Durgerdamstraat 29, 1507 JL Zaandam; telefoon 075-7100071
