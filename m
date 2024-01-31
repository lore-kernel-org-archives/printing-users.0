Received: from esa.hc86-32.ap.iphmx.com (esa.hc86-32.ap.iphmx.com [139.138.29.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF887867A
	for <printing-users@lists.linux.dev>; Wed, 31 Jan 2024 11:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.138.29.120
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706701213; cv=fail; b=lS9f1rU9Ky2bram1+Z61w1/gsP/crTju8Qv6iXXOeKC5gnVyFXw2sIeKzQBxqs+VtztgM3lwrmlPKx4omYcoj4xLLGo+tLgrFE7CUkCL+iwTxinb4E+NfcxKhMvGrmJIEJ9FBeXr2e9YTmd/4vnJyt1DO5DFAmm5BnlrrrzhVEE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706701213; c=relaxed/simple;
	bh=UPpTn+Z1B7om8S87QhBFyO7I0wia4QR97kI+Kv1JRkg=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=nv+AHMTTCst/XEBxlMxkPnb6OwK7F5qxYqs0JYxl1gH3gGZkPBZ9i8g1NoY7v/TQ55POlVFG7TibH24lKLyLxvxwIKG4sypeE5xtp6JKcTdBSS/e4OwcIy+lw78cnROdRp8owk2n1AGjdZSElloZKY1B4rR8t5ZXT9MSpemqKtQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uq.edu.au; spf=pass smtp.mailfrom=uq.edu.au; dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=NBOtQHI5; dkim=pass (1024-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b=MjAALTr0; arc=fail smtp.client-ip=139.138.29.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uq.edu.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uq.edu.au
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="NBOtQHI5";
	dkim=pass (1024-bit key) header.d=uq.edu.au header.i=@uq.edu.au header.b="MjAALTr0"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=uq.edu.au; s=s1ces; t=1706701210;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=UPpTn+Z1B7om8S87QhBFyO7I0wia4QR97kI+Kv1JRkg=;
  b=NBOtQHI55vm9YcDOn7iCOLzmyIOxLUwBsCuQrcDVb/MCtOU5sNXa2Co4
   nENC3KVZ205j/oCcO1IBikMqZr0hXeb7z4wCGo23J9y8nvHv88xkzhFYC
   t7nDzJV6FtHO0NXqK0VX4lrIJgJ/G29vcNs2yjEq1VHaRtKoVGptDkh48
   O2FCz0KDXNeb48SV8SkjlgmYADXeMZfbT5VfdGiDmNHdX6YF7W0+1wmYI
   x6YrU9mYyTtbatsod3QcLc1V41vd4O5RxRs7ycsqo6OvrjOW7nGOUSlrk
   UCkk0TfFqYuaUlhfHER8BLpXwUQJvR9QK99t0FUvmpnog1NXiKN3lQktW
   g==;
X-CSE-ConnectionGUID: MdmydanDQYSbYM68zk9y2Q==
X-CSE-MsgGUID: YSaHCMYkR2GSjHv1vA/JxA==
Received: from mail-sy4aus01lp2168.outbound.protection.outlook.com (HELO AUS01-SY4-obe.outbound.protection.outlook.com) ([104.47.71.168])
  by ob1.hc86-32.ap.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 31 Jan 2024 21:38:58 +1000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lBx2fzwljOiUdzL0KKcgz/iFa/kSfUccxG+n33chsA8dxo8RVTM6McU8cVh/Zf2F4gH6JbB4y9sljx6yWuS3kr5OloFTzB0ZP5bv8QOL5gqZDT2l2Sj1OWwmKptK4sUYeISCQGnx1kjVzZBX6nk8FePnucIZyKyZzHd8jGsC4M42AIwobO2TZqWfQqrqe/wSCDkXSXLfThy8dl8tbwbF46TvH6yR/ZfLX1oDsYkicmXR7v2zsB9YZ/MvbHcPtCsQic5sbJM19ycXJqTPl1shfJUg7zfKN9W3l8LnZI/PaBNuWyan8zD5rxBXl/kbRTIy3X5NRwSZlc9A8nHyWGJBVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UPpTn+Z1B7om8S87QhBFyO7I0wia4QR97kI+Kv1JRkg=;
 b=eX9u6o9kkCyBpmMq3yH6GjRX4LiUnvYmZZJCLj3RKyNTK4soiNXDrquzs+WC8KCNhu7y3acRbn4KDSop5SCIT1kO+YNYvGeGHKwcPlQHu/E176g2+2WwRn+v7POM8MNQRT8YcGH+9CRcZs4CSRG3QHUYYAeHvdaxbLXC0WAtD1rhkoa2tTgiPhlU62bFLZUee+nqELvfW/S0FBA7f0TNZGGf91GD9fuWDC3HoKYv1XPQ7ISFpArd0/S94ikFp+3haZtSimofdRJ6sdCqO2Fgmzh95RqjeoVToWcjL/oPUfdpUyZemFl9ewRbejsLfhBf08xY6FhgRRnt4o0fj6VoDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uq.edu.au; dmarc=pass action=none header.from=uq.edu.au;
 dkim=pass header.d=uq.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uq.edu.au;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UPpTn+Z1B7om8S87QhBFyO7I0wia4QR97kI+Kv1JRkg=;
 b=MjAALTr0Ha79JiHLFeTDN/5nj1ZfnIrQDXzA5jZFCrnpoBrs+l+b+oQBOQjRHXvnOi4U+Fifxxd3fqeRu5FOL/0xRQMUqSjUD/gOQlU0/3xE8QW7CD9r0xj+WmuxlVeNuDisgWAg9BEwhy1n/8nJBriAOwNh72g8npbIgnU0eV8=
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:128::5) by
 SY8P282MB4515.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:259::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.23; Wed, 31 Jan 2024 11:38:54 +0000
Received: from SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::d6a:67b4:80a1:8aa]) by SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
 ([fe80::d6a:67b4:80a1:8aa%4]) with mapi id 15.20.7228.037; Wed, 31 Jan 2024
 11:38:54 +0000
