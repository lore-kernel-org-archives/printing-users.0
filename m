Received: from esa.hc86-32.ap.iphmx.com (esa.hc86-32.ap.iphmx.com [139.138.31.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34442E0B5B
	for <printing-users@lists.linux.dev>; Tue,  9 Dec 2025 22:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.138.31.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765318760; cv=fail; b=f7dVuCQ6M+Jg1uO72+vGSarlewEiMeP6M1GB7aufpltJ4LuvJgxutOR4XwnPKHJUy9T4xsM9dVopw2EpEzPi4Nde20edL4pFSTVqn8SlTAN15f3bGEOt8dQdKzhE7BvgtaBo6/O2JaYPm8ib8Bjliu2qfC62WfepJ7HaZKYqmAY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765318760; c=relaxed/simple;
	bh=6AlIqDlIHvBn9JZCNUQ301OP2nRHwNM+CqaOvTZY5Cg=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=qW5runV9dfs4Y+5qAIc1XZpf69V7r3if9+BFAbooFhFXcScOE1bAMp8q38iqfdEc28HBj6zToOj9kAvZNaIbaSNp9jQDkuUFEw8yWKIb+JkX2nbZ3v88Zvb3yWUYJ1VLu1jiuvwnAJNAnhp63yuHUJWPq9Qi2p7N2ZrXzRQn7yo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=uq.edu.au; spf=pass smtp.mailfrom=uq.edu.au; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=niEfwiFz; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=RF26rjx0; arc=fail smtp.client-ip=139.138.31.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=uq.edu.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uq.edu.au
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="niEfwiFz";
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="RF26rjx0"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=uq.edu.au; s=s1ces; t=1765318756;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=6AlIqDlIHvBn9JZCNUQ301OP2nRHwNM+CqaOvTZY5Cg=;
  b=niEfwiFzQgWNfvNA81qQ2UbTLY6zz28c3LX6nUiYSubRE5/v+0wGG8/1
   ayuDy3CK+Tx1TER83D6A2E75CfYmYMuYHoTIkQ1CWn3N/F+rpkpqoZf48
   JLImJLfAQE/6ZjwbHc+8cGG/7NS/a/++IBNK6G1KaTx41jeXMq571xh6I
   7SLqs0CclD9ReuR5QW8HI88KM6vsTb4lPU1qYPOEQQYIJDRQSJEK0ZrEy
   jufD9A63I0FGX967rxpyf7X6bs5/E66Lln1FouCLReAD8ir4pGg3ysZ8W
   BWZ7BikHQmjTvCRyH2Ze/jPspvA6YvC9Guyj57fo8BgP9Ax6C9cW9kYy2
   w==;
X-CSE-ConnectionGUID: Snvavla2RNGfVh2oE/Nedg==
X-CSE-MsgGUID: wwPA8SIiTleFmATCwXO2pA==
Received: from mail-australiasoutheastazon11020128.outbound.protection.outlook.com (HELO MEUPR01CU001.outbound.protection.outlook.com) ([52.101.152.128])
  by ob1.hc86-32.ap.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 10 Dec 2025 08:18:04 +1000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NYV49sQtS8RtpDPlSsf0KEMmVDXeznciRloboBLHeaBZXkrvXzItDpuPSGHPLxk6Zbf1ZO/TJM6GKaS7EVcosUqmmnI8OdN3PhAatXMW6koAUD8Q7OMqqSC2ds0TvVNL2p07UziLYj/OK6DyACgnSJk+B+SCA08v0BUKHQw5tTuymuil2bHNjn1eEPiDrvTy0+SoMU/JuIQ7Aq4PazPKPqp7jPJWDFKR3g9Qdnz6fz4Xt4PvPutaWgcKxjpNhxDbyuDl5TccSx48c2y2wyXHR7yAYG70eTt2y33mblmipCYMo8iLDEErwVyWAxNFCpPYELS01apOXR+m2M04lqpGTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6AlIqDlIHvBn9JZCNUQ301OP2nRHwNM+CqaOvTZY5Cg=;
 b=qGnkmzbUxq++/iMKfmL69rQEm4jptcZdhUtdlI4oRUGQW5df/p2ft7ryA6iP12IB0Zap0ynz+ShG1gxWQ7h8N5JYOcMJKhS+L9d+RmoIgf0x8srBXy70V+psi8dZJINjqYRgYsNdeUEWTlNCmNslFxN3TG6xL0rU99AzpnU2rOB9HbsbQ2/r8m1+S/YDk9wouQFFDlTet3xDUrlM6HGLGuui5xZ3Qc76S5hYbgS5L6Ept5rUjzSkQRsgzlyxrlkBQQh0KCLRlWppATLlLA61Hg2Oip6PjFI3iq3PVLz+rd6p/NNxNDgrzQ8Fr2tMpKRF7o3spMkWl/v1yvP61r2Asw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uq.edu.au; dmarc=pass action=none header.from=uq.edu.au;
 dkim=pass header.d=uq.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uq.edu.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6AlIqDlIHvBn9JZCNUQ301OP2nRHwNM+CqaOvTZY5Cg=;
 b=RF26rjx0FLZArOBxnF9xaJp1dfYHkRRLPlNXwA35PTTbiBzTi+dExhAl/z+svwVNcQg4scuWoirwrYFSoJ9j+d6Rk3lVW/dWdCabJ6U2fSSv6Rrc04umo/lkcFXJ9tKNZeV0k21oCGBBM/7sWRvkNFy3390DhycFbDMBPkpQV2QQKKyil7fnz9G9JcDrzehbmWK+szLvSobnZIH7uFIe+LNSNEKXIliCG11XmUkvyyGpNW4F7Du8ma62PFayZBxFMqOWDTWTSAZIDOit7eAbG+iuciUkydZX0nvc6esyx9F4SVOJqygafrZN1P8Dli49HcE+0Y0NL19rPKcj4QYzgQ==
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:128::5) by
 SY9P282MB5958.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:308::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.7; Tue, 9 Dec 2025 22:18:02 +0000
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e670:790:62a6:5c1a]) by SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e670:790:62a6:5c1a%6]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 22:18:01 +0000
From: Douglas Kosovic <doug@uq.edu.au>
To: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
Subject: RE: Canon ImageClass MF4770n not listed on Canon OpenPrinting list
Thread-Topic: Canon ImageClass MF4770n not listed on Canon OpenPrinting list
Thread-Index: AQHcaK5J1k6WLM+5MEu7XAG2ezjmirUZFtKAgACs0YCAABpPgA==
Date: Tue, 9 Dec 2025 22:18:01 +0000
Message-ID:
 <SYBP282MB261792DF52EF1D53E55721CA87A3A@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
