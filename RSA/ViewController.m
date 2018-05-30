//
//  ViewController.m
//  RSA
//
//  Created by zack on 2016/12/8.
//  Copyright © 2016年 oujian. All rights reserved.
//

#import "ViewController.h"
#import "RSAEncryptor.h"

//#define  PubKey @"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCHedLrI6g46XWHhkeVYXJ5GXOxik96tdk9/1LJ+aG1I3LD1/87OAK8wy1Ii5gtCNRL5caaNh6VSN++FY59h6QT3ID3/gesRZlpXE0zQvAsUdgixFRCeTK5uHp6GOWiQZA7uOwI4FSJGuPVuCWc4KhzVx0p4g9GZdN1Dp62uz1C1wIDAQAB"

//#define PriKey @"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAId50usjqDjpdYeGR5VhcnkZc7GKT3q12T3/Usn5obUjcsPX/zs4ArzDLUiLmC0I1Evlxpo2HpVI374Vjn2HpBPcgPf+B6xFmWlcTTNC8CxR2CLEVEJ5Mrm4enoY5aJBkDu47AjgVIka49W4JZzgqHNXHSniD0Zl03UOnra7PULXAgMBAAECgYBRYmPMkg0as1TBZ29VU8b67MlNnHMGmnu4/Mr1PptgP71P3VAceRdb4jwv2nw+gZFXTt+yAFT7BV4zyKtiybtMtWql58jpKCklhEqZd3L8VJR72rEn2bs1u9U1SKdYGS3Elr2HdWk8P77Y24H2y+F5RTqdsDN5rO5xvNrCjJ7OMQJBAOqXqF5hxFeswx0imlqXJtXbM2flDImi2QgH27In6MoWwureMJDSUn6jvQK8QqgjhYr5uOl8bYAV9VVDXjrSTp0CQQCT1rFJfFzIpo40WHraZ1QConvOOFb9AIq/H8H7wmNpDZKGb4yGfRDMh7kiRQPUqpwBaC3IYhfMkzqYTu4S/IMDAkEAzCJT/G0OsUxALGYj8ph8zrMDtHB3zHzMZlSQNCLOSqwryLy3fg3GgzRwEKVJS449coWDBomjr0VsSllo8b53cQJAcItZLYs6CxoYWasd41QT9WmCfIwRVMtr1HG1uBXUne3SJPuYa+2bs0iDXJ5TeztiRgPsDob2fSt7yOUVgmiuxwJBAKyV3c98iE0K5mLFryhTcxcb6UQjBth8j1q8y0FGeUtxUM64FjcPawZIPjmtzedCQXgNaIoYeDz93EbjXNzomZU="

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //原始数据
    NSString *originalString = @"hello world";
    
    
    
    //使用字符串格式的公钥私钥加密解密
    NSString *encryptStr = [RSAEncryptor encryptString:originalString publicKey:@"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDL3Ji7cHHO0DdsoOIRc0oCeWdHB/lufK7nlizyGYE1z5RiMA/t58bMsbrDsiQUWCNUuXH6BlCquty2fsbpnImq8eEnt80+bp9UWxpbVtSgPwfuZ3mRseaXUHwy27hs1J6ek1cmYOg/idOperh1z4mYCwFnqoG8Pe3NyR53GpK/EQIDAQAB"];
    
    //加密前
    NSLog(@"加密前:%@", originalString);
    
    //加密后
    NSLog(@"加密后:%@", encryptStr);
    
    //解密后
    NSLog(@"解密后:%@", [RSAEncryptor decryptString:encryptStr privateKey:@"MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAMvcmLtwcc7QN2yg4hFzSgJ5Z0cH+W58rueWLPIZgTXPlGIwD+3nxsyxusOyJBRYI1S5cfoGUKq63LZ+xumciarx4Se3zT5un1RbGltW1KA/B+5neZGx5pdQfDLbuGzUnp6TVyZg6D+J06l6uHXPiZgLAWeqgbw97c3JHncakr8RAgMBAAECgYEAnz1ZMFDNFTcflAK3k9nyXaxnN9zKwbszBEMSKKoze80BoxDX4IXDi/DoaiSkeh++uVeB6EM2j6YW8ZZl2eUkwrXy9JJC6zBVENHcWXYF9BPN5CxPnw5NB2kfhSkHaPugheqXB3oUAZJ8EHQ0ISzNy2F9l3pfK5EYdOdMwPdgSIECQQDnAWuAuP80Gest3Q21ltRJw42+O5A7QQ+p5d5d5WJuMqX9EIwqXcKrcQXLIUdjR2moWaeLcHuUSTgaUljZdmbNAkEA4etTDXmitTgSsEYrAzg5r7n0wNOxOKgPzR5cIUReRytabT6hfRg2L2jn2u81TJ5lCZi0CiagUPgMOPh72SsRVQJAa0KPhf9gD/MQ7gS7/tr/yxhP0kqZ18mH2l1veK2vnHdL90sdqfZLE4uxIvZazVA1UQP/9ZDO8LVmpWIi+yYs6QJAE6OCP7ygIUKzlTE0Uf5UPWtb1FtSn4s0fG80MQwhaexh2vdD0H0HUM28wfJjXrqyK8hjdjJvYzp8zYMEOReeVQJABChCYUfXQ8uDCwPrpOPDrlvNwvWUTLLvQIHPuGdvTAihGE8vwI5CNhqhSiZrX3sJOWT1UylU+MpW3efn/qG/Ew=="]);

    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
