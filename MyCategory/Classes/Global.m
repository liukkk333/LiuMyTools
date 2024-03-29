//
//  Global.m
//  EasyCar
//
//  Created by QQSS on 15/5/27.
//  Copyright (c) 2015年 TYG. All rights reserved.
//

#import "Global.h"
#import "CommonPrefixHeader.h"

//判断手机号是否合法
BOOL isValidateMobile(NSString *mobile){
    mobile = [mobile stringByReplacingOccurrencesOfString:@" " withString:@""];

    NSString *phoneRegex = @"^1\\d{10}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    return [phoneTest evaluateWithObject:mobile];
    
}

NSString *hashMapCarNo(NSString *carno){
    if ([carno isEqualToString:@"京"]) {
        return @"A";
    } else if ([carno isEqualToString:@"津"]) {
        return @"B";
    } else if ([carno isEqualToString:@"沪"]) {
        return @"C";
    } else if ([carno isEqualToString:@"渝"]) {
        return @"D";
    } else if ([carno isEqualToString:@"冀"]) {
        return @"E";
    } else if ([carno isEqualToString:@"晋"]) {
        return @"F";
    } else if ([carno isEqualToString:@"辽"]) {
        return @"G";
    } else if ([carno isEqualToString:@"吉"]) {
        return @"H";
    } else if ([carno isEqualToString:@"黑"]) {
        return @"I";
    } else if ([carno isEqualToString:@"苏"]) {
        return @"J";
    } else if ([carno isEqualToString:@"浙"]) {
        return @"K";
    } else if ([carno isEqualToString:@"皖"]) {
        return @"L";
    } else if ([carno isEqualToString:@"闽"]) {
        return @"M";
    } else if ([carno isEqualToString:@"赣"]) {
        return @"N";
    } else if ([carno isEqualToString:@"鲁"]) {
        return @"O";
    } else if ([carno isEqualToString:@"豫"]) {
        return @"P";
    } else if ([carno isEqualToString:@"鄂"]) {
        return @"Q";
    } else if ([carno isEqualToString:@"湘"]) {
        return @"R";
    } else if ([carno isEqualToString:@"粤"]) {
        return @"S";
    } else if ([carno isEqualToString:@"琼"]) {
        return @"T";
    } else if ([carno isEqualToString:@"川"]) {
        return @"U";
    } else if ([carno isEqualToString:@"黔"]) {
        return @"V";
    } else if ([carno isEqualToString:@"贵"]) {
        return @"W";
    } else if ([carno isEqualToString:@"滇"]) {
        return @"X";
    } else if ([carno isEqualToString:@"云"]) {
        return @"Y";
    } else if ([carno isEqualToString:@"陕"]) {
        return @"Z";
    } else if ([carno isEqualToString:@"秦"]) {
        return @"AA";
    } else if ([carno isEqualToString:@"甘"]) {
        return @"AB";
    } else if ([carno isEqualToString:@"陇"]) {
        return @"AC";
    } else if ([carno isEqualToString:@"青"]) {
        return @"AD";
    } else if ([carno isEqualToString:@"藏"]) {
        return @"AE";
    } else if ([carno isEqualToString:@"桂"]) {
        return @"AF";
    } else if ([carno isEqualToString:@"蒙"]) {
        return @"AG";
    } else if ([carno isEqualToString:@"宁"]) {
        return @"AH";
    } else if ([carno isEqualToString:@"新"]) {
        return @"AI";
    } else if ([carno isEqualToString:@"港"]) {
        return @"AJ";
    } else if ([carno isEqualToString:@"澳"]) {
        return @"AK";
    } else if ([carno isEqualToString:@"台"]) {
        return @"AL";
    } else {
        return @"";
    }
}



CGFloat getScreenWidth(){
    CGRect rect = [[UIScreen mainScreen] bounds];
    return rect.size.width;
}