References: <983f9dd9392ab3edb0130c8b90af33a6@disroot.org>
 <5af2f7fb-00a3-44b4-a2a0-b1dab47e2de8@vordruckleitverlag.de>
 <975e91b5-d77f-48e4-a31c-8fa7f8ca6bb8@disroot.org>
In-Reply-To: <975e91b5-d77f-48e4-a31c-8fa7f8ca6bb8@disroot.org>
Accept-Language: en-AU, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_ActionId=504cbd61-24a5-4f85-ba1c-eacd959ef940;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_ContentBits=0;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Enabled=true;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Method=Standard;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Name=OFFICIAL
 -
 INTERNAL;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_SetDate=2025-12-09T22:03:30Z;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_SiteId=b6e377cf-9db3-46cb-91a2-fad9605bb15c;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uq.edu.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYBP282MB2617:EE_|SY9P282MB5958:EE_
x-ms-office365-filtering-correlation-id: 904535b1-28db-4bea-24c4-08de3770d138
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|19092799006|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?YkorY0pNakdTZzlzaWRRZGVsTi9YcXduMy9KRnZLbi9uMGhPaWxQbVc2QlpX?=
 =?utf-8?B?TzRZcFk0NVR4eitBSm03MGcrenB1UWtYUmgzamphcm5yVjJqaldFajZlcE43?=
 =?utf-8?B?QnhGcTVMeHNjRUg1UDFxR3IxcHJOaEJIcUVBT2FlSnJ0bGcwL0lYZVBQbit1?=
 =?utf-8?B?Wkd2aHVmR3cvWERIVTRxdmxxVXFyVng0OTI1a2pDZEUyQ29LU0dJSUtFdTNO?=
 =?utf-8?B?cXJyMHdibGViQjNSOU1VOVJaYjg1anFidklqNmk0eGI4akVpSkhGdUUvUHhu?=
 =?utf-8?B?ai9NcHZGSUFDODd4V2dCUUJudHc5NitiSElTTE9TUSt5aEdNMWdPWDM1NTZS?=
 =?utf-8?B?ZzdZbHZwem9UMVd3SUVtZWYvQXBzWVBvZHhzcjlLK0ZwUHlzMjVWSG5uSFJk?=
 =?utf-8?B?UEQzMWVWUi9tcmFRU2d1SkpSdzdYRWxRdHBPMFhidGRIQlUvdlpEVzlDSjhO?=
 =?utf-8?B?Rjc0UmI1UTFEZHFUMlQ3MEVkZ1dpTHdnM3h4bzExOXJNVGkweHhZVjdnR1ZS?=
 =?utf-8?B?WGlKYWcrU2ZXa1VJTmhJNDF6RlBzbVh6Yk5xODZXQmpJZUw5QkdmMW1xUVQz?=
 =?utf-8?B?cVA4bGU5Q0ZXSU11OEl6QnY2YlhkTWpxVWZWSDh0VStUN0czZTg5V2JNUkQr?=
 =?utf-8?B?T3BYNTBQSm9SL1k4S1hlQkZ1Wk9RSWhtdHZWKzNoa0N1VHJqdk16b1dKaGwr?=
 =?utf-8?B?d1k4b0tOV1dLUXhBbnRJQTFPb1RLQmRXRC9pUnplK2dja2h1MUhaazJVaXQw?=
 =?utf-8?B?ZEZ3M3Y1bHpRMFlLbUpJMTlab3laZmVmTmN2M2dueGEwdlZVbmQvdkZKM1Bp?=
 =?utf-8?B?UGx0U2w3anJ6TE1Qb0Z4YUo3V1lqeWxmaHl4OG8raTEzOVZLZWFDZ25CVzRr?=
 =?utf-8?B?bWxjckF6YmV4ekxmaXNpeEt5TVdka1I0alFxU0I0dEVMY1d3ZkVZWXo4bHUy?=
 =?utf-8?B?dXFNbFJQM25jRHFXN2Jrcm96b3RZOW5qSzJkN0V6TzNpelk2YzRrMFhTd29t?=
 =?utf-8?B?Z2dpajdDVFlHVU9uR25vZjZVV0cyUE1VWjFSODVsQVU0T3ZTSEdXOFd1L0Zi?=
 =?utf-8?B?UzU4QjlqZzY4akpWNUFxRUZMYW0yN3RvRFR2YjFtTElaeWFlYjkrNGEvVStO?=
 =?utf-8?B?aXpkRG9RNkZBTGFVcTJXaEJIdnc0UmgwYTdpYWF5ZmV3NDlzNGpIYkFHazRM?=
 =?utf-8?B?aGVzajlmY1Z2VndiSmRCRU1uZGpvT3lld0w2SVlROFRSSmMwMGhRVllJdk1X?=
 =?utf-8?B?R3VjWU1qYUg3SWxZYzdXaVhiOGt3cStJaWZLWlhBWnlSa1NrN0loR1FoS085?=
 =?utf-8?B?RERPcTYwRFlYSGo5SXA0UElWRkV0VVBtbUE4cm8xMWF6YUZuR1plb1E2eTVU?=
 =?utf-8?B?YWNWSlRJbkdNajJXSG9vWXhrZmhINk55bFd2K05aWEE5bUpQN2dBMk5sb1No?=
 =?utf-8?B?Y0lwcUNRRS9tSDR2VVdkc2pHWUVtbUlGMWFFV0c1a2Ivd2E4TnpUbGo2NHN3?=
 =?utf-8?B?K05Ha2Yzc080NkFvRzJGU24yRmpYMGlibkFKbHdrT3E2VUN5WUlmY1pTS0dw?=
 =?utf-8?B?QW1VVUgxS3pFNjhiUFc3bWlBWVQ5VFR3SDhuNndOVUMyUWhTUDNrc3JDcGRq?=
 =?utf-8?B?N1dqakdrdDZBdDlNc0FqR0xWRUxmRTF3dENQQnIxTXdaNmVpM3NmN2ROTld5?=
 =?utf-8?B?THpsT1dKKzdwK25qVml6c0dnNGx0aC8zcHJOdHNKQ1NhenA0Zm44enUyOGE4?=
 =?utf-8?B?OGVPYnYxOXFYY3BkZE85Y2pjaUhCYkIrei9VUmFub05tb0Y5eEpUTlVxTXh0?=
 =?utf-8?B?cmNhN3NjNVRBY2NSeENFZWJ4UXIwbmkweVBQT2xNMituZEExeXZ4dEZIYVJQ?=
 =?utf-8?B?UlRGL25hOU5td1RTcUJnS1hhVjVWZFBGTEFoemVMMXVlVGh3NFR6T1lTTFRK?=
 =?utf-8?B?L002bURDbjlHSEZKeGJSNXd2KytVdU5wdXVZd0E5Mjhzb3d0T2JqN2xoMC9T?=
 =?utf-8?B?bUExeWlZRzlVYW1HUWV0bFIxZFBrQWZRZWFrOUZ4bndva3Z2WERsSmxHdmF2?=
 =?utf-8?Q?RWyib9?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(376014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?aFE4UUxGcXlqTzAvV1JpVkpaK1VwaUh6Wk9ndThTandJY1pLV0dnR1JxRFN0?=
 =?utf-8?B?TWtNOUZVMFlYV3JsazVPOSs2M3JlVG5Ec0pyVHowY2taNUhZUExsY3RHS3Z0?=
 =?utf-8?B?MjZuNnBZNExnV0tpblBHU3RMWVUrYkZOSlVCOHdkTzRkZm5mZzJJcXBGRXpj?=
 =?utf-8?B?TXBqdTBSZG1WRG80cG5QWEdLdjJOelNaeS93MEtFODNFMlVRbnZ6QTRRQllu?=
 =?utf-8?B?RUhLOVM4STJKVy9WWVIxQXl2cWdQUE10enhBSmRBcWFqWUJxY2twQmRhQlBB?=
 =?utf-8?B?Nnlud2FpRE54SzFSK0drSjNDRnVxVGt3cWJDSStkaFUwZ0FuMlZsNVF2WkVY?=
 =?utf-8?B?MlZUREFaUXoxNzBJVTVrbTgxZHlKRk55clZYNkNReEVGMklFNldMb1E1NEdR?=
 =?utf-8?B?ZXR4cGczd2VFd1IxaHJhUTZOaWNRU042VEh2ZDZiZy9pQU5zem00NVJ3OVVk?=
 =?utf-8?B?Y0lRd1lDTHdabjNSWUdFd3lrYVlhZUxQSTVkL1Q3UlJrSnZRbmliQTBkRHpr?=
 =?utf-8?B?bDlWTTB6eWR5OWdJcVRpSFdUYUZzRUU1V1FZb1B1d2pEWlVCeC9ITWl4WmtD?=
 =?utf-8?B?Vms3WVdkbk8zSkMwc3ZJVmVCakVpRktRVkRuTEdCTlUydnVOMUJwRktWMUVR?=
 =?utf-8?B?OU16WDRDTFZjWGhSeGJnbHJDMDFzMGoyNk43ZzR0Z3d4TjlaaTVjYWk3RlJV?=
 =?utf-8?B?Z2hidm5td1lYSmdwQWVHNTBwS3I3Wm9HQ2FPaE5ZbWhRdkdjTWJpVHRDRmNI?=
 =?utf-8?B?OVkxV2FSREcyQXM5aGZQTGR3VXBDSzFHUlRVYXlVSHU0ZEgzMllJdHM3MWdN?=
 =?utf-8?B?L2NWNDQ0MDVCQmhUMTljZWgxTllnQjZxSVJTTzFZbHRQeHVlMGJqU2NxZnVq?=
 =?utf-8?B?dmx5R3kvVWV6MjVDQ2oyUEFCTGR4a013RG8rWUZTdXhSaTZWb0NpRzBtWVEy?=
 =?utf-8?B?bzU2bEpTcnNpaWMyUGxxa2ZUZklPcFhPTEVDN3Q5U1Y3V1g4VmFtbjA0dEtD?=
 =?utf-8?B?V0s3b0g5aGxGWG5panBvQjJRSFdGZFVjOVQ5TlRrdUp6TkI5TzF5RkQ1MjFi?=
 =?utf-8?B?V1RZSDFxNUFDRUVpVUJWeTlKMy93ZzhpeHYvVW9NbktNV0JvbzdYcW53Y1cz?=
 =?utf-8?B?Ky9iV3hHWVZhcDZoQnZQVm1xS3EvclBTRjlUc0U4OEpCYjdML1RmbXl2bWlz?=
 =?utf-8?B?dW51Wkoxak85L0gzeFl2ajM1OCtwcm1sazZQL2g0SS9ORXppRVNQL3FuMDNG?=
 =?utf-8?B?WU45NjdkMVRrTWpqVEcxMng3ZmpoYXdXTnFaaU1lRis2QnNiRGswMW1zWTd6?=
 =?utf-8?B?NkJWSyt3ZENVWU1qRXBkbnNUdW1JN3FJU0FwaHlMeHdCYm5pdVR4Ukp2MlpP?=
 =?utf-8?B?TUp4UDQ4UUsvdmdNKzZ5dkJmY0cwRzlYMktCVEpUVDZ2ZUd2TnFMZ1VES0ND?=
 =?utf-8?B?YThtVU0rSDk2SXo3UWpuMEVua29vVzVZMW50T1gvSS9LRXAwbFd6RE9wdkdp?=
 =?utf-8?B?VXRuUkdtdFRJYjF3Z2loam5rOHhuamJTaUJtNkxjSUYrY2doemUreks2TFBU?=
 =?utf-8?B?NDRwclJtUWZWVVQvNVlRMjU1VTJ3M2Z0K1BzbTVpYnpOUVlJMzUrQU1xZ0xC?=
 =?utf-8?B?UENSRUJTdm13TGlEaTN0eFB4b0JhVEJWMkVCeTl1d0Q1bVhCekJ1U0QvK3BY?=
 =?utf-8?B?cDJHdW9aZlp2RENaVk9oMlA4dTBvVUZIK0dkOTl1ZDRnUHZLWDMyTGNDci9k?=
 =?utf-8?B?cW1Rd2R1dms5SDRlaStnZXlWeW8xcWI5VTMreURVaG9SWVVhQ1ZDMWdiZU1w?=
 =?utf-8?B?NHVYYnZYUVZsd3ZaSTRWZDNYdmIwWVNJY3ZocURZa2R5S2Y3RWJad3V6T3I5?=
 =?utf-8?B?Rm85M1BydFhHaDBWcENsSTFjazNYMCtGT0l1d0M1NlRBelhuK291OGtneVkx?=
 =?utf-8?B?b2hLOEhXaVh6ckxrVUJSMmt5Uzc3SHQ2cGpvWE1KUDcyZlNEUTVYalBLT2pR?=
 =?utf-8?B?U2syMS9LZjZkeURwdU85UXdLaHljTTJUVmM1UndDbjJBWVpZUFgvKzk1U1hj?=
 =?utf-8?B?KzBYVms3ay9CanhLZjN3S3NTNXlYVE83T2l0azhFZEliMzNVc1JZdEVtVnVI?=
 =?utf-8?Q?+MNDoIKIvsfd7HRaV+BMqbhRQ?=
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
	9+/KiXHvRMMV9lWMWEY4R/EcnBy6fI2lMweTrxnhtQZaolXeqqDL9xabN4QjdIYXrN/QWb8PMbhZ5oEoXBV+p8g/vhGxRF8wIA4A4k5ciyVdUN+PTTHFc0SzCwwS319FBZzyJsN0+XP1A84KG3AIpIn1aC23YxsHI5q2KuGS/Nyb5ZEow3Ij90Lt/V6U2or6UX6ZGV7tIAlKDcLeq6pz5RZvEV2KtY8XU5xobVPkS+d3a7zUlBErjs6cGRm/cLEy37vzMsPQ82VOWS6hJRafVid8Dz11DwVD+t8rj1PLZtRUyR2wvEG4p3OxrKPNAMrOkZNqB3jbcV/sXjpDrLwD5ezudBsMxpMABBAqSiydPxCETsKi7TiUbDuak6ZWVS1sNgvHuRiudVCmr5Oh7TioKcWVmXZWz5X+7mnNDXMiDla/h4+xzMyGR4D5PGPY1nWChuvOtR6hFuzc4JESOsvak80L/DN6V1Nw7qoeHhDchF2iaa8QSAj1iBruMRtCD2EkY8NrEVLCahjg4G51YZWUh2gtAYlyqbAPMF+8oFhrtQYqkif0na6UcYInJAuXBeSuv9Nxi3x1UXYJ4Ueog2xKXFPbFivpMGGeSExL9vIMQTvrcsEEK+NxtC42dSv/80K7
X-OriginatorOrg: uq.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 904535b1-28db-4bea-24c4-08de3770d138
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 22:18:01.8730
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b6e377cf-9db3-46cb-91a2-fad9605bb15c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iZ2h5T8EgqgSQLropIdBFIVso4OZvqrIztQDmh85yyFnxJedvkoNM2V9B6JSveNnB8wIQcfj1hH9S37MYktVIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY9P282MB5958

SGkgSmFjb2IsDQoNCj4gVGhlIGxpY2Vuc2UgeW91IGxpbmtlZCBbNl0gaXMgbm9uZnJlZSwgYnV0
IHRoZSBub25mcmVlIHBhcnQgb25seSBhcHBsaWVzIA0KPiB0byB0aGUgU2NoZWR1bGUgMSBpdGVt
cy4gcHN0b3VmcjJjcGNhIGlzIGxpc3RlZCB1bmRlciBTY2hlZHVsZSAyLCB3aGljaCANCj4gaXMg
Y292ZXJlZCBieSBHUEwtMi4wLW9ubHkgaW5zdGVhZC4gSSBiZWxpZXZlIHBzdG91ZnIyY3BjYSBp
cyB0aGUgDQo+IHByb2dyYW0gd2hpY2ggY29udmVydHMgZnJvbSBQb3N0U2NyaXB0IHRvIFVGUiBJ
SS4gVGhvdWdoLCBtYXliZSBpdCBkb2VzIA0KPiBkZXBlbmQgb24gc29tZXRoaW5nIGZyb20gU2No
ZWR1bGUgMS4NCg0KUmVnYXJkaW5nIHRoZSBQb3N0U2NyaXB0IHRvIFVGUiBJSSBmaWx0ZXIuDQoN
Ck15IGZhY3VsdHkgdXNlZCB0byBoYXZlIG1vcmUgdGhhbiAzMCBDYW5vbiBJbWFnZVJ1bm5lciBh
bmQgSW1hZ2VSdW5uZXIgQWR2YW5jZSBNRlBzIG9mIHZhcmlvdXMgbW9kZWxzLg0KDQpXZSBjb21w
bGFpbmVkIHRvIENhbm9uIGFib3V0IHRoZSBwb29yIHBlcmZvcm1hbmNlIG9mIHRoZSBVRlJJSSBk
cml2ZXJzIG9uIG1hY09TIGFuZCBMaW51eCAod2hpY2ggZG9lc24ndCBzZWVtIHRvIGhhbmRsZSBm
b250cyBjb3JyZWN0bHkgaW4gdGhhdCBpdCB2ZWN0b3JpemVzIGV2ZXJ5IHNpbmdsZSBjaGFyYWN0
ZXIgaW4gYSBQb3N0U2NyaXB0IGRvY3VtZW50IGFuZCBlbmRzIHVwIHNwZW5kaW5nIGFuIGV0ZXJu
aXR5IHJhc3Rlcml6aW5nIG9uIHRoZSBwcmludGVyKSwgY29uc2VxdWVudGx5IHdlIHdlcmUgYWJs
ZSB0byBnZXQgdGhlIFBvc3RTY3JpcHQgdXBncmFkZSBraXRzIGNoZWFwbHkgZm9yIG91ciBDYW5v
biBwcmludGVyIGZsZWV0LiBJIGNhbid0IHJlbWVtYmVyIGlmIGl0IHdhcyBhIGNsb25lIFBvc3RT
Y3JpcHQgb3IgZ2VudWluZSBBZG9iZSBQb3N0U2NyaXB0IHVwZ3JhZGUga2l0LCBidXQgc3VzcGVj
dCB0aGUgdXBncmFkZSBvcHRpb24gaXNuJ3QgYXZhaWxhYmxlIGZvciBDYW5vbiBJbWFnZUNsYXNz
IHByaW50ZXJzLiANCg0KDQoNCkNoZWVycywNCkRvdWcNCg==
