Received: from esa.hc86-32.ap.iphmx.com (esa.hc86-32.ap.iphmx.com [139.138.29.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FA7BE57
	for <printing-users@lists.linux.dev>; Thu, 10 Oct 2024 04:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.138.29.120
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728535379; cv=fail; b=D2bc8K3IMr+A5Xk2AtARIpx3y14QJc53VR6vZv04B6Mvzmg+6qkUVZG9wCJVtMGp1AIx8JiD53n3hFFvZBJyX5XfQaZrbEfk8LKAm91wdBYxMWixI0N+9KExN5RzqggJ25oydMQfM8zdcRqC/fxnR99wCt6jGm+mmcEelK1N43Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728535379; c=relaxed/simple;
	bh=SUQPgXubyZV/qxBV/BMCL5LBZfAuozM/O1/LZLguZPg=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=uGDjZmEsr06gdEtgEVjKrk+aa1Hmfamk3qlbWlR4+hkmrDSW9aKRwIsw7pdIhVr6jwyU/Q4NJwRCK6w3xjP60WuOoFwsrnsWY+q5r2USkmQSD+KJiUzmqpzjVYrL1d4yJ5ZwXwWwJpDaCyhEVStjoFrlEZf0F0VGWnn+EGr5EOg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uq.edu.au; spf=pass smtp.mailfrom=uq.edu.au; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=l2jlcf4T; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=QX6BJ3M9; arc=fail smtp.client-ip=139.138.29.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uq.edu.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uq.edu.au
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="l2jlcf4T";
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="QX6BJ3M9"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=uq.edu.au; s=s1ces; t=1728535378;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=SUQPgXubyZV/qxBV/BMCL5LBZfAuozM/O1/LZLguZPg=;
  b=l2jlcf4Tswn2BJPYiDJOZp2EmNt2XrX6lj0g13GlFSQa3345V5A08eGP
   hnqNs0QlJuqQfBH5EdFs2IuOMSXrmq7PC65Ijk8rrCKmHeZbPWgLsWjiF
   wNtGfETJLKD2nnty3OaVkzDUKJGiucMfz6ffGM1FvwwUAJXg2EdG+zbGd
   h3+aX8X/spcveOlaKIIeaX48XyRy3/1C4NKlLBg5ULZHvd37VqlsIHF99
   rZOyyurJNC+fozUqWzSOa8z+1PaCa+76MWFcpaJGNUZqXmK3mS2siN0dM
   8hLZ6qj+akKpfBUaoHpx/UgsXJXoSNpWYlrBWLu5wQoe7rSjzCvWd6+q0
   A==;
X-CSE-ConnectionGUID: d4szE+gbTaCf8ezLYFjxQQ==
X-CSE-MsgGUID: YZ1ihnk6SyiTDvaYYGl7HQ==
Received: from mail-sy4aus01lp2170.outbound.protection.outlook.com (HELO AUS01-SY4-obe.outbound.protection.outlook.com) ([104.47.71.170])
  by ob1.hc86-32.ap.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 10 Oct 2024 14:41:47 +1000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A5aqVp7QrCs/1gEKGjsYJ3RCKq3luvOKPxj4ga+hPjaDV07ZbtXI9tGJ23QzzdW+6q5eKyfTwOo3rFVMQp69nQXXttjqoKSSQZWdzVZK5uw7aOl7xmOEhbSHnMW37VzG2pHlUjLE67FgcIGWqGxJofi5Ae4tmOSetg72OSV7XN84Zl/DKxwXb8frmBVru8Lt7fjCWhY/ZSkvWBM4d4sDlj+2tANtuVlmLoyD2Rn9USm6zSS8AnsS4j/HJ5zqoJyXVMxZEk4zCHYmzKSNeD4z9B6wmSSlLRdQXdX+nPWyoJo+Y293SI72AVufObRsBXcFlPLRmfyJt8q3dXvShBR2bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SUQPgXubyZV/qxBV/BMCL5LBZfAuozM/O1/LZLguZPg=;
 b=eBu47htXQfIvcdDv0zuqOa3FIM5H8RvQQdF0p0V61NxLIGEuEbg+NN4clWGopFN3P72K+et0Qst/h70QdbWOW2MrfnJ5qgvpZEyS+EFMfIoKW1R+VE3ImBUy8IHFwpI1FgdFC9nNvJwBiIqPIWOxEks0mafrV8hUZpgAT9EcVGcSb4GV4julS+AUBhI1mAO+HueDzekOQ1qAtkQEnX+gjcxroYX7J+x5YZlBN6qSlhjKKK8eBw+sk2S/yz93p0vMDIEejudOumv57D79PwBpwfYs+kBjg9TyP30D8tObpGzddk8libnxXqdRebUs+TtZ4nh8jVoXNYUQaoQvIxlDDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uq.edu.au; dmarc=pass action=none header.from=uq.edu.au;
 dkim=pass header.d=uq.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uq.edu.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SUQPgXubyZV/qxBV/BMCL5LBZfAuozM/O1/LZLguZPg=;
 b=QX6BJ3M9voZzIohlO8PUhpKmApihonm6ub3yotp2hMfDJ/yfP3JxwtQI3I3KtSGkY3IxfRzjcuKKPSSMoqWiIO4k1wH89mtbOvJ1JGcc+t802LYh7Mo6QN/hzU7xEkw7bdo3YMz3D4gyrm5GQ82TbmgtTBAFNbdHojZDItIL3p43iCT14my/9DIHPOO5CYhaqaGIKRp4Poc9b3fAE6N7f63BFyxQ/k32ImUWkerezN7JMmJWAb2KFwRPSqYtwlSilitJAq6XL6ErJD7M3MIXF0W2zyABeF56YykPDQFLXKFc1ksBRuD5vnMavuOBcmcYXFX0IgM0AY4abvZFNLIe4g==
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:128::5) by
 SY6P282MB3830.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:1d1::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8048.17; Thu, 10 Oct 2024 04:41:43 +0000
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e670:790:62a6:5c1a]) by SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e670:790:62a6:5c1a%5]) with mapi id 15.20.8069.001; Thu, 10 Oct 2024
 04:41:43 +0000
