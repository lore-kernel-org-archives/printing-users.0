Received: from esa.hc86-32.ap.iphmx.com (esa.hc86-32.ap.iphmx.com [139.138.31.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF1835FF41;
	Wed, 14 Jan 2026 07:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.138.31.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768376154; cv=fail; b=PE7cqXUIv6H6Es4aMgZSSnVI8tfMoT7SSiNR5MyCotrbeBfgQUQ4OTUgfyJhb4tWSVoXQa9oX3Tz21f1XuctgqmrBzrLVoL46Tuxe/fyiHly/8QBStaZPDF5DL/NixPGRh2SdI8IPPbcsoaCaXsKqIP97s7CyP9oLlYfopwgauw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768376154; c=relaxed/simple;
	bh=cKnqh3bfbCaU9NUCcKFrg2TrFTh+iOFx4izV9LQm5Ys=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=gTPkM2DiQib3kXm9MvYVK0uVSsYXfwwZ2QVJNHPiBksRYeBsjFaHVpdRHC7hIE/mnBP12VMMRAFxmYhLsCSDDBvfolz7xjH0OMrrrPupxh6k/0lR0vRMIqLtIB9jqV0Sr3PivlA8+LrTnxMovOSkChFuzw3aEMZWZqMu1cEFIww=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=uq.edu.au; spf=pass smtp.mailfrom=uq.edu.au; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=sTVwmgsA; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=VbK334Z0; arc=fail smtp.client-ip=139.138.31.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=uq.edu.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uq.edu.au
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="sTVwmgsA";
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="VbK334Z0"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=uq.edu.au; s=s1ces; t=1768376146;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=cKnqh3bfbCaU9NUCcKFrg2TrFTh+iOFx4izV9LQm5Ys=;
  b=sTVwmgsAmx68mmrgDuG80xBGhB/or1xhUbJiZdA0wzmkQE/ImUVT5qvb
   nDc87LmkoXVnl7/Myu+2PdW6oocm8rSEDlMof5ImpTtunS4AHC8nEEQli
   CKDWutSrhGzYK0x7WXDUy8cbr9FfvVp9xe4W1XK5KObYt1AZ3ELc+XXE9
   ixvP7zttGL9YwcTpeC1HgPqGigpJHEZ0mDExSVxj0h6fby14cO3C7f2aF
   B+QrCUTLWG+30E9h/tgwMQCVV3mCa+k1kCveNkInwIZqhQIHydPAL7THX
   AmesDjQdbCn2hTMmsZKScaD01K1BOGBky0e/ucs0utAiS+i0BOlyMSpVy
   g==;
X-CSE-ConnectionGUID: 01sxTRRtTkSgVVyG3HBO7A==
X-CSE-MsgGUID: QltNegO0QQ2VluFPTnEugQ==
Received: from mail-australiaeastazon11022089.outbound.protection.outlook.com (HELO SY5PR01CU010.outbound.protection.outlook.com) ([40.107.40.89])
  by ob1.hc86-32.ap.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Jan 2026 17:34:31 +1000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DoVL0OPjLzS7RHKAJGJyxM+6OZsB4NOt4135Ro5TRIkraB+FFal3ghIRAwWinE10yYhL9X5Hzlsf2B9nPopKZUDCIlBcttXay/9ytEdilP0u+WLaExroQyGh1nKBrVbK86drp4z6xP9WdaV/zlG0AGfoH3X65P6U8GE9fu+AOndAbhYvYl7u99k3A/jhHg9vkXN1MGFD8iQNwgt4+BsNUJHTVR8ZavKEL97tgHaFipRjhyI4mAbL4EN2PK7AVVoRH9AKEQMu0tuvywR1Tw0eFazqLn6DmuRPT8WyXlbGUxHcbq7O7YTEbP+YE0MtpoTmRo5O0jPhR1DJkyMlIFYfqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cKnqh3bfbCaU9NUCcKFrg2TrFTh+iOFx4izV9LQm5Ys=;
 b=wD59LVdDWcE0zTcSrAYeJD/LXn1APVF+fhtTIkuLod+lExFgyI9bSzUp+kWrYuf0FNbchfhqLAgy34c1tHHmxV1WmE33QOOwkUIsURjoamroZMwme9X61USYhB/ZvuH3/k0OstqyE274Vy3tQj0wDAlR7ct1RgCS2rNaLNdB27tTUTyDzNn6CDQC1CG5cn1H69np+E9G1vHTHiTbGtAqvKOj2+sWZQ2m6Lojpm46GZRB8df7BG4XrM5tNcb6z+6PtXMWDRbDqATPc/FOaiLJzhXlscQ9uY+w6MBinPrM6hyptM5ACQtKRnaFJ4CWmvCjJmsg84QJPgjCE/hgbjMjIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uq.edu.au; dmarc=pass action=none header.from=uq.edu.au;
 dkim=pass header.d=uq.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uq.edu.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cKnqh3bfbCaU9NUCcKFrg2TrFTh+iOFx4izV9LQm5Ys=;
 b=VbK334Z0WYwckY7STVi1VMAyKpvmhoOip0U9JDzY6af1A53UHc66Pgrdp8f8QqtR4jdBuq0Tn9314H9EsVm1c8i7TfglmAS1Y2H3czso6aLLuXRNcJFF0uidOq04baz8ziUjfM4xnGG0Jgz/QI9m9qlyRh1Lrn/6MLtrsvgfbr51RaGAZoEpxh8+kAW4K3uf1kcFh9AG/OTkWydea9nWqgxTb6Iogm+sQODhJx7k18ScqMg1NoGPDhtAL97jk3czdMc/SOwrTTxzhMqevArhIJaW7xIBEqQPMiqfkt5QjxnPDt5eP6ZY7aVulitTlaN8aO/D7qwv3eBt5NFNFDtuVQ==
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:128::5) by
 SY5P282MB4793.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:26b::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.5; Wed, 14 Jan 2026 07:34:30 +0000
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::c8af:e051:6ca6:d607]) by SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::c8af:e051:6ca6:d607%3]) with mapi id 15.20.9520.005; Wed, 14 Jan 2026
 07:34:30 +0000