CGFloat getScreenHeight(){
    CGRect rect = [[UIScreen mainScreen] bounds];
    return rect.size.height;
}
#warning 注释
//NSString *getUUID(){
//    NSString *retrieveuuid = [CHKeychain load:KEY_UUID];
//    if ( retrieveuuid == nil || [retrieveuuid isEqualToString:@""])
//    {
//        CFUUIDRef uuid = CFUUIDCreate(NULL);
//        assert(uuid != NULL);
//        CFStringRef uuidStr = CFUUIDCreateString(NULL, uuid);
//        retrieveuuid = [NSString stringWithFormat:@"%@", uuidStr];
//        [CHKeychain save:KEY_UUID data:retrieveuuid];
//        CFRelease(uuid);
//        CFRelease(uuidStr);
//    }
//    return retrieveuuid;
//}

//NSString *md5(NSString *str){
//    const char *cStr = [str UTF8String];
//    unsigned char result[16];
//    CC_MD5(cStr, (CC_LONG)(strlen(cStr)), result);
//    return [NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
//            result[0],result[1],result[2],result[3],
//            result[4],result[5],result[6],result[7],
//            result[8],result[9],result[10],result[11],
//            result[12],result[13],result[14],result[15]];
//}

BOOL isValidateVinOrCarNoOrEngineNo(NSString *str){
    NSString *regex = @"[A-Z0-9]{6}";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [test evaluateWithObject:str];
}

BOOL isValidateVIN_lastNumbers(NSString *vin, NSUInteger count){
    NSString *vinRegex = [NSString stringWithFormat:@"[A-Z0-9]{%lu}", (unsigned long)count];
    NSPredicate *vinTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", vinRegex];
    return [vinTest evaluateWithObject:vin];
}

BOOL isValidateAllNumbers(NSString *str){
    NSString *allNumberRegex = @"^[0-9]*$";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",allNumberRegex];
    return [test evaluateWithObject:str];
}

BOOL isNonNegativeFloat(NSString *str){
    NSString *num = @"^(\\d+)(\\.\\d+)?$";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",num];
    return [test evaluateWithObject:str];
}

BOOL isStamp(NSString *str){
    NSString *stamp = @"^\\d{13}$";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",stamp];
    return [test evaluateWithObject:str];
}

BOOL isStamp1(NSString *str){
    NSString *stamp = @"^\\d{12}$";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",stamp];
    return [test evaluateWithObject:str];
}

BOOL isStamp2(NSString *str){
    NSString *stamp = @"^\\d{14}$";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",stamp];
    return [test evaluateWithObject:str];
}