From: Douglas Kosovic <doug@uq.edu.au>
To: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
Subject: RE: Canon LBP series network printers (CAPS)
Thread-Topic: Canon LBP series network printers (CAPS)
Thread-Index: AQHbGl533HqziMtJKUqmQaW8cbV/fbJ/YDiQgAAGvmA=
Date: Thu, 10 Oct 2024 04:41:43 +0000
Message-ID:
 <SYBP282MB26177EF7C9D4E6969B0A2FAD87782@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
References: <992686da-6f09-4c3c-8f87-0a65934abaf0@Julf.com>
 <SYBP282MB26177EB2FF1D9F66A53B14BA87782@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
In-Reply-To:
 <SYBP282MB26177EB2FF1D9F66A53B14BA87782@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
Accept-Language: en-AU, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_37382bf1-026c-423b-a2f3-9729d1fde3ca_ActionId=4237258f-6706-42e1-a5e0-7ae46901c4f2;MSIP_Label_37382bf1-026c-423b-a2f3-9729d1fde3ca_ContentBits=0;MSIP_Label_37382bf1-026c-423b-a2f3-9729d1fde3ca_Enabled=true;MSIP_Label_37382bf1-026c-423b-a2f3-9729d1fde3ca_Method=Privileged;MSIP_Label_37382bf1-026c-423b-a2f3-9729d1fde3ca_Name=OFFICIAL
 -
 PUBLIC;MSIP_Label_37382bf1-026c-423b-a2f3-9729d1fde3ca_SetDate=2024-10-10T04:12:19Z;MSIP_Label_37382bf1-026c-423b-a2f3-9729d1fde3ca_SiteId=b6e377cf-9db3-46cb-91a2-fad9605bb15c;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uq.edu.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYBP282MB2617:EE_|SY6P282MB3830:EE_
