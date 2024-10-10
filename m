Received: from esa.hc86-32.ap.iphmx.com (esa.hc86-32.ap.iphmx.com [139.138.31.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6524D2AEFC
	for <printing-users@lists.linux.dev>; Thu, 10 Oct 2024 04:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.138.31.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728533633; cv=fail; b=Ars8VZbbCHmzHNGO7jwzRTsUu8/hQB9mkC55EwIglhWvbSt/r2mIMbOby/o0KzQuhUt79jxXQ4kFxT047ByGw/htV4/RgHBrxh4zemPP+nins79470cFAvenrUHApN5yGFlnJ1hZ66Ez4NrYiLwK18guUHkyEq+7tF4+qODmuOs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728533633; c=relaxed/simple;
	bh=mHqU8TPKmI8pYBqLRjoYfQ5Awq6lQPbVuCneBHWYWDk=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=daDSCLWYokLfX8lgR4KH7Ec8AlkywCeMq7ILX6osBCP2mC4Rh/xImSwJeBDBJTPALYXTcwNkIoh/wuUcWmVYAIduhfvxdG77ViCZ8YoRnU1cYs02b+TBAkZavn8Xml5RvGJv8p7B22DNOlJm7Cv43u37JkK9FELV0USsaVCutb4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uq.edu.au; spf=pass smtp.mailfrom=uq.edu.au; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=ZiTHQimm; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=A2RudkHo; arc=fail smtp.client-ip=139.138.31.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uq.edu.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uq.edu.au
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="ZiTHQimm";
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="A2RudkHo"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=uq.edu.au; s=s1ces; t=1728533629;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=mHqU8TPKmI8pYBqLRjoYfQ5Awq6lQPbVuCneBHWYWDk=;
  b=ZiTHQimm1DBVIasbAeobfhCYO7OBbBB7lMJLVnv86ey8i33CLWlhAVTF
   rWQaED1GXGj2szOhU8tpc3PySOQSgZ5BqzKCPeBBhPu85GcN6fYZDvkoY
   uNwYmPcyspSO3Nke3zsgyrJXDvq90D29PYVawh5DTPBdEadgIQyRS1DKs
   GuvqaIbbS7aNn/L6daCTnK2lB9O9tcz4nRnBLZxkdLO+Gd2Gke5U5wJIT
   OUlc7tJcFQBs5d+g4UCbJllb3GZsin/0xj1bqKvjSVWSU5z+rIJT9xME0
   Gz0YT4q80Lc/X230eM619/nRWTIvDXwmNxPGwI6cBmN+tKJwbdULVEuV1
   g==;
X-CSE-ConnectionGUID: zOpmpwAVTBmrZvTtclmKbg==
X-CSE-MsgGUID: fEEdno1QQ2eW7PgHLAIQRg==
Received: from mail-sy4aus01lp2173.outbound.protection.outlook.com (HELO AUS01-SY4-obe.outbound.protection.outlook.com) ([104.47.71.173])
  by ob1.hc86-32.ap.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 10 Oct 2024 14:12:37 +1000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jeLAwSuFQOUpAY/CKhIKo8ZUClp7p044TR27kWWJt8rR4GWzVwgrMc4WQm1YLhRlB670Ei4AFSH8nOb8wgm9hynkGQtHtt8Bs8WYhtpxeyr5IIzUVHlIxELQEabFcnQ0RjeyQVFlCJJxo0neJjLVAyUP97xpaz77IxAVnn8l1Rtsvqab1wNpdW5UAgD2zXd5iF2oI97Aoxes6Uirg1DW5uWzXYfe6RJU+BniAlGp8IDRcVTfJZhdpvmHBJIqSIPuBBJeMPfwN9eI8y/39MG4qchSvWyw5Jc1sdv0xIMqqrJwhnc/XBE8wU8VYmaf2iOKS6PwwRFktXdq0NQasa11dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mHqU8TPKmI8pYBqLRjoYfQ5Awq6lQPbVuCneBHWYWDk=;
 b=wOAK7Faxf7aRwufRT78g65sq5qvewrNNnmMGwJ1aQkLoZ4KvPU8m/XHsXGaP7SPiScGwBge9A257XkqfG8c+9CQ4bayb1m0i/0V0RqM5UkmTSau7mynSccXEZVWHgCDL0lELZEVPa6XQdcqh0YAsNqukjAOfzKITnT0A2dllWjrTP80L6DnEdYM9RfQRFgr4BFAj9TOfTx1axm1Z2izPhH/B37mg7asCkacNI61NeuGjxpI8ee3a2VaKDg0tVYwIXuZWiOdA2tw7dnl1bqat9zG5gMZlJoc1Ol4YJzhondxjagjWHFtcMBv26FRiGxg3+E1QL7tH6lHsfcRVJCjQ6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uq.edu.au; dmarc=pass action=none header.from=uq.edu.au;
 dkim=pass header.d=uq.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uq.edu.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mHqU8TPKmI8pYBqLRjoYfQ5Awq6lQPbVuCneBHWYWDk=;
 b=A2RudkHobpTmZ+svwlMYHpTvF9WoN2CKVQWcBr1MRFW8CrY0b2ENL+hVfgWpqveYiKpUVYFBbKCBCCm5+h81WsDLCQJHkn5l7zdKY2U24DZXX2aLFRb3YVDTIJbb1hOxMSfOloBx+HiwPrmA78J93t12md23tKhPHqg4pP38eg7q03kOvHbuoPlxjSr9aXHUvZ4xf9zk2hGQodHV9oytMNJ7uKcBst1gjpqGPUBHGx3m7mXE1vIvrrGAT08eZhcLO8cj2WIXtr2p8dA5/gLGHugXSLdYynFizIeI7dKzawYfU4Lh6QKrnHJ1mwyOKXaNDH1nzb4PdaO/Y6LwpsLk9w==
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:128::5) by
 SY5P282MB4555.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:26c::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.6; Thu, 10 Oct 2024 04:12:36 +0000
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e670:790:62a6:5c1a]) by SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::e670:790:62a6:5c1a%5]) with mapi id 15.20.8069.001; Thu, 10 Oct 2024
 04:12:36 +0000