NSString *stampToDate(NSString *stamp){
    NSTimeInterval time=[stamp doubleValue]/1000-28800;//因为时差问题要减8小时 == 28800 sec
    NSDate *detaildate=[NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [dateFormatter stringFromDate: detaildate];
}

NSString *stampToDateWithoutEightHours(NSString *stamp){
    NSTimeInterval time=[stamp doubleValue]/1000;//没有时差
    NSDate *detaildate=[NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [dateFormatter stringFromDate: detaildate];
}

//去除浮点数形式的字符串右边多余的0
NSString *trim(NSString *val) {
    unsigned long len = val.length;
    for (int i=0;i<len;i++) {
        if (![val hasSuffix:@"0"]) {
            break;
        } else {
            val = [val substringToIndex:val.length-1];
        }
    }
    if ([val hasSuffix:@"."]) {//避免像2.000被处理成2.0
        return [val substringToIndex:val.length-1];
    } else {
        return val;
    }
}

NSString *stringDisposeWithDouble(double val){
    NSString *str = [NSString stringWithFormat:@"%lf",val];
    
    return trim(str);
}

NSString *newFloatWithMaxNumber(double val, int numberOfPlace) {
    NSString *formatStr = @"%.";
    formatStr = [formatStr stringByAppendingFormat:@"%df",numberOfPlace];
    formatStr = [NSString stringWithFormat:formatStr, val];
    
    return trim(formatStr);
}

NSString *newFloatStringWithMaxNumber(NSString *floatString, int numberOfPlace) {
    double val = [floatString doubleValue];
    
    return newFloatWithMaxNumber(val, numberOfPlace);
}

BOOL notNull(id val){
    if (val == nil || [val isEqual:[NSNull null]]) {
        return NO;
    }
    
    if ([val isKindOfClass:[NSString class]]) {
        if ([val isEqualToString:@""] || [val isEqualToString:@"null"] || [val isEqualToString:@"<null>"]||[val isEqualToString:@"(null)"]) {
            return NO;
        }
    }
    
    if ([val isKindOfClass:[NSArray class]]) {
        if ([val count] == 0) {
            return NO;
        }
    }
    
    if ([val isKindOfClass:[NSDictionary class]]) {
        if ([[val allKeys] count] == 0) {
            return NO;
        }
    }

    return YES;
}

void createFile(){
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *testPath = [documentsDirectory stringByAppendingPathComponent:@"temp.txt"];
    BOOL res=[fileManager createFileAtPath:testPath contents:nil attributes:nil];
    if (res) {
      //  //SNLog(@"文件创建成功: %@" ,testPath);
    }else{
       // //SNLog(@"文件创建失败");
    }
}

void writeFile(NSString *str){
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *testPath = [documentsDirectory stringByAppendingPathComponent:@"temp.txt"];
    
    NSMutableString *str2 = [[NSMutableString alloc] initWithContentsOfFile:testPath encoding:NSUTF8StringEncoding error:nil];
    [str2 appendFormat:@"\n%@",str];
    
    BOOL res=[str2 writeToFile:testPath atomically:YES encoding:NSUTF8StringEncoding error:nil];
    if (res) {
     //   //SNLog(@"文件写入成功");
    }else{
       // //SNLog(@"文件写入失败");
    }
}

void filterNullValueInDictionary(NSMutableDictionary *dic) {
    NSMutableArray *arr = [NSMutableArray new];
    NSEnumerator *keyEnum = [dic keyEnumerator];
    id key;
    while (key = [keyEnum nextObject]) {
        if (!notNull([dic objectForKey:key])) {
            [arr addObject:key];
        }
        
        id val = [dic objectForKey:key];
        if ([val isKindOfClass:[NSDictionary class]]) {
            filterNullValueInDictionary1([dic objectForKey:key]);
        }
    }
    
    for (key in arr) {
        [dic removeObjectForKey:key];
    }
}


void filterNullValueInDictionary1(NSMutableDictionary *dic) {
    NSMutableArray *arr = [NSMutableArray new];
    NSEnumerator *keyEnum = [dic keyEnumerator];
    id key;
    while (key = [keyEnum nextObject]) {
        if (!notNull([dic objectForKey:key])) {
            [arr addObject:key];

        }
    }
    
    for (key in arr) {
        [dic removeObjectForKey:key];
    }
}

NSString *newDateStringFromString(NSString *firstDateString) {
    if (notNull(firstDateString)&& firstDateString.length>=16) { //正常情况下
        NSString *fromDateString = [firstDateString substringToIndex:16];//去除 秒
        
        NSDate *currentDate = [NSDate date];
        NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat: @"yyyy-MM-dd HH:mm:ss"];
        NSString *currentDateString = [formatter stringFromDate:currentDate];//当前日期
        
        NSString *currentYearStr = [currentDateString substringToIndex:4];
        NSString *unCurrentYearStr = [fromDateString substringToIndex:4];
        
        NSArray *firstDateArray = [fromDateString componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"- "]];
        
        NSString *yearString;
        if (unCurrentYearStr.integerValue != currentYearStr.integerValue) { //年份不相等时
            yearString = [NSString stringWithFormat:@"%@年%@月%@日 %@",firstDateArray[0],firstDateArray[1],firstDateArray[2],firstDateArray[3]];
        }else{ //年份相等时
            yearString = [NSString stringWithFormat:@"%@月%@日 %@",firstDateArray[1],firstDateArray[2],firstDateArray[3]];
        }
        return yearString;
    }
    else{
        return firstDateString;
    }
}