x-ms-office365-filtering-correlation-id: b69ea98f-14ad-416b-f62b-08dce8e5d713
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?eEdKaE41ZGFySXd0UEkxNENZUmkyN1p2YXkyeFZHSnJhdUJVams3V09rYjZP?=
 =?utf-8?B?Qy9PMFBlczVEK3NzdmpyMTlMQ0w4clYyNHNEZXlETXpHd0Z2ZVdKNU1qVzk0?=
 =?utf-8?B?b0pEaWgxckZyeWp4WEV1cGl5UkpRK2dyZHR6ZFl0TXFrWWdPQ3R6alVoaVZq?=
 =?utf-8?B?aG1NS1lZV2ltcTJxR0lqYWR5OXROR0FEWXVDak9SVlpPUndFQ2xFRUs1SGcx?=
 =?utf-8?B?bGVKU2N4QTB1Y2xySDJFV1NURjZRUlh0M2RlbXkwU1ZKRWlpRDFjTmRGR21x?=
 =?utf-8?B?eUZlYVI1ZW96VzZRSHVibFdHMUg2RWdRNllFQXRWZ0FhYWIzd2FhRXhFMzBF?=
 =?utf-8?B?a2Z2NGcvaGswVGFYTmdNNjZ0cE1vL3h5dzJjTDlGNW43aTVCcFNONlEyRjJG?=
 =?utf-8?B?Tk9XanVRbXRKU0p2aVRWWVdISUNZWTVNSGVrOStWM29qMjNOK0gzQlhlUkZt?=
 =?utf-8?B?VE1ZdnhhL01GNExwRzZYMGhoSHVTRlZrMUsvdms4TVlid0I2ejVDbld5aldG?=
 =?utf-8?B?bVdJRzdvSFpPWGEzRXdxcjJ6eDIvRHNkT2xzMEErWTNCUlBvN0RJaU56cVRJ?=
 =?utf-8?B?T1FWNThNdkxRSmVhSEVFNUJQbGdBMk5xcm5lUldJTlVxYmVuRjN3QktBYzJZ?=
 =?utf-8?B?cEdTd2ozNkt0MVk0TXNvTHBJUFBLY0gxazFBdE9MUUtjVzVnK01QaUh2MmpB?=
 =?utf-8?B?T3Nxcy9nS2VtZHE1VFN1SDRGdzFyNlBNUFJMTjRQYitYd0JnSkJ0eGZZN1Rw?=
 =?utf-8?B?ZG5CWkRpSjArZWtJM3h0Sm9TYW1QU2s2WmFRUE91VjRrNzlNaElRWktaQzZt?=
 =?utf-8?B?bE9ldzdxWWhTRWRNYUJudEY4RmZTQ0p3bDJuMnFhRjZLQm4xL2owSVpkSm9G?=
 =?utf-8?B?M1kzajU2YWI5YmhwSVpSamdZVU9JMzM2S2t4WGNrMExpTTVOUlZKeW8zK2Jn?=
 =?utf-8?B?MWZOUEJoN3V4UEdINCtXVXRERWd3SjEyemxYb3pSNXNERjFlZ1I0STNaUWY4?=
 =?utf-8?B?V2FBY3BUME0xbUV4QkJyMUVCZk9sSG9jMGVuOEV6a3YyZDhZL3BUL0laMXpD?=
 =?utf-8?B?SnkySHFmRndEMkJFMmd0NUFLTjZybnJPQXlRYTYzUDgwMW1aVGhpcHNiaUxt?=
 =?utf-8?B?RkJNeW41U1RGZjNxNXBNWWMyTzdFZEg0N09ZMEZ4alM4NFFHTzRNV05sbWUx?=
 =?utf-8?B?VDBtWGJzZW9SMTNGeXczVkFmbnAvY1ZRV2FycFgwNm53WWRtV0FxYlp1cXkx?=
 =?utf-8?B?bE5qSFl1aldubUROTEdHV1p0NkhWRVhzeGs4OUtlaHhIM29KeXJzRTFZd0FX?=
 =?utf-8?B?YzhzRW1qZ2wyOWg1bnBiL3dXYVY1UnE2Wk5Wemt4QlBuU1JlVkVJUlhWT1pU?=
 =?utf-8?B?VXB5Z21TRFJlczBKTXNZTi9PUWcxaUdwWWdIRnczRFBaUWQ3R3FYcERUSDI2?=
 =?utf-8?B?SkMwY1JxazcxZDl5a0lvdHVLQ2RHMk0vSEJlSHBTa3BMVi92bFRrL2N4YjdY?=
 =?utf-8?B?bmhhZnhUOUtpTEN5MUNvOFdMb01IK1ZSall1VUYvc25qMFdpaWFpbldoMHln?=
 =?utf-8?B?QW4wZjNPbHlTeHo4T0RyUTBTd3hLcGtKWmZGY2hQVE96ZlFGbUxqYnU4Wi9h?=
 =?utf-8?B?eHNMaTVzbFRxSE9QQXAwczFwazNZYmlKd2hOVmVTNkRXMURDKzZGRmdTdTBT?=
 =?utf-8?B?NHdCamhXKzE2V29FODB3bHBQUFMwY2RjTnhEUlkvRENOay9xOCs0KzBJZzJF?=
 =?utf-8?B?N1FYTTJrbVV3dnJoMGVvK0M1ZW5DMmRTWXdaK0ZGUGdqMFJ4M0Uva1lFMHZh?=
 =?utf-8?Q?s5qOH9HZuJYOEdzt9TaL7gtbynEVvGznv0KW8=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?S2xQaFA5c004V1J4WWcwbWFuNHdXSWMxcmEvYitZbFkwL3I4UUp1MTdBUWZI?=
 =?utf-8?B?dVl0Q0pValpYU1RtS0hkOXVqY1pnYkRJeThDYUdjcGZ5dHpQVXNrbEZudXI5?=
 =?utf-8?B?c0FrK3JNQngwcVlyejFjZXlLeERnYjdkbjJlK3VYVCtOOFBiQXVJMmpjcDFx?=
 =?utf-8?B?Ym5FUGFUaTZMd1NBK3BQVk9SeWNWcDJIY0s0RjBSNmYrUWh6M3lQZmtGQ0kr?=
 =?utf-8?B?TWhTSGZ1NEM0L3l4dTBlOWdMNTYybnN2N3FCUlI3ZmNCaW96TkFSbXJFc1Rn?=
 =?utf-8?B?K21xUE96YmFuTnBqRWhqdENJa2xKamVpMVY2c0czRHlXbTdpTnQzMlBsdWxa?=
 =?utf-8?B?S0p2dEFMa0lBN0x1Z21QNWRPa0Rxb0daYlZHeVdoM2o1aTNjdjROajgvRkRl?=
 =?utf-8?B?MFp4RllsRWZqY2dWQjA5WVNiREw0b1hkemJuazhpdUlBRG1hTkw2UXBqTUht?=
 =?utf-8?B?Mm56R242SURCYUJmdHVyc3E0V20zVEd5SENNWEZGZzhZemZ1RUZZMEZVWGFr?=
 =?utf-8?B?VjlHRnZtcnRnWGFLdkIrZG0zMUVtWFFPWXhEVVRUa2hLNmxBVXNTS0Y4SG1X?=
 =?utf-8?B?dzc3MVpEODg2T0VlNzNMYWdwSlNyNzEraUVINlEzOVFQRGhFNzJjRG93aEZL?=
 =?utf-8?B?ZDJaQXJDWExPUWFvVG5YeVVaUmI5MnJPcGtPbVFBUnl1UHdLWi8rWjdIMGVE?=
 =?utf-8?B?Z1ZwZlhlYkN1UnA3N1pTZ0JmUHMwcC9tckxVbkVmUkhLTHd2UHIyekcxaDdI?=
 =?utf-8?B?MzlTMUpyZDRLZ1JxUXZ2T3JXUEQ5ZHJ2cXpzNCt2ci9nbStKaC9PUmt5MmxN?=
 =?utf-8?B?V3dlVm5ob04xbCt6cGtwc0Vxd0hXTnEwKzB4VDZoUW41UEh5MndRbDRyTmtY?=
 =?utf-8?B?dThLb21uVFFIeHBreTBnazVBa2lPWE9UaHdvaFprSFAxaWVsYTh2L2xQeW4z?=
 =?utf-8?B?c3lOOVQ4b3FPZ3Qwbis5KytkOVZXa1FlQ0VMM2w4eWlRWXVUUmt3MEg5dDcx?=
 =?utf-8?B?QWxiZUw0S1NxNkh5aXpWWEg4Vmk4T2owUDBwRmswMFd2RjZJVzV3YVJTdVo0?=
 =?utf-8?B?aHdHdWdvUS9FaUQzYjl0eGM2a2pZaS9aVUdWNkFaS2x6dDlTeGtzdjB5MFlK?=
 =?utf-8?B?VGpSaDJRRVB0QlVjbURReHUzVG12Zzlxclh5c3R6ZksyQXAyRmtxOXVXMTFS?=
 =?utf-8?B?N0FMcTU2Ni9wUVRvbnJPS2poZEFvbWRRcGIzckxrU0FCMGZjekw5M25iZ05Z?=
 =?utf-8?B?blVXcVlhNmNjYXM0OFpnNVd6clJoZmdidmgxeEZZbUFvZlIrZklnRENoZ2dJ?=
 =?utf-8?B?MVpqMWg4ZTNWVitHUTJJNFNvTG5xdTFTYXVVd2JsMVpaVEVZS3NvdHNGWEU0?=
 =?utf-8?B?L2lHUXdvalNGWVJuWlUwRkR0bkxPekM5Smw1OUE5dG1BR256SXhFNCtXMDBv?=
 =?utf-8?B?aEYwQzBJVVBidlRPUTdJazBITllHYVdpZDQxUW9Tb2NPWE1NaTh4eGVJVmtt?=
 =?utf-8?B?b0tDSzNrWFZSMzFaaUV5THBBR2JqcitTK3UrVm40OGN1M2ZISFVPTTN3bi9S?=
 =?utf-8?B?TFR1a3diYzBIUkQ2Y2pXc3NHOC9PekR1KzUzNDNrR1pLZjg4bStTbVg5Rlp6?=
 =?utf-8?B?TEtLUFRuZFBxbitmamNzaVd4UmRmdjVnckY0MEVXOVlzeVJGM2hCUlFubmJT?=
 =?utf-8?B?Q0R0OUFtOEJ0TTh5WlpmRFd0RjFDS3BTa05MRkFNdWw5RjRGNHZDMjR3RW5V?=
 =?utf-8?B?cFNHQnNEOVZoUVh1TlBwS2g2WmVIbGdhd3Y0TnpSVENmcVNQdkhWek9EWWFN?=
 =?utf-8?B?dHBqa0w1ZFNON3dLUk9Oc0tGS0VnTDlSV1UrOFlEbnV3cXI3WlllWDhyZmtt?=
 =?utf-8?B?THd2TnBaL3NneUtPREJucHpER2lhSUQ0VFpDOWFBcE15Ykhza3Eyb25IWmVk?=
 =?utf-8?B?NUtWMUpoTjRES2x1ckxxWFo0V2FYdUFseUFwalRxTlI3RHNMQVl3cGtqb2pH?=
 =?utf-8?B?TXlRdkFjOVltRGVCZE1jRVcwY2xtWlkwZ0dnVmkrcnhQMk1EYkJQa1ZCdFdN?=
 =?utf-8?B?MkFubVhRQWNRUkx4TXorWTEzNG9nakRnWjhZUTZPWnFNYVJCMC82Y1piMzdw?=
 =?utf-8?Q?JvZk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: printing-users@lists.linux.dev