From: Douglas Kosovic <doug@uq.edu.au>
To: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
Subject: RE: Canon LBP series network printers (CAPS)
Thread-Topic: Canon LBP series network printers (CAPS)
Thread-Index: AQHbGl533HqziMtJKUqmQaW8cbV/fbJ/YDiQ
Date: Thu, 10 Oct 2024 04:12:36 +0000
Message-ID:
 <SYBP282MB26177EB2FF1D9F66A53B14BA87782@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
References: <992686da-6f09-4c3c-8f87-0a65934abaf0@Julf.com>
In-Reply-To: <992686da-6f09-4c3c-8f87-0a65934abaf0@Julf.com>
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
x-ms-traffictypediagnostic: SYBP282MB2617:EE_|SY5P282MB4555:EE_
x-ms-office365-filtering-correlation-id: b9f7334f-76d7-4a23-d00d-08dce8e1c5cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?dVBRWFR0SUYyYlQzeUVKR3FHcGtJQ3dvR0l6eTlURXhDbE0ralFTM1BWb29Y?=
 =?utf-8?B?V1lRbnphcTVwRXY3L0phNXBFK1pRVFFGSFV6ZFZEc2dnOGdnc2xCVDl6YVlU?=
 =?utf-8?B?bnVielM1YWhVTmdwSkw0dURzN3BhVFltSDRRam5QRXFhczI3NUlYWWM4aTRi?=
 =?utf-8?B?UWhvcnBadFdiODZwUFlDUzhkcVVTNFBWU2d3NXBXWGc5MksxNFE3c0liaXhG?=
 =?utf-8?B?V2NOaU5iV2hYSmRMZnlSMWJidytJUlVuVzJqMzZvYVI0bGlkQzRKbVI1Mzg1?=
 =?utf-8?B?QWZEbXd1N29TNFh5ZnkxZ0M1OUVWODNuNDBkOXlrQk5GQ3NWV3pvUEIzSk5G?=
 =?utf-8?B?M0dYc3lOaG1FdEY4bW4xN0dqQkhmcDJNc21BU2JjeUZBR2J5NWI5OWhTNy9n?=
 =?utf-8?B?c2NFYzZKMWgxQ1MxaUVPaFJiaVFFS1Vsa3JNMDlVZVpqZy9OTUpzR1lmRGNl?=
 =?utf-8?B?R1hTYjVZTEVjT00rZlo0d0dKVmgvbE5BbU1EUmFJaW1OdHB3Rk9WMHRjaHN6?=
 =?utf-8?B?U3crK2dCNHRNR2t1bGxuUFNSRWQySHdXVDNOc0NaVExEL24xOVZ5cUVTaHdD?=
 =?utf-8?B?cWdXMFhsVGFWcUpMVkVCMWJkZlpxRVZKWk5wWTRYanhFTFB1azQxV2pxTUJY?=
 =?utf-8?B?QTNKNGRlTWdHUDQ5bnEyYjJSNUE4dGxpenlKOWJsRWNQcThxUmZOSzZHNWNv?=
 =?utf-8?B?UkFEUzBwRk9wdzNLOW55OTVnWm1lNUZFN0JPYm9PZU5abHc4WG5wMmVTRzFC?=
 =?utf-8?B?OTk2VENPMi9paFFacHJUb1hKMFNLWFNTK3R4aTRnNHhwbjNFOTFwZWxyc0M4?=
 =?utf-8?B?aHRud2lTY0huTVk1dHRqbnhHUDRDTFd4ZVBjYiszMXBqMWo0aG9RVnk4ak55?=
 =?utf-8?B?ZXMrb0cwWjROY05zdnpaREQ1RWtpaEdrL0UrZW5RV1pNYW5XVzVWOW9lODJP?=
 =?utf-8?B?ZUQ3dTltUXV5N2s5OFVHUGV6VVR5M3JockVUMGVpRkpjY3BqSkVTcDBRSnlk?=
 =?utf-8?B?L3FtOSthWTEyekkyUDVXWFVveVVtMHQwc3dLcWxCOEdWZDVsaWRRRzdMTVVW?=
 =?utf-8?B?VTJ3cWlnRmlvS0xIcEFsS3RYQTlqYzNkWjFuTnRtUkI4NWE3djVlYnpRNFBL?=
 =?utf-8?B?ZDNPYVp5Q3hTTDNVakxsR3p4bkJLeTJLK1pRWkFRSmxuQmxZWThscEM0WGlC?=
 =?utf-8?B?aGdrdzdZTFFxa3JkRXNnWnpTV0NFOXFEaDRVcVVBdG5yTmFpaGN6cjhGMGJJ?=
 =?utf-8?B?bDZhblV5Qm1qekZNa0hmTUhzeXlqdE1XUEhqVzFHODY4d1FoNXI3SEdJRzI5?=
 =?utf-8?B?eTdYemgxZkxwbTF1UnJuWUFFcmp0UTU5eDdKbmN4UUpQMWw5U09uQjdTbGdG?=
 =?utf-8?B?QVJkMUVtZFpmMzQyQmpRQTd6ZzJjTWJtcTQ0Y2tuTVl0SVhhR0NqMnljL1hR?=
 =?utf-8?B?c3RKQWlJdzdrZFQzMklzcmhzeGdNODMrZFQzN3V6NklvRk5HU3NFOXhYQVVP?=
 =?utf-8?B?Zldncyt4eDY5ODBaMUxBcjlGUFA1T1pxVngzMzA3L2hnOHh0Z3dLZmMxaDdW?=
 =?utf-8?B?dUlNaWw3VzZwYVg4M25VTmdsSmZyNXRFanE1ek1yVWlnWEt2WnNyRXJjY2Rt?=
 =?utf-8?B?S05UbVJ3RytZZkM2dXhWTmw1RnArRnB6Q25MTk1nTGF5aUZEclEzY0Y1Y0c5?=
 =?utf-8?B?VmtnRFk0SjRsaEhlZURTN1Bqb25aYW9OVnJ5eGt0NW93NEpsMlF2NFBWNVZJ?=
 =?utf-8?B?MEhLc2J6N3ZrUHVMSkF3ZWhLb3FiYlUrUlFXMm93aDVkNGgycWoxOFhkOSth?=
 =?utf-8?Q?KWcmE6GzICKemfyckP4CWnEIIoGACJoiQHdoQ=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?Mkg2bWltdmRrZlUvUFhEbHk3Nmp5cSs4L2wvT3p0OHdZZjFtaHIwME5mVzE5?=
 =?utf-8?B?aEhKcWdMcFRUQ3NvZGdrUXk2c2FiakMzRENoajQ3c2J5MXNMZjRBKzJiL21D?=
 =?utf-8?B?UDQzdE5FUE5XU1pyTW1RVi9jT3pEaXdDS1FyM2V2VXQxOWltVE1PTHVYZ09K?=
 =?utf-8?B?Y0N0SWcxZkdpckJWSEM5d04vUjN0NG5MNzF0c2p0VnpWc0FHS3VJRmx0MTZC?=
 =?utf-8?B?aStGODM0R1RNSlZCS1BPR2MzS1o1TXdZc3EwM3JXemVKMUdmWERyT3BJZndS?=
 =?utf-8?B?dVVDZlBCQUEvazJ3eEdKWTVSak9ualQwZks0QzBzMU9kWDRJN3Y2c0Fnb3Vr?=
 =?utf-8?B?ZFB2VUthSElZejFOSFRKYlZ2V2p2NjA1RHJSUEM1TzdCeVVMRnVNRmpmRnFW?=
 =?utf-8?B?RUJySnJOaHF4eUpaU2dqbGVCQzIrcCtWbStqaWZwSHVtazkrZEZLZEF6NGEr?=
 =?utf-8?B?Qnp1QmszREN2RUxUbHJCSncvcXdjR25CSzRTcXVLVUt4RzlGQWs0UFR0MDB3?=
 =?utf-8?B?VFFpcExUdnlCay9KbTUxak5FRndqR2grOUU3Y1YybmpPME1QS3BaOFQyYU94?=
 =?utf-8?B?ckhlMGRkbnQrK1Ewc3FqN1pQSDFoVDgyWXk0c3A4WHZJU1NhdzBMejdJa01t?=
 =?utf-8?B?UmIrY2haYTlxMm1yYmlnT3BiYXhJMUhjazAva2xYWGJUaWdPZ1lzRDhrNFdP?=
 =?utf-8?B?cGxYYzRSaHdTaGU2MmI3cVpZeHUxTldiUmQ2UmZhd0crcUdUVUxaeFd2cE9Z?=
 =?utf-8?B?ekttRVFwVmZ1YVN1QW4zTTlwREgrdllWL0htQVA1Y200R2Z1TTIydjVVRCtS?=
 =?utf-8?B?N3lwOXI4Qk9GcEw0VnpxK1pXNmJWTTlPK3pyWVU5U2dBcW0rUWdrSllVTmxS?=
 =?utf-8?B?a0kwaXoxVnlGNVJYSzJFSVdFNGUxU2JiQkpVVjhSakxsTTVpME4xdzJUaklI?=
 =?utf-8?B?Z1Bpb1JTdFZBZmlVMlZVVkZPVllMQzl0YTVyNDF5dUljdmMvZ0JkVDdFMWsv?=
 =?utf-8?B?cUgxRFU0NStlL0JpV2xvRjgzRWVLd0ozQ0xvbk5zaXowK3RWY2ZIcFFHWkNx?=
 =?utf-8?B?djZuY1gvWkg3VXFwUFozMnIyOEd3aUZJQ3FOWlIvQ3lLaDM0bURjWHo5V1Zu?=
 =?utf-8?B?dCt4ZjVjbzRVWTZMT2sxZnR0Z0UyODR0V1MrTjA3U3YxUTUycm5WRk1sbVRq?=
 =?utf-8?B?YXdYSGlXYjl2d2pMWXdrYUtIMUIzWUMvREJSdUVNNW1ZbmxBbVhoZ3V6RGs4?=
 =?utf-8?B?bSs1cTU1NWlTVWZudVV2ZUZBWFptWnV4SFVEYnRhKzZ0eEI5bG5qQVBSWFc1?=
 =?utf-8?B?NGVaeUQyU01TTDNrcDAzWHlGZWJLV3p1dlltckxvWUh4SmF6RjdxM0pvK21K?=
 =?utf-8?B?NEcyMmxmbVF4ekMvenJocUhUYk1TQlArbVBEcXlVRHQrbXltbktDa0hHcUk3?=
 =?utf-8?B?akt0WUZNcTNpclFUUFYxTk90d0FwT1g4MUNOYWFjNVFqUTFhRzNUTUxmWmdi?=
 =?utf-8?B?L0lXbnFsK3N1blliM2tTY3JXNnBqTExobVdLa1VXVFFTVzRiNk1zL0Y0empz?=
 =?utf-8?B?UVJWS094aTFMbHNUYUNtY2hheklXLzgzK3hNOXdFaHVkTkVZYTlZMVdWR3B4?=
 =?utf-8?B?N2NvSXBQd1BBZ3dKOGFmdENCT3pGOWRVMUwzRWErdE9uYmZzcVJwakYxOGl1?=
 =?utf-8?B?TGhwa055ZkZMSGpNN0JGdkJCa1NvY0Z6bExFZi8rVnVqZmlkdStPZHpHMzlT?=
 =?utf-8?B?ZnJVRWNId0UyM01YZ0tHTWN4bzN4NzV3Qk1KTzg1NXYwZlVBZWJiOVJvQTM0?=
 =?utf-8?B?UkxpQnpsazExWlVXM0h5UWFmOGgvNU54N2huODZuNmdGSU1WaWxGTmpqVk5v?=
 =?utf-8?B?a014MXYxMlZjK2JhNVJOUys4b3ZoRVFFdlYwMHdzY2ovb283VnV5TFRWMC9w?=
 =?utf-8?B?eGFyaHdhMU51VUF3d3dpZW0vQzdjcUpibW0yOWY5TFd3SUc1K2RWbEVoYjhS?=
 =?utf-8?B?OFYxTUdBSExMeUUzem4zZVplbTV5Nk5IdU5hM2VKN1N1OHJTbE5FZlV2MDlv?=
 =?utf-8?B?VzNqZE9hUEp3cDkzc0hNd1BjelNKeG12dFJJZnlGR3c4OGpVcFVXb2dzd2pH?=
 =?utf-8?Q?HWkM=3D?=
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
	Y+ULb730A7pNMB0ccjMCh0bCylREkmity3JZtvQj+i9uCAEAhLHdg66stadn7trEJxfThNKEz/9iS7brMGskb3kLnB6JezjWkfnTnplc3JnkEI9vlijNGaJJZHWam4x3hDW414DHsA05xCoy0FXO/MGKFlqJoGH9fldNpebYM7GeWg4NwFKnLwfpOhv1+arZc5NBwJZfvB4kzq96fEMWitOtjW77Ne19Mwwbjo0dqC6Rk1oZSnTugoXh8Pj0Cz+4VsChcEeeiKUXplEOSy4yBtjTGSnKayLnPAoqOOV1vYfdoKpNDXIF0ADxPApfpimodeBMs2N0lroqOEZrpqnnvhZaTrlys4i9sNyhdcumKxt/ZT37/QEhhtbhCblPvjhjT8mss+Fwe9imGSfRoC7JZNnF8WUhS5lHGI1+bHlc8QfI66YtRCKTWkIjVBIzkqSNqzLt+Ph9opNLaDHpHFUBCWbEhthKO8VJZ4uRFtOwKM6xxIFjKIFpU8m1Zvefg3JcokMbrVOmmwRIrMVVl/oqaLVPv1YRo0rCAk2dKX28nVQ+AuR845bBdB1AnlcjWd14V98NOOs+Iq8qNTb8XuoylpDKHfyA/AOvwz4/fR7bBUOFFEXYCrOvof5mHTbtdVO8