NSString *newYearMonthDayDateStringFromString(NSString *firstDateString) {
    if (notNull(firstDateString)&& firstDateString.length>=10) { //正常情况下
        NSString *fromDateString = [firstDateString substringToIndex:10];//去除 秒
        
        NSDate *currentDate = [NSDate date];
        NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat: @"yyyy-MM-dd"];
        NSString *currentDateString = [formatter stringFromDate:currentDate];//当前日期
        
        NSString *currentYearStr = [currentDateString substringToIndex:4];
        NSString *unCurrentYearStr = [fromDateString substringToIndex:4];
        
        NSArray *firstDateArray = [fromDateString componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"- "]];
        
        NSString *yearString;
        if (unCurrentYearStr.integerValue != currentYearStr.integerValue) { //年份不相等时
            yearString = [NSString stringWithFormat:@"%@年%@月%@日 ",firstDateArray[0],firstDateArray[1],firstDateArray[2]];
        }else{ //年份相等时
            yearString = [NSString stringWithFormat:@"%@月%@日 ",firstDateArray[1],firstDateArray[2]];
        }
        return yearString;
    }
    else{
        return firstDateString;
    }
}


BOOL checkCardNo(NSString *cardNo){
    int oddsum = 0;     //奇数求和
    int evensum = 0;    //偶数求和
    int allsum = 0;
    int cardNoLength = (int)[cardNo length];
    int lastNum = [[cardNo substringFromIndex:cardNoLength-1]intValue];
    
    cardNo = [cardNo substringToIndex:cardNoLength -1];
    for (int i = cardNoLength -1; i>=1;i--) {
        NSString *tmpString = [cardNo substringWithRange:NSMakeRange(i-1,1)];
        int tmpVal = [tmpString intValue];
        if (cardNoLength % 2 ==1) {
            if((i % 2) == 0){
                tmpVal *= 2;
                if(tmpVal>=10)
                    tmpVal -= 9;
                evensum += tmpVal;
            }else{
                oddsum += tmpVal;
            }
        }else{
            if((i % 2) == 1){
                tmpVal *= 2;
                if(tmpVal>=10)
                    tmpVal -= 9;
                evensum += tmpVal;
            }else{
                oddsum += tmpVal;
            }
        }
    }
    
    allsum = oddsum + evensum;
    allsum += lastNum;
    if((allsum % 10) == 0)
        return YES;
    else
        return NO;
}


BOOL CheckIsIdentityCard(NSString *identityCard)
{
    //判断是否为空
    if (identityCard==nil||identityCard.length <= 0) {
        return NO;
    }
    //判断是否是18位，末尾是否是x
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    if(![identityCardPredicate evaluateWithObject:identityCard]){
        return NO;
    }
    //判断生日是否合法
    NSRange range = NSMakeRange(6,8);
    NSString *datestr = [identityCard substringWithRange:range];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat : @"yyyyMMdd"];
    if([formatter dateFromString:datestr]==nil){
        return NO;
    }
    
    //判断校验位
    if(identityCard.length==18)
    {
        NSArray *idCardWi= @[ @"7", @"9", @"10", @"5", @"8", @"4", @"2", @"1", @"6", @"3", @"7", @"9", @"10", @"5", @"8", @"4", @"2" ]; //将前17位加权因子保存在数组里
        NSArray * idCardY=@[ @"1", @"0", @"10", @"9", @"8", @"7", @"6", @"5", @"4", @"3", @"2" ]; //这是除以11后，可能产生的11位余数、验证码，也保存成数组
        int idCardWiSum=0; //用来保存前17位各自乖以加权因子后的总和
        for(int i=0;i<17;i++){
            idCardWiSum+=[[identityCard substringWithRange:NSMakeRange(i,1)] intValue]*[idCardWi[i] intValue];
        }
        
        int idCardMod=idCardWiSum%11;//计算出校验码所在数组的位置
        NSString *idCardLast=[identityCard substringWithRange:NSMakeRange(17,1)];//得到最后一位身份证号码
        
        //如果等于2，则说明校验码是10，身份证号码最后一位应该是X
        if(idCardMod==2){
            if([idCardLast isEqualToString:@"X"]||[idCardLast isEqualToString:@"x"]){
                return YES;
            }else{
                return NO;
            }
        }else{
            //用计算出的验证码与最后一位身份证号码匹配，如果一致，说明通过，否则是无效的身份证号码
            if([idCardLast intValue]==[idCardY[idCardMod] intValue]){
                return YES;
            }else{
                return NO;
            }
        }
    }
    return NO;
}

