Received: from mail.vordruckleitverlag.de (mail.vordruckleitverlag.de [136.243.178.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B9530F812
	for <printing-users@lists.linux.dev>; Tue, 19 Aug 2025 05:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.243.178.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755581274; cv=none; b=b57WsT4FQhTMR8mxrSDfbtR8jqzpUAY7tq4xBtTL4HPv2iiSnE5aJMq/7LWLAnTOkO/ntXhC2B6yIWUBhVU6fotJnBLow1m8QLkL6DTvdPlQpZ+3gCETJpwAEGqoYDKjQWLzbiyYUG/LKieMQFfDscDaA0eaTDgoQ/zgkwIAZlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755581274; c=relaxed/simple;
	bh=jijDyuLTATlzUAIfakP1ECR+Gs3g1vD4pIr3lbKXelA=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=q9Bbx58S36WmW7sD5VyFYkJdOUJ2I92mGVlPEKjBtszyk4V7pOfqLTPi/F9FOfqSZMt07QuppONkxvWjnV0TxPEC6udzJoiKmSTFYdEBgIsowUEKGZG0Vrc2qvyJSk8GoWdDszrkj1Lm1PXE9y53K8Q/mr4WKXDOsef9/E0atM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vordruckleitverlag.de; spf=pass smtp.mailfrom=vordruckleitverlag.de; arc=none smtp.client-ip=136.243.178.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vordruckleitverlag.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vordruckleitverlag.de
Received: from [192.168.2.116] (p5097cf15.dip0.t-ipconnect.de [80.151.207.21])
	by server1020.dmsolutionsonline.de (Mailservice) with ESMTPSA id 186AEB18918D
	for <printing-users@lists.linux.dev>; Tue, 19 Aug 2025 07:20:08 +0200 (CEST)
Authentication-Results: server1020;
        spf=pass (sender IP is 80.151.207.21) smtp.mailfrom=listen@vordruckleitverlag.de smtp.helo=[192.168.2.116]
Received-SPF: pass (server1020: connection is authenticated)
Message-ID: <5ee41fd0-72e3-4416-835f-8337e1ed311d@vordruckleitverlag.de>
Date: Tue, 19 Aug 2025 07:20:07 +0200
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: printing-users@lists.linux.dev
Content-Language: de-DE
From: =?UTF-8?B?SsO2cmcgVGjDvG1tbGVy?= <listen@vordruckleitverlag.de>
Subject: subscribe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-PPP-Message-ID: 
 <175558080828.19923.5525279601252502418@server1020.dmsolutionsonline.de>
X-PPP-Vhost: vordruckleitverlag.de
X-Virus-Scanned: clamav-milter 0.103.9 at server1020
X-Virus-Status: Clean

subscribe
-- 
cu

jth