From: Douglas Kosovic <doug@uq.edu.au>
To: "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>
Subject: RE: Cups automatic duplex printing problems
Thread-Topic: Cups automatic duplex printing problems
Thread-Index:
 AQHaR7xMXvOGoI5U50S/O+alKqMOErDcTlGAgAsOIQCAAAx8gIABVEUAgAm3aACAAWUd0A==
Date: Wed, 31 Jan 2024 11:38:54 +0000
Message-ID:
 <SYBP282MB2617E3FA5A60DFE9E56A9A21877C2@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
References: <10196621-8e14-44f5-b1db-b684d2dfdace@sessink.nl>
 <6E7DA164-8E8B-49A8-86BC-C746BF0256C1@msweet.org>
 <5bf4527c-004f-4324-8977-ba2431373d6b@sessink.nl>
 <7CC4FC04-EB2B-4AA4-9244-87016D2B2946@msweet.org>
 <e938a691-098a-46b8-9725-11a3259b6844@redhat.com>
 <e43a7eab-2ca4-4fcb-a345-fb65061b18b8@sessink.nl>
In-Reply-To: <e43a7eab-2ca4-4fcb-a345-fb65061b18b8@sessink.nl>
Accept-Language: en-US, en-AU
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_ActionId=092891ca-2aa4-4c33-be33-01676e7cdadc;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_ContentBits=0;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Enabled=true;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Method=Standard;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_Name=OFFICIAL
 -
 INTERNAL;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_SetDate=2024-01-31T10:59:43Z;MSIP_Label_0f488380-630a-4f55-a077-a19445e3f360_SiteId=b6e377cf-9db3-46cb-91a2-fad9605bb15c;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uq.edu.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYBP282MB2617:EE_|SY8P282MB4515:EE_