From: Douglas Kosovic <doug@uq.edu.au>
To: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>,
	"printing-architecture@lists.linux.dev"
	<printing-architecture@lists.linux.dev>
Subject: RE: Inquiry Regarding RISC-V Architecture Support
Thread-Topic: Inquiry Regarding RISC-V Architecture Support
Thread-Index: AQHchFXTTRiMDVwJ+E+eJ+ZEwbI2wrVRQxow
Date: Wed, 14 Jan 2026 07:34:30 +0000
Message-ID:
 <SYBP282MB2617167D80E7DDE4EB2E2FBB878FA@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
References:
 <7c9337b79c412431401958354b131e22fbf4940c.f8c4ec63.d1dc.40e3.93fe.7ecf7c83f66f@feishu.cn>
In-Reply-To:
 <7c9337b79c412431401958354b131e22fbf4940c.f8c4ec63.d1dc.40e3.93fe.7ecf7c83f66f@feishu.cn>
Accept-Language: en-AU, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_ActionId=152ebd67-8dc5-4600-811c-41fc406e97c7;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_ContentBits=0;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Enabled=true;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Method=Standard;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Name=OFFICIAL
 -
 INTERNAL;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_SetDate=2026-01-14T07:17:48Z;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_SiteId=b6e377cf-9db3-46cb-91a2-fad9605bb15c;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uq.edu.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYBP282MB2617:EE_|SY5P282MB4793:EE_