BOOL isValidCarNumber(NSString *carNumber) {
    if (carNumber.length!=7) {
        return NO;
    }
    NSString *carRegex = @"^[\u4e00-\u9fa5]{1}[a-hj-zA-HJ-Z]{1}[a-hj-zA-HJ-Z_0-9]{4}[a-hj-zA-HJ-Z_0-9_\u4e00-\u9fa5]$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",carRegex];
    return [carTest evaluateWithObject:carNumber];
}

UIColor * colorWithRGBString(NSString *stringToConvert)
{
    if ([stringToConvert hasPrefix:@"#"])
    {
        stringToConvert = [stringToConvert substringFromIndex:1];
    }
    
    NSScanner *scanner = [NSScanner scannerWithString:stringToConvert];
    unsigned hexNum;
    
    if (![scanner scanHexInt:&hexNum])
    {
        return nil;
    }
    
    int r = (hexNum >> 16) & 0xFF;
    int g = (hexNum >> 8) & 0xFF;
    int b = (hexNum) & 0xFF;
    
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:1.0f];
}

NSString *newDateWithoutChineseStringFromString(NSString *firstDateString) {
    if (notNull(firstDateString)&& firstDateString.length>=16) { //正常情况下
        NSString *fromDateString = [firstDateString substringToIndex:16];//去除 秒
        
        NSDate *currentDate = [NSDate date];
        NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat: @"yyyy-MM-dd HH:mm:ss"];
        NSString *currentDateString = [formatter stringFromDate:currentDate];//当前日期
        
        NSString *currentYearStr = [currentDateString substringToIndex:4];
        NSString *unCurrentYearStr = [fromDateString substringToIndex:4];
        
        NSArray *firstDateArray = [fromDateString componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"- "]];
        
        NSString *yearString;
        if (unCurrentYearStr.integerValue != currentYearStr.integerValue) { //年份不相等时
            yearString = [NSString stringWithFormat:@"%@-%@-%@ %@",firstDateArray[0],firstDateArray[1],firstDateArray[2],firstDateArray[3]];
        }else{ //年份相等时
            yearString = [NSString stringWithFormat:@"%@-%@ %@",firstDateArray[1],firstDateArray[2],firstDateArray[3]];
        }
        return yearString;
    }
    else{
        return firstDateString;
    }
}

NSString *DateStringWithYearMonthDayAndChineseWordFromDate(NSDate *date){
    NSDateFormatter *dateFormattor = [[NSDateFormatter alloc] init];
    [dateFormattor setDateFormat:@"yyyy年MM月dd日"];
    return [dateFormattor stringFromDate:date];
}

NSString *DateStringWithYearMonthDayWithoutChineseWordFromDate(NSDate *date){
    NSDateFormatter *dateFormattor = [[NSDateFormatter alloc] init];
    [dateFormattor setDateFormat:@"yyyy-MM-dd"];
    return [dateFormattor stringFromDate:date];
}