X-OriginatorOrg: uq.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b9f7334f-76d7-4a23-d00d-08dce8e1c5cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 04:12:36.3692
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b6e377cf-9db3-46cb-91a2-fad9605bb15c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h1eSO3fZfvGB+3gnEqOMiolpovPC4qa5ZFNIrxELJay84ZR+6VcBZkRx0N7Qlyna3thcm3VcPuJgFO/kJF10Xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY5P282MB4555

SGkgSnVsZiwNCg0KSSBzdXNwZWN0IENBUFMgaXMgYSB0eXBvIGFuZCB5b3UgbWVhbnQgQ0FQVCAo
Q2Fub24gQWR2YW5jZWQgUHJpbnRpbmcgVGVjaG5vbG9neSkuDQoNCk9uIDEwLzEwLzIwMjQgMTow
NyBhbSwgSm9oYW4gSGVsc2luZ2l1cyB3cm90ZToNCj4gSSBoYXZlIGEgQ2Fub24gTEJQNzIxMENk
biBuZXR3b3JrIGxhc2VyIHByaW50ZXIgdGhhdCB0YWxrcyBVU0IgYW5kIA0KPiBhcHBhcmVudGx5
IEFwcFNvY2tldCAvIEhQIEpldERpcmVjdCAoYXMgaXQgbGlzdGVucyB0byBwb3J0IDkxMDApLg0K
Pg0KPiBJIHNvbWVob3cgZ290IGl0IHRvIHdvcmsgd2l0aCBDVVBTIDItMyB5ZWFycyBhZ28sIGJ1
dCBvZiBjb3Vyc2UgSSANCj4gZGlkbid0IGRvY3VtZW50IHRoZSBtYWdpYyBpbmNhbnRhdGlvbnMg
SSB3ZW50IHRyb3VnaC4NCj4NCj4gTm93IEkgaGFkIHRvIHJlaW5zdGFsbCBteSBPUyAoZWl0aGVy
IG15IGtlcm5lbCBnb3QgY29ycnVwdGVkIG9yIEkgZ290IA0KPiBoaXQgYnkgdGhlIGN1cHMtYnJv
d3NlZCBleHBsb2l0IGFzIHN1ZGRlbmx5IHNoZWxsIHN0YXJ0dXAgdG9vayANCj4gZm9yZXZlciwg
YW5kIHBzIC8gdG9wIHN0b3BwZWQgd29ya2luZykuDQoNCkkgZG91YnQgaXQgd2FzIGN1cHMtYnJv
d3NlZCBleHBsb2l0IHJlbGF0ZWQsIGFzIGl0IHdvdWxkIHJlcXVpcmUgYSBiYWQgYWN0b3Igb24g
eW91ciBsb2NhbCBWTEFOIGRvaW5nIGEgRG9TIGF0dGFjayBvciBhZHZlcnRpc2luZyBhIG1hbGlj
aW91cyBwcmludCBxdWV1ZSB0aGF0IHlvdSBwcmludCB0by4NCg0KPiBBbnl3YXksIG5vIG1hdHRl
ciB3aGF0IEkgZG8gSSBjYW4ndCBnZXQgQ1VQUyB0byB3b3JrIHdpdGggdGhlIHByaW50ZXIuIA0K
PiBUcmllZCB0aGUgc3R1ZmYgZnJvbSB0aGUgQ2Fub24gd2Vic2l0ZSwgdHJpZWQgb3RoZXIgc3R1
ZmYsIGJvdGggDQo+IG5ldHdvcmsgYW5kIFVTQiwgYnV0IG5vIGNpZ2FyLg0KDQo+IE15IE9TIGlz
IExpbnV4IChEZXZ1YW4gRGFlZGFsdXMpLg0KPg0KPiBBbnkgaGludHMsIHBvaW50ZXJzIG9yIGFk
dmljZSBncmVhdGx5IGFwcHJlY2lhdGVkIQ0KDQpUaGVyZSBoYXZlIGJlZW4gc2V2ZXJhbCBhdHRl
bXB0cyB0byBnZXQgdGhlIG9yaWdpbmFsIENhbm9uIENBUFQgZHJpdmVyIGZvciBMaW51eCB3b3Jr
aW5nIHdpdGggbW9kZXJuIExpbnV4IGRpc3Ryb3Mgd2l0aCBsaXR0bGUgc3VjY2VzcywgdGhlIGZv
bGxvd2luZyBkZXNjcmliZXMgaG93IHlvdSBjYW4gcnVuIHRoZSBvbGQgQ0FQVCBkcml2ZXJzIGlu
IGEgTGludXggY29udGFpbmVyIChMWEMpIGFzIGEgd29ya2Fyb3VuZCA6DQogIGh0dHBzOi8vZ2l0
aHViLmNvbS9uZXJrL2Nhbm9uLWNhcHQtaW5zdGFsbGF0aW9uDQoNClRoZSBvcGVuc291cmNlIENh
cHRkcml2ZXIgbG9va3MgcHJvbWlzaW5nOg0KICBodHRwczovL2dpdGh1Yi5jb20vbW91bmFpYmFu
L2NhcHRkcml2ZXIvd2lraQ0KDQpCdXQgc3RpbGwgbmVlZHMgYSBiaXQgb2Ygd29yayBmb3IgY29s
b3IgcHJpbnRlcnMgbGlrZSBMQlA3MjAwQ2RuLCBMQlA3MjEwQ2RuIGV0YyB0byBiZSBzdXBwb3J0
ZWQ6DQogICBodHRwczovL2dpdGh1Yi5jb20vbW91bmFpYmFuL2NhcHRkcml2ZXIvaXNzdWVzLzEw
DQoNCg0KDQoNCkNoZWVycywNCkRvdWcNCg==
