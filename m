Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D67211C8B
	for <printing-users@lists.linux.dev>; Fri, 29 Dec 2023 15:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=contractor.linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=contractor.linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=contractor.linuxfoundation.org header.i=@contractor.linuxfoundation.org header.b="LFoSSEUj"
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2cce6c719caso15257261fa.2
        for <printing-users@lists.linux.dev>; Fri, 29 Dec 2023 07:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=contractor.linuxfoundation.org; s=google; t=1703862078; x=1704466878; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eIqBygFuS7GeE6jHwvsJn7+k2o+cDvVjh2wX2Vp/rGw=;
        b=LFoSSEUj2YkEFsEacMcGEWrYkkSls/0uvTsrdrYRZRCoqVoLmcJH6qMqvoVWu5EJXf
         8hNfeNl1tYSK18vbfGz3OfA0cAWVJJqVdpQTbeA77dYZPUtHDokugEL6j4BG+q7Oql53
         Tn1PdNtxb7a2wMZW/fW2efq0+Bh8ocCNPiWLqsf48nPuO+bZj/b6Ox7gUKBcRfEO+A5q
         7/VGfgyMADmy/Yea3cWbUbzve6GfH9EWLydjMvFC6SC2AR/4uijWo1igp2MHRBWkbk0/
         j5d1wpQLCY0b0GrNWkKTvks/Jmhpd0VrgILUC3nDsC6sZINkpax/6m0UXmfS0CMvLyMO
         T/4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703862078; x=1704466878;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eIqBygFuS7GeE6jHwvsJn7+k2o+cDvVjh2wX2Vp/rGw=;
        b=Lbu1/gm3DBt6nMBPCNEdGzYZvVkS/vEJnMTZhrd585W3ayc06IFKx0+gOk63hzfq0b
         kNkJ0tnXeavg82uxyQ14dxQTx8z7YtXhfOCv5TvhSl5dHEBDrO4m0tM5ZuHBNqt1lWYo
         7CEdb7dzby6HoKvHQbGWzXRJ+L6GZROkOsvHHTcUeKj24NY2FkQim8HJg6ToBuljPe+3
         pMNdwX0pEmDC+KnX8HNb7BPytJDgv0ZctXyaq1He3n8Hxhi+6d5iNeYCpqqcSIgSORiQ
         VX68aAl+IOgsQMSbkAyZ0Hf83eOejxVDEB7cPtstzt1LYd42zqLkZ74dTeEQb5GHoZJE
         yufw==
X-Gm-Message-State: AOJu0YwimaJizFMsxh+Vp5vwJprs09rFfuBLmT3I2rgPpk/rj6v69Hdt
	qwSK5iEIz3Jk2nI6yrqZB3QcQaiIWvWymrMnccvPsH2JNAXFgjcFJXuKhJAJ
X-Google-Smtp-Source: AGHT+IF08Lf91FW6ItQf9BxtLPiyeDrVSGyfEpl/u4bx7LOVs1GoBhJQlfw5egFAveyJd+80N56DiK2yUKHkaTADQ8o=
X-Received: by 2002:a2e:808d:0:b0:2cc:f31b:56fd with SMTP id
 i13-20020a2e808d000000b002ccf31b56fdmr200785ljg.58.1703862078066; Fri, 29 Dec
 2023 07:01:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Shyam Kumar <skachukattu@contractor.linuxfoundation.org>
Date: Fri, 29 Dec 2023 20:31:07 +0530
Message-ID: <CAH=dH981xQ92CrduvfXNHBrZVoMy8tv-DqM6Zort04D0MjeQBQ@mail.gmail.com>
Subject: Test Mail
To: printing-users@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi

Test mail to check the list creation.

-- 
Regards
Shyam Kumar
The Linux Foundation Core Projects