x-ms-office365-filtering-correlation-id: fafc18cc-8e3a-49b1-079e-08de533f5ae9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|19092799006|376014|1800799024|786006|366016|38070700021|3613699012;
x-microsoft-antispam-message-info:
 =?utf-8?B?cXlyOGtqZDhxdHNoVXpHTG9tMXQ5TUN6YW9WNjFFRm1lK2dnTUFhUVJzV2Mr?=
 =?utf-8?B?aUR0V1BlMDI0SEVqMElGV1FxY1l6R2V5WDZsdkNFUHlIV29YUzB1UVBuMjlh?=
 =?utf-8?B?Wnduc25GTTN0c091L3BjazdQSzVaZllFOGxPbUVySUhPVkVkd2E0UFVrc1lt?=
 =?utf-8?B?V3VlUXluNlk5MTBXSjRXZExtblppS290T0Z5bVlrbS92RE5wam4rTXhDODdO?=
 =?utf-8?B?SWZEb2JNT1oxNFhrM0tac2o2YjdGSVI5NC9XMzVPcTVvRlc5L1lHcUNYWmpl?=
 =?utf-8?B?a1VNNkVQQ0tnNHkwRDkyNEVGRUlXQjB2WThFNzZ2RXdkVFNCWU9GTGUwUkI3?=
 =?utf-8?B?bjVsN1pIRS9mM1NrdXg3K2ljNHVERGJDUXlVSG1JL2tiVmJ0WVhWdFoydXl5?=
 =?utf-8?B?bGhvaUx3SktMYUVLSXRJWWdGejF3QldTeTBGcXBxOWI2Mld6Um13Z1R4cXdH?=
 =?utf-8?B?NmtCWlNQcjJrWDE5TDhyZUY4N29hNDV6YW1Da1Q3YnVMTEpvd05iTXN6cmlM?=
 =?utf-8?B?cG16cFdBTVpyVzQxelY3S0tndG5rdEFDN2JJbUhBMXJKZk5POE5TTnh0elh5?=
 =?utf-8?B?SVpLWktLQ1pDOENxOGFkaU14VXJRRThPTTYrM1o2TnBRdXRUdXRzejdnUHNp?=
 =?utf-8?B?Tm1DUkljeGJUVW9JbzNtaTNIbU5YMTRZNEdkWGgzTFpwWEI4eWJnSDRFRnR2?=
 =?utf-8?B?NjBwM0JJcnc3Y1crUHZoNzlwU0dQY3NydEwyMVBiZnRqdVEzc3dHdjMrbXRG?=
 =?utf-8?B?V21OTHFJSXZTMnFacE1sZHkrbG9WMCsxT2REVU5pREd2a3djbTdJOWtBcU51?=
 =?utf-8?B?cFpMYllrOFNtS0k5b3M0dGpzU21EQ0NoNC9aN251Y2k2MjdmV1hjNDhURnVL?=
 =?utf-8?B?c0FCU21nYnNxV3FhQmJmK095NzkzYVRTakZISCszMWh5MSttTWlSNEw0TmlR?=
 =?utf-8?B?VmRlV2g4UjBmTndIeVI5UzVYRGVMWEY2T0p6T05LUzdaYVo5TkpKNHBCdmdv?=
 =?utf-8?B?eEhyRGdDL3djSTk2K3R5aVdnQlNFWmkzVGZuSmo0OWJXMHUrSnU3cWpBeUZR?=
 =?utf-8?B?aE10OVl0Y2h0aGd2VlVlYm1BSU1lNlZROStzWFNiVXd3cngyMzdhZExPdVNx?=
 =?utf-8?B?RE5KVExaa2NsaGMva0NUVzFTbmFwUkVtRTNJTmZYYmdFYjZuQjA2aUtvblR4?=
 =?utf-8?B?SjZDWkRxaDFzRkIrY2JlVGdhMUNHKy9weHo4RmhGSjNib0NWYWhBYmQvMVNa?=
 =?utf-8?B?c0NLQm4reXYzcDg5T0M3aitvS21NZWcreDIzZFd1WDVHNVJoUk9YRzFSWTMv?=
 =?utf-8?B?R25LQmFMQkVsWSswYzV3VTJwZmNBa1BQdERPeFVrbG94QmlsZzFQUjQycHNa?=
 =?utf-8?B?UTdZVU0xcmZnVGI3Nnp6bE41T2dPTkVvSVFWRjI0Q3dtZWQ1R1U0Y3lXS1BS?=
 =?utf-8?B?Z1h4K2ppM3pRT3dGL3JqNmVKWU44MTZNOEx6RzZkUmFHNlpDQXRla2dHaFhG?=
 =?utf-8?B?TmRwOUtwaEZQMk91SW9oSWFaQjZVYWZlbWlqbkcyMEhNbkdMUzBWdHNESnZU?=
 =?utf-8?B?ZDZPVE1zMktUSW9JOThsT2RodDBzc0Y5Y0hLWGFHa3pDc0QrY3JOVUIzeG5I?=
 =?utf-8?B?WHY3SWduK1VpM2xYcktWNnVPdE95blpDRVpMWjA5WjBuTEdvbHFOUGpEY0Zo?=
 =?utf-8?B?M1ZwM3BzMUxjc2lzeklCSzlnMTRheEtMY2NHTkVxT002WGt5RU5kblY1WURG?=
 =?utf-8?B?QURUeFdFZHkwMFFBU2tTaldGNEtuaHg2bEdORUpDVlpzU2M1QUptRU9tdGlz?=
 =?utf-8?B?TVpHa2Z6WUk3bUoyUjVrSzUrSFlqcWQweUxMeGoxTm45T2FBOUpiQVNUalFx?=
 =?utf-8?B?Z044K0d1VkFjQjlUQ0F3VFFCYXhqWURKb1ZIeVNsWldXRU5YWVlqL1BYS3Uv?=
 =?utf-8?B?YkhJN0VuS2p6U3pXZFlsY1NhZTEvNldwd01rZHpzMXJRcW1oM2M3K1NNRWMr?=
 =?utf-8?Q?jufyuzVm3veusFmiydbdXrpnhP5LSE=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(376014)(1800799024)(786006)(366016)(38070700021)(3613699012);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?YUNBOGttc2tjOEphY0hnN1M1NFZyV0MySWxWcjQrY1ZGYnoyQWsvSVJDRGZU?=
 =?utf-8?B?VHFzNzN6T3dVMWpKY0hRR3pJTGNLYWNibDJYQkFRMkJFb1NNVkR2azU3Wm1M?=
 =?utf-8?B?dzkzcS9XUVZCcFdrcmtrbVRNQVpVcGZxM3RCbzNRamRQYUMvRDkyMTlMZk5H?=
 =?utf-8?B?d0ZQeXpZcHRaNzVXSDNoUE1nSTQ2cnptRjBoSHBpVlZ0L3R4bkJvMHJ4QSs1?=
 =?utf-8?B?NmViYTVoWFNSZzVOQlArWHlNOW5LbFBNWnY0cXBnNmJ2di85OW90QUJZWlpP?=
 =?utf-8?B?UHRkRGZScmE2cUFtMjVQQyt4bUJSV05NQ2R3WE9zbER4REpwRXFFNnU4Ui95?=
 =?utf-8?B?LzA5OVZpdzlVRlpDN09IKzdUc1NDdlA0aFVoVXBYS0lDSWFPYmJ5ci92M2Rq?=
 =?utf-8?B?UUFUeVdyNmdBanJkNGppZlBQWVg3ejB5UWFoSTlNblFZb1JKb0RKbm0wd3pE?=
 =?utf-8?B?VkZJbzZ0eWJpc2NsQXZpdUh1ZFJhYTFGUzlPU1loQkUvR1VrY2lteTVVdkpH?=
 =?utf-8?B?c1ZvTkgzbjFMK211ekVVQ1RXVVdsNjR2N09uUVFHKy9zY0NYV25uZ0dNZnhk?=
 =?utf-8?B?Y1AxS0hmc2ZHOUdrWVIwQkxEdFRIVHF4eWFXRTA2bUIxMVdSaDlsVnIxR21O?=
 =?utf-8?B?emhCc24zd200VERNeCtKdWM2bVJYZlQrYzF1WlFEQ3pwZ09IWE9RNEtsWlVt?=
 =?utf-8?B?VXN5UVFBTXBKQW5xTGh2eW11Qm10TDBhSG9zOXo1NXcwMWVPbHhnYW1WM1lh?=
 =?utf-8?B?bHJvbG0vcTdVNjl5V3FaYXlnbWFVR1JrTHd5UitDUFhWcEJzZ3JIQkhSNC8x?=
 =?utf-8?B?ektleFgyMVloRUZoOGFlMWFJSmtKUHUzb2dHYXE3MUg5ek1Xcm1RUHNldkZj?=
 =?utf-8?B?cEdWdHZ3OHZxcWVwSnloNGZzZU1wMXlkMkhpRlRTWUVKbCtPZGNEYmFQZmZw?=
 =?utf-8?B?R0xtSUVER0FVeVZ3M1Q4cUo1dlFuSnI5MUhWK0k3VUlVMWxLYndJNytmcThL?=
 =?utf-8?B?Ym1UMk1RYzdRb2ZoMzlCeW5acmNBYUxSOHI3Qmo2R2NOdk1ndlBuY2tGem9K?=
 =?utf-8?B?YnlOdFhPTElmUmxkQWx0U2l3blZoaFVVTXY0SWQxRXN3QTB5WWIweThKajZY?=
 =?utf-8?B?akwyeCtOeGlSRExzY1BNVkZnYTRiSy9UbzIySkNMR1NOZGVRZkhLZ3NCajZ3?=
 =?utf-8?B?TTUyT1JuQk1yamFPK3FYRVJveldMNGRiWHNucTZheWdXK05ZSHVLU2gwenIy?=
 =?utf-8?B?TE5RQnJzYzUxT3lCSktMejB3TngwZGJ2ZzBISmlpSHRXU1BrS1c5RFdFRWVM?=
 =?utf-8?B?WC9yZGxxbW1RdkZjKzRHNnkrTXhSWE1FTXNtdURMK3dsZTJheURBNDRhbVY1?=
 =?utf-8?B?UEt3aGI4VFZkTEVKajNnOGhHS0xlcFZPUFJuUzQ5ajU4TVZnbXZzTTRESENw?=
 =?utf-8?B?SWl5MkpKckxZNjhzVGxTN0t5UkNmcTM4V0xWWmFDSXZYUnpvYmk2VGcyUDJX?=
 =?utf-8?B?NkpIc0hlV1VLWnhZUXFyb2t2N2VoZ2QyVndsaWdxeHN5RDZqcFFOWkFaVlQ0?=
 =?utf-8?B?YmNRK3dsbnJWOE5qd3hCbFhOa1NxMU45VTBJYVdVQ2Jtck9ZU1J5QVJpdW1n?=
 =?utf-8?B?eGZuMzRXYTJGckwyNk9zUVRTRHAxL0RLSnM3OEhhd2svdEswcDlidGQ3bFJk?=
 =?utf-8?B?TFkxTDNXb0VZNzc5UnZQNGpmcDVRREpKdHlESjhlQTk0cS9SV0xZNmQ0cFNZ?=
 =?utf-8?B?MzZaYVBYK1VIRHlMK1B3R0JCUGJuQXlnSlAwUmZ0ampDNkFyT3hYUVRkYmZE?=
 =?utf-8?B?czhLMDZZanJDQnp0UUd5NnB3TGVJTURzNktsYWx6MnFocjVQV3NhRDFaRElx?=
 =?utf-8?B?YStyYlNFOUk5SUpxL2dsR2t6dGZHOWxNT0ZhbVFMd3hCZnI1T1FqMUovajhw?=
 =?utf-8?B?UjlkaFI1Q3BLUWk2clE2Q0kzalJ0emtGNmNnei9aa0wzU21odjhQd1lIeGVv?=
 =?utf-8?B?bUJoNnYzaTVLb2c5c3JSdEpOZmFEMWphQUVFNllGTExXUTRhVlN2QThOU2tG?=
 =?utf-8?B?djJCTVNZYlkzaUt4dy80c3F4S0tLV2RSQmZxc1FkaXFwV2N0MytMaHg1OVFr?=
 =?utf-8?B?VVhaWGtMb0FTVmhzTE44K1ByZ3UrOE5jdW81ZHhZdjBzSDB1VzRnWEFUTnZG?=
 =?utf-8?B?U2ZSWUhvK2orV3NmTEtwdzBPTDNwNUk2c2FRdzB2WXVKbStveHpIaDRuWmFH?=
 =?utf-8?B?bnltQkI5ZEg0TUJhbE1mR2FvZmhUWWZRWVZLdGEvblpVdnFTUVV0eGhGR0NL?=
 =?utf-8?Q?bOUuYDaqBoHorT01mt?=
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
	K0zYis7lVmJYwm2KwnzsYDeiy2W2UekboUh7AVOBpGlulvpvw+lulXmmtyyDGcO2qzXnJUGKcR0+p3X9LzZLJmc2OG61aA+d6X1mhbXUEIUWaLhnJNiqNtGRHlmdnOAxBrHz4D2leSn8WHyzYEGpDaRb1+tgtia1G49jH7h3eFqgloseA0qkZEsRgEQfaMmyDxNWzbO7ldzsM19x0kquHUR3nduzS6FTtRpdg77QZLcQKkqKDqE3Q1lcIYSo8q+WtNOQhc7i1Yi+mQMfTrHgDIlBL8vD5d5KwYB3SsAngzFAtj7+rz86h+G6nT2s2aTx9LvWdO/pEJjQvJzN46RD5hzX31cbEwj4dtJAfbE75nFgBCpI4YqisLp5Li8dZp6cEmV3EHRDJaONUx+qqEEnc4FYnEWQH5dbGF5HKZXFa7WImIwdgyHURssbdHTh5Dgc1nvNA04MG0ZFEzBEga3L1vj/sMlc4PGygzCAtKCWhflnsKfOblc635m7euga+iTjg516mutdd29N+escpGZqe8ODILjwgQl6djuVQczw1IrZK7VyjPZ5OEO2ciFYQbFVP6yeIAhWWoA1GSbuQy2ndDOZnHr5yn6DPnGhXrtUh1fJ9WJ/qJ46jR/DI4tjanRQ