List-Id: <printing-users.lists.linux.dev>
List-Subscribe: <mailto:printing-users+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-users+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	mIRPhgn/o4eiI4Kp6wHDM/MiGAM1EyWBhvm3P0XYNRxqckPxTmayaVixG/L5IhkC1xRg1x3krjo+AYyhkTd4trEruN3vxWJ9JFuP2Ob6Vx0A+LJLWK82lvc5HLmziATXE05MAv/rTdbo5AvC7One9fPvowgt+vBVJMSGGmRtFSunco10Ix9EbUzQJCGdEIX3ne0vEPyPl+qV016wkW622zHYKhpSzQ6HMS+LP6VfKafWVx+FFVRTQL3MJAuRNauQ45Xx/ocW/J4vDLHV8EhUuvHYvGZyoGyhmnC2YZFjn7HHjznWud5Z1Ec0InDGWpePoABAh14vSpRT+C/PRrOAtOiOaPtVNDY8bVXx7JfJ8oZanPwfb38MkZ08tGP/K5XTq1Ql+Xjyqtqtz7OtFxrVcKd4G0dAXs/nA/xExZh9iZc98n3jD+JyLQTX+JCbJwj6bIn27HP/z3NLo5ncFzgKLrHwyUo4FogJtH/pQQT567ynkKLUXw9dZP0gU0VREfKI8/Ju+2xT3wjmLiPC2zuG1rfKpcPVMSf7Blvr2c8hRk9sjLmQlHClhnVS8XEpkRgSRJoiv+h+UbjqVkv+xQWZqVYJMOOW5aBur1ywPVRgi4Qldn/SVrlvb5RFW1q5EiZS
X-OriginatorOrg: uq.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b69ea98f-14ad-416b-f62b-08dce8e5d713
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 04:41:43.3186
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b6e377cf-9db3-46cb-91a2-fad9605bb15c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ihu2YbUSsKVDXkK0GWpKY0W5do02zUuTE+YEb/XT1ZR3GTj5jQAUMzmzQX0ymjAbi0JyLs+C2BcYjbY78Px5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY6P282MB3830

