//
//  RSAEncryptor.h
//  RSA
//
//  Created by zack on 2016/12/8.
//  Copyright © 2016年 oujian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSAEncryptor : NSObject

/**
 *  加密方法
 *
 *  @param str    需要加密的字符串
 *  @param pubKey 公钥字符串
 */
+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;

/**
 *  解密方法
 *
 *  @param str     需要解密的字符串
 *  @param privKey 私钥字符串
 */
+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;

@end
