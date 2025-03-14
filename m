Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D03202F68;
	Fri, 14 Mar 2025 15:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741967594; cv=none; b=O1M1PY1FpcxTGB6y1Wj8C7OuVhwSnN3Ph6Oy0D975fRBFsmIx+5aomeRfqdT/peLOUu+aHzx3kU1mB2qAhmkR1rgMJ5ACgOoH5bHkHRkeyr8Y+PSK9AaaBY0wnYk8jKv3cRE0Qao2ubA6ki8rT715zNZIesXe/I+xgItTichMKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741967594; c=relaxed/simple;
	bh=05p8/Lt/ZskhmdDzTJTzMFHH70/wVP3kK9JsR9Yls8Q=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=AfWHFmYCfrDMDEJVe91ylB34x4bizPwvLR/8qDcgK2ot++Kk2+AIrk0slhM+uFR2IIF1bubBNZ71lARC1io5dw5uBv5kw1nFTF/xzl/IBuwm/m1TSkvQ0YdP3YncRAlRzO9VXW6wgbF4hhEm6Wi9VyZ/wStJqdUyscoLxhkkjEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ne75KCrg; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ne75KCrg"
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e46ebe19489so1886128276.2;
        Fri, 14 Mar 2025 08:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741967591; x=1742572391; darn=lists.linux.dev;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=05p8/Lt/ZskhmdDzTJTzMFHH70/wVP3kK9JsR9Yls8Q=;
        b=ne75KCrgep/n8X4LNAHViRZkPhc/gY0XFbDaS75zBrVTC2i73dZDllyn9acZdom9p/
         JJZCTFy7/9cpvhLpH9fKHep2z1aKF3AT36Kz5mJriyqKxXmlIAdbw2Zmw1beCRUTTKuL
         o/IkRhX8X/oHbf8q/XAYomPEnHKRwIMdhkwUJdkbNnqLU3ZN7hAGo2DlE4YhH39I3d3A
         ey9aHP2LlwKx8XMLnBz71iJdrBwgFgvYRbFE7JwnP92vwTw7WokKsiw7gyT73FRZEqwn
         8YRHp+HTW7q/1ZzjnmiczKJ0BKldtBRwFzFm8AZeMUx/avSuzql+4HuCrZobBffRZ2kE
         m1tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741967591; x=1742572391;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=05p8/Lt/ZskhmdDzTJTzMFHH70/wVP3kK9JsR9Yls8Q=;
        b=qd0eh+7pChIf1jMnhWGbQClrywQXSDIz1EfN6REi3bHvuJGESNg82gLtcoEQSQFgA/
         yB24vEDWTIivrMnaQQLNWHz8RlDdrtjcuowP9IEF/up5Ucf5m9wnqfW3bFNriJlTDHvh
         GBBel8UrVrXluK9dhljVUfLG+2LNAiMKO/U+CIT/fg11mCiGZLG2NTOPrwQHPBKvShuO
         pytbphySAHgzWsfluCoFhNm11mE3atelO5Cc1lqOki6dHB0LQD/hIFK7ZHhkW0FDSrwI
         uaC82kQHpxX42ofEvFXQROk+Yv3uGgzgjWdmDfGsjiIVnO7UhDHj6dDbdHZ9oqsDH363
         NZNg==
X-Forwarded-Encrypted: i=1; AJvYcCVip4Eo1UCFes8h7IeWwSY4O9AUvqPbYhQSwp/WsJSdtsAL/Wm9TOcKQRTi2pdZpGtQQPIzoEK340uHtCrmpL3qoPsPq+I=@lists.linux.dev
X-Gm-Message-State: AOJu0YykBOnvLnoVcg348lqmQYUORwezX769d4Hv7xKz9Tnt9kM5SZ/8
	1QqQ2ZSBki9cwM+74PrYFyZxkbZihnRLjiSPXymZtTieBLNe+foRNBkdpSNcYqiA2c8UIg890kl
	Cl8NDlWxSLJwNBVhIwbxH9gNzCSrcKub3rg0=
X-Gm-Gg: ASbGncuJoCGq9FaRZB0BvzC+kCZGdwOgkPPz8QGza//pqAt1wTur2mLdAZvhATqn/jx
	BVFx63OgkLLnTNoxAIicjBZWR4JZauEtzJSkqw1rmYR3ykTFuHveqxiVRHiQFBM1JlfQA2uH5Vi
	b2CekrIaCNXGWjxkpq2C6c3owe
X-Google-Smtp-Source: AGHT+IFGAuP9NrYxJ7u8mR0QQ79M+mq1OdDfVHlpx4wmftf4miFKl1lYtlKYw6FBgfvkpH5QSTF1119Cie7GkEpaMjA=
X-Received: by 2002:a05:6902:2490:b0:e63:3e41:656d with SMTP id
 3f1490d57ef6-e63f650e1a0mr3248346276.15.1741967591246; Fri, 14 Mar 2025
 08:53:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Abhivyakti Singh <abhivyaktis04@gmail.com>
Date: Fri, 14 Mar 2025 21:23:00 +0530
X-Gm-Features: AQ5f1JqCsKt7PIYk0NCddodBDT5hFGKgKJ-ptPD2SWeCbxOuNSArso6MVAy6zYw
Message-ID: <CAHDAiUqbowc-zGu_E6jLrHya0UMpp_L4pmky42k2UX+QiDEXJg@mail.gmail.com>
Subject: Introduction and Interest in Contributing to OpenPrinting for GSoC
To: printing-users@lists.linux.dev, printing-architecture@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear OpenPrinting Maintainers,

I=E2=80=99m Abhivyakti Singh, a first-year Computer Science student eager t=
o
contribute to OpenPrinting as part of my preparation for Google Summer
of Code (GSoC) 2025.

My experience includes:

* C/C++ programming
* Web development
* Linux command-line tools
* Verilog for hardware design
* Exploring Linux kernel development

I'm particularly interested in learning more about OpenPrinting and
contributing to its development. If there are any beginner-friendly
issues or resources you recommend for newcomers, I would greatly
appreciate your guidance.

I=E2=80=99m excited to start learning and contributing. Looking forward to
your suggestions!

Best regards,
Abhivyakti Singh

GitHub: https://github.com/just-a-coder23

LinkedIn: https://www.linkedin.com/in/abhivyakti-singh-70a98231a/