NSString *DateStringWithYearMonthDayWithoutChineseWordWithLineFromDate(NSDate *date){
    NSDateFormatter *dateFormattor = [[NSDateFormatter alloc] init];
    [dateFormattor setDateFormat:@"yyyy/MM/dd"];
    return [dateFormattor stringFromDate:date];
}

NSString *DateStringWithYearMonthAndChineseWordFromDate(NSDate *date){
    NSDateFormatter *dateFormattor = [[NSDateFormatter alloc] init];
    [dateFormattor setDateFormat:@"yyyy年MM月"];
    return [dateFormattor stringFromDate:date];
}

NSString *DateStringWithYearMonthWithoutChineseWordFromDate(NSDate *date){
    NSDateFormatter *dateFormattor = [[NSDateFormatter alloc] init];
    [dateFormattor setDateFormat:@"yyyy-MM"];
    return [dateFormattor stringFromDate:date];
}

NSString *DateStringWithMonthDayWithoutChineseWordFromDate(NSDate *date){
    NSDateFormatter *dateFormattor = [[NSDateFormatter alloc] init];
    [dateFormattor setDateFormat:@"MM-dd"];
    return [dateFormattor stringFromDate:date];
}

NSString *DateStringWithHourMinuteFromDate(NSDate *date){
    NSDateFormatter *dateFormattor = [[NSDateFormatter alloc] init];
    [dateFormattor setDateFormat:@"HH:mm"];
    return [dateFormattor stringFromDate:date];
}

#pragma mark ---自定义image
UIImage * setupNewImage ( NSString *firstStr) {
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0,0,kSize(102),kSize(102))];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = colorWithRGBString(kColor4897FF);
    label.layer.cornerRadius = kSize(102)/2;
    label.layer.borderColor = colorWithRGBString(kColor4897FF).CGColor;
    label.layer.borderWidth = 0.5;
    label.backgroundColor = [UIColor whiteColor];
    
    label.text = firstStr;
    label.font = [UIFont systemFontOfSize:kFont(48)];
    
    
    UIGraphicsBeginImageContextWithOptions(label.bounds.size, NO, [[UIScreen mainScreen] scale]);
    [label.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

UIImage * setupNewImageWithBackgroundColor (NSString *firstStr,UIColor *textColor,UIColor *backgroundColor) {
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0,0,kSize(102),kSize(102))];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = textColor;
    label.layer.cornerRadius = kSize(102)/2;
    label.layer.borderColor = colorWithRGBString(KC5).CGColor;
    label.layer.borderWidth = 0.5;
    label.backgroundColor = backgroundColor;
    
    label.text = firstStr;
    label.font = [UIFont systemFontOfSize:kFont(48)];
    
    
    UIGraphicsBeginImageContextWithOptions(label.bounds.size, NO, [[UIScreen mainScreen] scale]);
    [label.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

NSString * getFirstCharactorFromString (NSString *aString)
{
    //转成了可变字符串
    NSMutableString *str = [NSMutableString stringWithString:aString];
    //先转换为带声调的拼音
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformMandarinLatin,NO);
    //再转换为不带声调的拼音
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformStripDiacritics,NO);
    //转化为大写拼音
    NSString *pinYin = [str capitalizedString];
    
    
    
    /*多音字处理*/
    if ([[(NSString *)aString substringToIndex:1] compare:@"长"] == NSOrderedSame)
    {
        
        return @"C";
    }
    if ([[(NSString *)aString substringToIndex:1] compare:@"沈"] == NSOrderedSame)
    {
        
        return @"S";
    }
    if ([[(NSString *)aString substringToIndex:1] compare:@"厦"] == NSOrderedSame)
    {
        
        return @"X";
    }
    if ([[(NSString *)aString substringToIndex:1] compare:@"地"] == NSOrderedSame)
    {
        
        return @"D";
    }
    if ([[(NSString *)aString substringToIndex:1] compare:@"重"] == NSOrderedSame)
    {
        
        return @"C";
    }
    
    //获取并返回首字母
    return [pinYin substringToIndex:1];
}