SGkgSnVsZiwNCg0KPiBUaGVyZSBoYXZlIGJlZW4gc2V2ZXJhbCBhdHRlbXB0cyB0byBnZXQgdGhl
IG9yaWdpbmFsIENhbm9uIENBUFQNCj4gZHJpdmVyIGZvciBMaW51eCB3b3JraW5nIHdpdGggbW9k
ZXJuIExpbnV4IGRpc3Ryb3Mgd2l0aCBsaXR0bGUgc3VjY2VzcywNCiA+IHRoZSBmb2xsb3dpbmcg
ZGVzY3JpYmVzIGhvdyB5b3UgY2FuIHJ1biB0aGUgb2xkIENBUFQgZHJpdmVycyBpbiBhDQo+IExp
bnV4IGNvbnRhaW5lciAoTFhDKSBhcyBhIHdvcmthcm91bmQgOg0KICBodHRwczovL2dpdGh1Yi5j
b20vbmVyay9jYW5vbi1jYXB0LWluc3RhbGxhdGlvbg0KPiANCj4gVGhlIG9wZW5zb3VyY2UgQ2Fw
dGRyaXZlciBsb29rcyBwcm9taXNpbmc6DQo+ICBodHRwczovL2dpdGh1Yi5jb20vbW91bmFpYmFu
L2NhcHRkcml2ZXIvd2lraQ0KPiANCj4gQnV0IHN0aWxsIG5lZWRzIGEgYml0IG9mIHdvcmsgZm9y
IGNvbG9yIHByaW50ZXJzIGxpa2UgTEJQNzIwMENkbiwgTEJQNzIxMENkbiBldGMgdG8gYmUgc3Vw
cG9ydGVkOg0KPiAgIGh0dHBzOi8vZ2l0aHViLmNvbS9tb3VuYWliYW4vY2FwdGRyaXZlci9pc3N1
ZXMvMTANCg0KQWN0dWFsbHkgYXMgdGhlIGZvbGxvd2luZyB3b3JrcyBvbiBVYnVudHUgMjQuMDQs
IGl0J2xsIHByb2JhYmx5IHdvcmsgZm9yIHlvdSBvbiBEZXZ1YW4gRGFlZGFsdXMgOg0KICBodHRw
czovL2dpdGh1Yi5jb20vaGllcGxwdmlwL3VidW50dV9jYW5vbl9wcmludGVyDQoNCkJ1dCBhcyBk
ZXNjcmliZWQgaW4gdGhlIGZvbGxvd2luZyBpc3N1ZSwgdGhlIGNhbm9uX2xicF9zZXR1cC5zaCBz
Y3JpcHQgbmVlZHMgdG8gYmUgbW9kaWZpZWQgYnkgcmVwbGFjaW5nICJsaWJwYW5nbzEuMC4wOmkz
ODYiIHdpdGggICdsaWJwYW5nby0xLjAuMDppMzg2Ig0KIDoNCmh0dHBzOi8vZ2l0aHViLmNvbS9o
aWVwbHB2aXAvdWJ1bnR1X2Nhbm9uX3ByaW50ZXIvaXNzdWVzLzI0DQoNCg0KDQpDaGVlcnMsDQpE
b3VnDQo=
