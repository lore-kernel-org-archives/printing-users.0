Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E669B17BC6
	for <printing-users@lists.linux.dev>; Wed, 24 Jan 2024 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706087935; cv=none; b=XzUd8ZU48EbzlW2+ieQpVgaiR5x3YVw0F420x9WeRHBl88OsATlV1DojOtOsveQm3PotPsZRhAH4hbIpKZwoTriXhizfUNWQsfAgCw9air01TDL/iIIydYeKXRobnL0fXVC2LEX+9EDtckV+BnjIvhj4Zi+uRVjNa9vZNOArzdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706087935; c=relaxed/simple;
	bh=4rsZSZOxSEbTztgDczL/A1GspbND09LCDPcI/AI6C30=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TtyB9sFOY0WDAezpjHao6kgc78wWVP/dSi6EZc99/AokIG7+dCWspPeuBX7h4trAb3i7h7MqQ9tgVdMdU6jEj0Y8G1vDah8ECJ8jIHcw4UMLK5JM0wfPOAjbgadzCd5we18n87GhmKOqZ2x3QuKihUUv2ztRGa2LW3MrFdv4Ml8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=GDhRwfmE; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GDhRwfmE"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1706087932;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wqNNxklcfJuXPJRKaW5JfG4zb4OD7Q8c2NgqZQ0SDg8=;
	b=GDhRwfmEE+pJRWzUDgmZgNCMNc6lv43zfY3ymxVIHgkis8sqy4qC0zel/edst6cC+0WKKs
	HsOIZnUffxltcpv9hOrh4qdikhsTAJniozqA08XAXSwQIdIEdIzIO3kgHCf7aRGpdGbfob
	osh5TtDtYaNi0Jwgztam9fACV9viiLM=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-407-X7L9HD0xOCGgb0OwKgx90w-1; Wed, 24 Jan 2024 04:18:50 -0500
X-MC-Unique: X7L9HD0xOCGgb0OwKgx90w-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-40e478693bcso27888635e9.1
        for <printing-users@lists.linux.dev>; Wed, 24 Jan 2024 01:18:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706087929; x=1706692729;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wqNNxklcfJuXPJRKaW5JfG4zb4OD7Q8c2NgqZQ0SDg8=;
        b=CHZQ4auRdkCbhRV88GYEkm974TxoMPw5pVlm1N/D0DxAZ4vemysz3k1ePbJSucMycC
         LOie0l6TOuNjl+yCfX8bcpVAalLzBqowRdRNHdhKeVLbA7h9tz464o5A7cVkMA2y0Ayb
         xV7xrHYQPXPqFd+7kZbApm3thP3r2Zt3dCQ3OBtyAakrpdI/qYQFGwzQaFJNe4ht46xb
         fsPGJdrC7U4j02YBA30MNrYVF4NFp/LrVbXZT+Cq0A45ssSMJM0k+sqpNnV7wmcmSnge
         M1EkmxVMhIXK4qof0X99Jz0eWqjtM0+At9BQ6H4F2vIOJokfLD7fi26cm6cFqsk/WUUR
         UFgA==
X-Gm-Message-State: AOJu0YzK/R4WSCAoplW7qVdNqrTjmlh1Tb0QFZzcDIgJCYPZnrVEZjfv
	Z+hIfgtd+CCB38h0r8cNHLxNw9EeiewVg+K+hINXtAbhmcWaj8WnJpumdZTS0LfWin8Rnx4/voK
	O0HB8TtPaBiZ8iEJJ/HOSnWKj3etiMfXVHDIWdeMKUSFuxJibwRd/okTeeaHTyvPFzzw2NUEu
X-Received: by 2002:a05:600c:2109:b0:40e:7125:12ba with SMTP id u9-20020a05600c210900b0040e712512bamr473990wml.137.1706087929591;
        Wed, 24 Jan 2024 01:18:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHV0WFrQjD/T+JGOLyE235HC6wVww2r/2GmAVFCyfX212Al/WWfYRbS4KNo2FyEZZebKUjJSQ==
X-Received: by 2002:a05:600c:2109:b0:40e:7125:12ba with SMTP id u9-20020a05600c210900b0040e712512bamr473983wml.137.1706087929305;
        Wed, 24 Jan 2024 01:18:49 -0800 (PST)
Received: from [10.43.2.21] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id f6-20020a05600c154600b0040e880ac6ecsm25255441wmg.35.2024.01.24.01.18.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 01:18:48 -0800 (PST)
Message-ID: <e938a691-098a-46b8-9725-11a3259b6844@redhat.com>
Date: Wed, 24 Jan 2024 10:18:48 +0100
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Cups automatic duplex printing problems
To: Michael Sweet <msweet@msweet.org>,
 Valentijn Sessink <valentijn@sessink.nl>
Cc: printing-users@lists.linux.dev
References: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
 <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
 <5bf4527c-004f-4324-8977-ba2431373d6b@sessink.nl>
 <7CC4FC04-EB2B-4AA4-9244-87016D2B2946@msweet.org>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <7CC4FC04-EB2B-4AA4-9244-87016D2B2946@msweet.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Mike,

On 1/23/24 14:00, Michael Sweet wrote:
> So the "sides=one-sided" (IPP option) specifies a single-sided print while "Duplex=DuplexNoTumble" (PPD option) specifies a two-sided long edge print.
>
> CUPS itself will give priority to the PPD option but I'm not sure what the backend will do with it (and I'm not familiar with the 'implicitclass' backend, it isn't a standard part of CUPS.

AFAIK implicitclass runs IPP backend - so we have to add another PPD <-> 
IPP "make sure the value is similar/same to prevent unexpected" code.

Valentijn, it would be great if you reported to the application you used 
the fact that it would be great if they sent IPP attribute as option 
instead of PPD option.


Zdenek

>
> ________________________
> Michael Sweet
>
>
-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