//计算字符串的宽高
CGSize stringSize(NSString *str,CGFloat font,CGFloat maxWidth){
    //kSelfWidth-kSize(48+44+16+48)
    CGSize content;
    
    if (!notNull(str)) {
        content = CGSizeMake(kSelfWidth, kSize(42));
        return content;
    }else{
        content = [str boundingRectWithSize:CGSizeMake(maxWidth, MAXFLOAT)
                                    options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin
                                 attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:font]}
                                    context:nil].size;
        return content;
    }
}

NSAttributedString * createPlaceholderBackgroundColorWithString(NSString *str) {
    NSMutableAttributedString *attriStr = [[NSMutableAttributedString alloc]initWithString:str];
    [attriStr addAttribute:NSForegroundColorAttributeName value:colorWithRGBString(kColor999999) range:NSMakeRange(0, str.length)];
    return attriStr;
}

NSAttributedString * createPlaceholderBackgroundColorWithStringAndFont(NSString *str,CGFloat font){
    NSMutableAttributedString *attriStr = [[NSMutableAttributedString alloc]initWithString:str];
    [attriStr addAttribute:NSForegroundColorAttributeName value:colorWithRGBString(kColor999999) range:NSMakeRange(0, str.length)];
    [attriStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:font] range:NSMakeRange(0, str.length)];
    return attriStr;
}

void setTextViewTextCenter(UITextView *textView){
    if([textView.text length]>0) {
        CGSize contentSize = textView.contentSize;
        
        UIEdgeInsets offset;
        CGSize newSize = contentSize;
        if(contentSize.height <= textView.frame.size.height) {
            CGFloat offsetY = (textView.frame.size.height - contentSize.height)/2;
            offset = UIEdgeInsetsMake(offsetY, 0, 0, 0);
        }
        else {
            newSize = textView.frame.size;
            offset = UIEdgeInsetsZero;
            
            newSize = contentSize;
        }
        [textView setContentSize:newSize];
        [textView setContentInset:offset];
    }
}

NSString * arrayToJSONString(NSArray *array)
{
    NSError *error = nil;

    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];

    return jsonString;
}
//　但是此时的JSON字符串有空格和 \n ,是这个样子：参考：http://makaidong.com/xianfeng-zhang/3390_23972547.html
//NSString * dictionaryToJSONString(NSDictionary *dic)
//{
//    NSError *parseError = nil;
//    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
//    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
//}

//在之前基础上进行去空格和区 \n 操作，就能到达我们想要的JSON字符串纯种
NSString *convertToJsonData(NSDictionary *dict){
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:&error];
    NSString *jsonString;
    
    if (!jsonData) {
        NSLog(@"%@",error);
    }else{
        jsonString = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    
    NSMutableString *mutStr = [NSMutableString stringWithString:jsonString];
    
    NSRange range = {0,jsonString.length};
    
    //去掉字符串中的空格
    
    [mutStr replaceOccurrencesOfString:@" " withString:@"" options:NSLiteralSearch range:range];
    
    NSRange range2 = {0,mutStr.length};
    
    //去掉字符串中的换行符
    
    [mutStr replaceOccurrencesOfString:@"\n" withString:@"" options:NSLiteralSearch range:range2];
    
    return mutStr;
}



UIImage * createImageWithColor(UIColor* color,CGFloat height)
{
    CGRect r= CGRectMake(0.0f, 0.0f, 1.0f, height);
    UIGraphicsBeginImageContext(r.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, r);
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}


void systemPhoneClick (NSString *phoneNumberStr){
    if (!notNull(phoneNumberStr)) {
        #warning 注释
    //    [[Message sharedMessage] showFlashMessage:@"手机号码不存在!"];
        return;
    }
    
    if (SYSTEM_VERSION >= 10.0) {// 10及其以上系统
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",phoneNumberStr]] options:@{} completionHandler:nil];
    } else {                     // 10以下系统
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",phoneNumberStr]]];
    }
}