X-OriginatorOrg: uq.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: fafc18cc-8e3a-49b1-079e-08de533f5ae9
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 07:34:30.5308
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b6e377cf-9db3-46cb-91a2-fad9605bb15c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OB5A91XRYZgDLKrx42L/FbxMA3b0u/mDWJFK1tqvBvqha+LHMzkuwUebvpr/5r6H1urUe38iBkJKKj3ren5fiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY5P282MB4793

SGkgWWFud2VpLA0KDQpPbiAxMy8wMS8yMDI2IDQ6MjggcG0sIFlhbndlaSBIdWFuZyB3cm90ZToN
Cj4gSSBob3BlIHRoaXMgZW1haWwgZmluZHMgeW91IHdlbGwuIFBsZWFzZSBhY2NlcHQgbXkgYXBv
bG9naWVzIGZvciBhbnkNCj4gaW5jb252ZW5pZW5jZS4gSSBhbSBhbiBlbnRodXNpYXN0IG9mIFJJ
U0MtViBhcmNoaXRlY3R1cmUgYW5kIG93bg0KPiBzZXZlcmFsIFJJU0MtViBkZXZpY2VzLiBJIGFt
IHdyaXRpbmcgdG8gaW5xdWlyZSB3aGV0aGVyIE9wZW5QcmludGluZw0KPiBzdXBwb3J0cyB0aGUg
UklTQy1WIGFyY2hpdGVjdHVyZS4NCj4NCj4gSWYgc3VwcG9ydCBpcyBhdmFpbGFibGUsIGNvdWxk
IHlvdSBraW5kbHkgcHJvdmlkZSBndWlkYW5jZSBvbiBob3cgdG8NCj4gaW5zdGFsbCBhbmQgcnVu
IHByaW50ZXIgZHJpdmVycyBvbiBteSBSSVNDLVYgZGV2aWNlcz8gQW55IGFzc2lzdGFuY2UNCj4g
eW91IGNvdWxkIG9mZmVyIHdvdWxkIGJlIGdyZWF0bHkgYXBwcmVjaWF0ZWQuDQoNClRoZXJlIGFy
ZSBtdWx0aXBsZSBMaW51eCBkaXN0cm9zIHRoYXQgaGF2ZSBhIFJJU0MtViB2ZXJzaW9uIGFuZCBz
aGlwIHdpdGggQ1VQUy4NCg0KSSB0aGluayB0aGUgbWFpbiBxdWVzdGlvbiBpcyBpZiB5b3VyIHBy
aW50ZXIgc3VwcG9ydHMgZHJpdmVybGVzcyBwcmludGluZz8gZS5nLiBzZWU6DQpodHRwczovL29w
ZW5wcmludGluZy5naXRodWIuaW8vZHJpdmVybGVzcy8wMS1zdGFuZGFyZHMtYW5kLXRoZWlyLXBk
bHMvDQoNCklmIHlvdXIgcHJpbnRlciBzdXBwb3J0cyBkcml2ZXJsZXNzIHByaW50aW5nLCB5b3Ug
d29uJ3QgbmVlZCB0byB3b3JyeSBhYm91dCBkcml2ZXJzLCBlc3BlY2lhbGx5IGlmIHRoZSBwcmlu
dGVyIG1hbnVmYWN0dXJlciBvbmx5IHByb3ZpZGVzIHByb3ByaWV0YXJ5IHg4NiBvciB4ODYtNjQg
YmluYXJpZXMuDQoNClRoZXJlIGFyZSBsb3RzIG9mIGRvY3Mgb3V0IHRoZXJlIG9uIGhvdyB0byBh
ZGQgZHJpdmVybGVzcyBwcmludGVycyB0byBDVVBTLCB0aGUgZm9sbG93aW5nIGZvciBleGFtcGxl
IGlzIHdoYXQgRGViaWFuIHByb3ZpZGVzOg0KaHR0cHM6Ly93aWtpLmRlYmlhbi5vcmcvQ1VQU0Ry
aXZlcmxlc3NQcmludGluZw0KDQoNCg0KQ2hlZXJzLA0KRG91Zw0KDQo=