x-ms-office365-filtering-correlation-id: 208d9ab7-2356-4c16-45b4-08dc22513417
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 bZkGxVRKiZfjkpvmS8bQwUHpCF/aMKQqWNlHaNDo1VL7HY+fSreg/fCgzMIZYJbKEocMB6xkiKG6v/Nj5lF8O2SJtSSQVPM8iYZNoJ7MgnfctU0WRuchEpodVG+C1pcpZINo+K5DwuUDIJZpjIel+2mIguRtsnzoD9qMVSoEjboG+6NVYvMTnLf/jpVrTGFtmMee29mETjcXyiqVtdiRofRCiD9bGQnEAkPm4KUHIOItovSuCU/hRurjpMetm+zFydz7Hrxxb1xwW9pQ8udrH1zhwRsGgcAc00ov8Jn7PJFiskqX4VYXuhR3I/ui6dy16fQlQXI9w9QUZr6SUza0Yttz+PsgZ8YZPee79cA1dWeqfp6q8MxLpKve6D82A6KhiOMG9lT2ZlRaeSqx98jPqkG7A2oVY39IS5Vuqd8y2bnmmtcdLa1dIBqHkTenKn36fyEjyBGY/lLbzXPFDX6sSEMOJdDbv7hJeGBKYnHbOxQAmi/l5u1KkXKej1FBmzKb06AIlFZS4DTcjwMMpI5B//ZkUlJy6m8V6My2A/ZYCOm3APMg8FaZRlcy4iUT5sRc7zBMSBLZfBOOFI1jCUED+DtuyIbVyRNYR9gT9nNlEVow2G988ff4LttvWaJmhUxo
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(376002)(136003)(346002)(366004)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(83380400001)(41300700001)(9686003)(38100700002)(26005)(122000001)(52536014)(6916009)(8936002)(5660300002)(8676002)(478600001)(2906002)(966005)(53546011)(6506007)(7696005)(64756008)(71200400001)(66446008)(66476007)(66556008)(66946007)(316002)(786003)(76116006)(38070700009)(86362001)(33656002)(55016003)(21314003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?aGpJdks4b1hNOFVMaGxzaFI4dEEyM2txbXExZTlrUnI0K3BDMU0rSkw5bk5q?=
 =?utf-8?B?RXdsNkNRUUQ0VSszVXQzRkpBeEEwbTkvYkhQQmJsMllXdmNqWHhabDI1NU9Z?=
 =?utf-8?B?Yi9aRVBrd09VdmNGNWJmUFhLeUNXNWpkd3o3N0U4RVhUVnFJSWpUcUdjODQ1?=
 =?utf-8?B?RDJoWlp6NCtCbmVxaldWNjBPM2dpTzhiaEhHRmxxclVFMTkwajVYYkZLMFoy?=
 =?utf-8?B?UEYydkxxTDhvdHJzWENNeEVGOGMrcTkvOXh4N3NwOHdud1RZdFlmWk96ZUx2?=
 =?utf-8?B?dk1UTnY1VzBtejVsL1diV2xORmR0UHZiM2c4QSs2cm5sVXRoVmhTWDZZdEs1?=
 =?utf-8?B?Ni9WYWdVS0RkTEgxcmdKcVhWSWtkR3U2TkZMQWszeFhtc0NOM3pqMTFublVS?=
 =?utf-8?B?NU5DU0QyRVZkenlMd1FnZSthbVdPeXRiSGNDNEN2a1J3MkpRekdkMythVEp5?=
 =?utf-8?B?Z1Y3NVNBcVlGMVBmSHY5THFNd0V4VUJlbzNtdDVNQXRES1hPRVFEVkJwTnRt?=
 =?utf-8?B?YzdiQjdtNU5VZ2x2Z2RXeWFTY2xoQ3hxZWp4WHhPY2dETHlwaUw2S0UycE9O?=
 =?utf-8?B?M0ozNFdDaEoxQjB3TE9DZmczY3V1Y1VlMzZvdW05NzYxM1dhUC9nTXpYVkFq?=
 =?utf-8?B?TDd1KzVOSU55b3NnQUk3bnd2ZGlTQXh1MlJFMy9UREpvVnFxMVVWMDY4Q0pi?=
 =?utf-8?B?ZWlrSVJDZGVFcE1RMXZIMzhwOHptd1dsTWdDOU5uYlpWMERKTUNNZDROL2Js?=
 =?utf-8?B?RVA0NGovREJPOWpTcUhJdEFpek5uY2xuU0dsa0lTRDlVd0FHbzAwZkJkck9h?=
 =?utf-8?B?U2FZR3RyVWJuUEtrS3BKeDVPL0UyMGRvSmZJcU9ZYlJiN3lVU0tKWENhdFNV?=
 =?utf-8?B?ZTNaeXM2WWRRMlo0c1ZBRXJNeGNQZFdaM21wbVNIV05HWklISHQ3a04vaDdW?=
 =?utf-8?B?NnZyOXU4eDRHVGJvKzUyY2g0aUovdnlxbnlYN2prcjFhRy95S0dKTGRyaTVP?=
 =?utf-8?B?VXc0Y25XRzhscjN6aDJGYURETE5Ldlp2em5WcmxtUDMrejJ0WXZ2NGZQM3lI?=
 =?utf-8?B?OXUwQ1F5TmQwWktGUDVVeHdtb2x2MEd2eWxjM2ZVTE92RGVjY2tLblR4RTBv?=
 =?utf-8?B?eWY3V3cwMUhSTk1aV0dtZ3c3eU01YWVuMlhmUVh3dGFsL1UweitIRnhzbFdo?=
 =?utf-8?B?dXUxYXBkdFdzVjQ2cVNnR1l4bWx1L1hvQzFXNG5lZlM4a2JqUTJFNFFVaGEw?=
 =?utf-8?B?dDMycU4ySzhtVkUvaGtHQ01JSmJwTXZXWEdKWE9XTTFZRjhwejNTMDNSbXFS?=
 =?utf-8?B?c3lKRGtGWkFpbWpDQXA4YjA5WXY5VUd5S1JEUG1UTHQzWVJKblBuN0p0bzVu?=
 =?utf-8?B?aFlUV3N5OGE1QkIrbklXTkFOWXRZcHNKYW1POTduSUhnTHQza3JoSHZEUHQ0?=
 =?utf-8?B?Z1FBOElyNWFPNStJZW8wQVdpa2dtWDQ3Z1lYU3hQbC9HLy9yMjBZU2loKzg4?=
 =?utf-8?B?UjdvbzNPQzNEZDJ3QVdBcE91dmdRcGZHRlNQVC9nN1pYTUdCR1pqaS9aTXV5?=
 =?utf-8?B?Q1FMNzYwQkdmdUlPUUhvbUtGNW5rZnRCYXFlZVdjb01yQ0hoY3Y3Z3VBZ0JP?=
 =?utf-8?B?UkV1SCtYcGlZZThXOVhJdktSL1FFU2JmQ1FiSmNPLzVTb3RGN1V0VGNteHRm?=
 =?utf-8?B?WDAxTFBkUEhNQm1ERFpGTmtzbnVuNHdsNG5uUEpuZHZHako3Z1NzQ1htc3RF?=
 =?utf-8?B?YkFuN1N4bXZZN0xjdThIQlZnMk41NE9IMXlEUTE3MmRqOHBsajlPaStNR3gw?=
 =?utf-8?B?azV2ZC9HMFc4Vnp5ekJ6UHRLdCtSbVpYNjFtUnY3VkMrVEttWUtXRzJsQVJr?=
 =?utf-8?B?Z1d2WlB4QnJGTWJPNnY0MzZRcGZwcldWOFVoMGFPOUpGc2l1c2lWZlNFRFNt?=
 =?utf-8?B?R0ZIUUhIWG90WE5HV1U0Z0pRTGhleWtDNldIYk9rU1VpNTY4SFNXemw5L2xX?=
 =?utf-8?B?T0Q1NysydnlrcEo0Y1dzdEpQYnM4OUNzWTFxWTRBdzNPNk1BU2tJN1ZuOXp2?=
 =?utf-8?B?elBKVHF0dnVXaDNqTjJLWFhHbEc3cFJnazErcEtCbTJZL2VRbXFvTjFERGtk?=
 =?utf-8?Q?lrLs=3D?=
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
	BiVHoXKFbPTt34Z+ds5Fw0rZQfpatCtv/EilTluintYXgGaTE1eyHd4kcRhW/DqXnwdXiVtVgQka8vEfiZgxzwMfr0hc7sTyxT+jp32ZKz2nuP29JuuFaVoNjUj8fJlKpAZK/in3WJiZ+KLYHgjoho25JuDdyqMnI/vu/iRqtj+H7BxzB5gzhl4mdftypBvIMHrPZZ1i6ALsqAZYFNsVGAB3wNP4WwFjh3RfRzms+d3ehpJrCG/VzeFvOtOC4st7HUaE5wSqO9Acid9HepnP6/CNuygMkJUQGs+OreYmL7m2EnQaKx1fMxxyPyKgovpQ5X+Zw6w4hLc4fzWxW/9Suw17SdUJ9QOMb7bf+yfw9pe9wf4BBWYSMWf8qfwqqdK6ZE/WizBxqZ2wNPveKTc14ur/AHmVmIdnQ4xUINN4cwF9vVHhA/RbMFhAPXNJWWVYyLeisa2rFQqdS7FN3GBNQg/CGmfsgT5c6YQ5OIDSafbqaO4wj2Ag+kkZKduy+KwmybjnAU1WNle4GR92Q+pfTeN9Ffu++9UmySURL83FfQ66ObR/cB5J5yjCHs5wB/kzxMBBI4L77jHJb9LC9hRznPjtYwOMAwiuac2K3GJSDM8FExfcMWVTLZWXZKNVv8KM
X-OriginatorOrg: uq.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 208d9ab7-2356-4c16-45b4-08dc22513417
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2024 11:38:54.1310
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b6e377cf-9db3-46cb-91a2-fad9605bb15c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PRAEa30ZOe1+/lLDV9D4pZVrEGS3VYmD+wsVeFTHykzggFJnMC3G6HrmStedn29i2HyvaqLGcrjVdYTM1o9dzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY8P282MB4515

SGkgVmFsZW50aWpuLA0KDQpPbiAyMDI0LTAxLTMwIDExOjQxIHBtLCBWYWxlbnRpam4gU2Vzc2lu
ayB3cm90ZToNCj4gVWhtLCB0aGlzIGhhcHBlbnMgaW4gc2V2ZXJhbCBhcHBsaWNhdGlvbnMgLSBt
b3JlIG9yIGxlc3MgZ2VuZXJhbGx5IA0KPiB1bmRlciBVYnVudHUgMjIuMDQuIEV2aW5jZSwgTGli
cmVvZmZpY2UgZm9yIHN1cmUuIERpZG4ndCBjaGVjayBvdGhlciANCj4gKG1vcmUgb2JzY3VyZT8p
IHNvZnR3YXJlIHBhY2thZ2VzIGFuZCBJJ20gbm90IHN1cmUgYWJvdXQgb2xkZXIgdmVyc2lvbnMu
DQo+DQo+IElzIHRoZXJlIGFueXRoaW5nIEkgY2FuIGRvIGluIHRoZSBtZWFuIHRpbWU/IE9yIGlz
IHRoZXJlIG5vdGhpbmcgdG8gZG8gDQo+IGJ1dCB3YWl0IHVudGlsIHRoaXMgImFub3RoZXIgUFBE
IDwtPiBJUFAgcHJldmVudC10aGUtdW5leHBlY3RlZCIgY29kZSANCj4gaXMgaW1wbGVtZW50ZWQ/
DQoNCllvdSBtZW50aW9uZWQgeW91IGFsc28gdHJpZWQgbWFudWFsbHkgYWRkaW5nIHRoZSBwcmlu
dCBxdWV1ZSwgYnV0IGl0J3Mgbm90IGNsZWFyIHdoYXQgeW91IHVzZWQsIGUuZy4gQ1VQUyBJUFAg
RXZlcnl3aGVyZSwgY3Vwcy1maWx0ZXJzIGRyaXZlcmxlc3MsIEhQTElQLCBHdXRlbnByaW50LCBl
dGMuDQoNCkZpcnN0IGVuc3VyZSBBaXJQcmludCBhbmQgcG9zc2libHkgTW9wcmlhIGFyZSBlbmFi
bGVkIG9uIHRoZSBwcmludGVycw0KDQpUcnkgbWFudWFsbHkgYWRkaW5nIGFuIElQUCBFdmVyeXdo
ZXJlIHF1ZXVlIHdpdGggc29tZXRoaW5nIGxpa2UgdGhlIGZvbGxvd2luZyA6DQpscGFkbWluIC1w
IGV2ZXJ5d2hlcmUtdGVzdCAtdiBpcHA6Ly94eHgueHh4Lnh4eC54eC9pcHAvcHJpbnQgLUUgLW0g
ZXZlcnl3aGVyZQ0KDQpUcnkgbWFudWFsbHkgYWRkaW5nIGEgY3Vwcy1maWx0ZXIgZHJpdmVybGVz
cyBxdWV1ZSB3aXRoIHNvbWV0aGluZyBsaWtlIHRoZSBmb2xsb3dpbmcgOg0KbHBhZG1pbiAtcCBk
cml2ZXJsZXNzLXRlc3QgLXYgaXBwOi8veHh4Lnh4Lnh4eC54eC9pcHAvcHJpbnQgLUUgLW0gZHJp
dmVybGVzczppcHA6Ly94eHgueHh4Lnh4eC54eC9pcHAvcHJpbnQNCg0KcmVwbGFjZSB4eHgueHgu
eHh4Lnh4IHdpdGggSVAgYWRkcmVzcywgaG9zdG5hbWUgb3IgbUROUyBhZGRyZXNzLg0KDQoobm90
ZSB0aGUgZHVwbGljYXRlZCBVUkwgaW4gdGhlIGxhc3QgbHBhZG1pbiBsaW5lIGlzIG5vdCBhIHR5
cG8pLg0KDQpTZWUgaWYgYW55IG9mIHRob3NlIHByaW50IHF1ZXVlcyBzb2x2ZSB5b3VyIGR1cGxl
eCBpc3N1ZT8NCg0KTW9yZSBpbmZvIG9uIGFkZGluZyBJUFAgRXZlcnl3aGVyZSAvIGRyaXZlcmxl
c3MgcHJpbnQgcXVldWVzIG9uIHRoZSBjb21tYW5kLWxpbmUgaGVyZToNCmh0dHBzOi8vd2lraS5k
ZWJpYW4ub3JnL0NVUFNEcml2ZXJsZXNzUHJpbnRpbmcNCg0KWW91IGNvdWxkIHRoZW4gdHJ5IHRo
ZSBvZmZpY2lhbCBPcGVuUHJpbnRpbmcgU25hcCBvZiBDVVBTIGZvciBhIG11Y2ggbmV3ZXIgdmVy
c2lvbiBvZiBDVVBTIHRoYXQgaGFzIG1hbnkgYnVnIGZpeGVzOg0KaHR0cHM6Ly9zbmFwY3JhZnQu
aW8vaW5zdGFsbC9jdXBzL3VidW50dQ0KDQpJIGJlbGlldmUgVWJ1bnR1IHdpbGwgYmUgbW92aW5n
IHRvIHRoZSBDVVBTIFNuYXAgZm9yIGl0cyBwcmludGluZyBzeXN0ZW0gaW4gYSBmdXR1cmUgcmVs
ZWFzZS4NCg0KSSB3b3VsZCBhbHNvIHJlY29tbWVuZCByZWdlbmVyYXRpbmcgdGhlIElQUCBFdmVy
eXdoZXJlIGFuZCBEcml2ZXJsZXNzIHByaW50IHF1ZXVlcyB3aXRoIHRoZSBuZXcgdmVyc2lvbiBv
ZiBDVVBTLg0KDQoNCg0KQ2hlZXJzLA0KRG91Zw0K