void systemMessageClick (NSString *phoneNumberStr){
    if (!notNull(phoneNumberStr)) {
        #warning 注释
   //     [[Message sharedMessage] showFlashMessage:@"手机号码不存在!"];
        return;
    }
     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"sms://%@",phoneNumberStr]]];
}

void hideNavigationBarLineView(UIViewController *vc){
    //隐藏导航栏横线
    [vc.navigationController.navigationBar.subviews enumerateObjectsUsingBlock:^(UIView *view, NSUInteger idx, BOOL *stop) {
        if (SYSTEM_VERSION >= 10.0) {
            if ([view isKindOfClass:NSClassFromString(@"_UIBarBackground")]) {
                [view.subviews firstObject].hidden = YES;}
        }else{
            if ([view isKindOfClass:NSClassFromString(@"_UINavigationBarBackground")]) {
                [view.subviews lastObject].hidden = YES;}
        }
    }];
}

NSArray * judgeNSArrayNull (NSArray *arr){
    if (!notNull(arr)) {
        arr = [NSArray new];
    }
    return arr;
}

NSDictionary * judgeNSDictionaryNull (NSDictionary *dic){
    if (!notNull(dic)) {
        dic = [NSDictionary new];
    }
    return dic;
}

NSString * judgeNSStringNull (NSString *string,NSString *defaultString){
    if (!notNull(string)) {
        string = notNull(defaultString)?defaultString:@"";
    }
    return string;
}

NSString * getAccurateCityNameByStr (NSString *cityName){
    NSString *accurateCityName = @"";
    if (notNull(cityName)){
        NSString *lastChar = [cityName substringFromIndex:cityName.length-1];
        if([lastChar isEqualToString:@"市"]){
            accurateCityName = [cityName substringToIndex:cityName.length-1];
        }else{
            accurateCityName = cityName;
        }
    }
    return accurateCityName;
}

//跳转到系统设置
void openSettingPage(){
    NSURL *targetURL = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
    if ([[[UIDevice currentDevice] systemVersion] doubleValue] >=10.0) {
        if([[UIApplication sharedApplication] canOpenURL:targetURL]){
            [[UIApplication sharedApplication]openURL:targetURL options:@{} completionHandler:nil];
        }
    }else{
        if([[UIApplication sharedApplication] canOpenURL:targetURL]){
            [[UIApplication sharedApplication] openURL:targetURL];
        }
    }
}

NSString * appendWithArray(NSArray *array, NSString *appendWordStr ,NSString *keyWord){
    NSMutableString *mutableStr = [NSMutableString new];
    for(int i=0; i<array.count; i++){
        if (i != 0) {
            [mutableStr appendString:appendWordStr];
        }
        NSString *string = [NSString stringWithFormat:@"%@",notNull([array[i] objectForKey:keyWord])?[array[i] objectForKey:keyWord]:@""];
        [mutableStr appendString:[NSString stringWithFormat:@"%@",string]];
    }
    return mutableStr;
}

NSString * appendWithArrayWithoutKeyWord(NSArray *array, NSString *appendWordStr){
    NSMutableString *mutableStr = [NSMutableString new];
    for(int i=0; i<array.count; i++){
        if (i != 0) {
            [mutableStr appendString:appendWordStr];
        }
        [mutableStr appendString:[NSString stringWithFormat:@"%@",array[i]]];
    }
    return mutableStr;
}

void createUIBezuerPath(UIView *view, UIRectCorner rectCorner){
    if (view.frame.size.height == 0 && view.frame.size.width == 0) {
        return;
    }
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view.bounds byRoundingCorners:rectCorner cornerRadii:CGSizeMake(kSize(30), kSize(30))];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    maskLayer.frame = view.bounds;
    maskLayer.path = maskPath.CGPath;
    view.layer.mask = maskLayer;
}




