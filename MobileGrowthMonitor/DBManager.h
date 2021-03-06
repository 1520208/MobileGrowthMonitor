//
//  DBManager.h
//  MobileGrowthMonitor
//
//  Created by Jacqueline on 31.03.17.
//  Copyright © 2017 Jacqueline Franßen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DBManager : NSObject

@property (nonatomic, strong) NSString *documentsDirectory;
@property (nonatomic, strong) NSString *databaseFilename;
@property (nonatomic, strong) NSMutableArray *arrResults;
@property (nonatomic, strong) NSMutableArray *arrColumnNames;
@property (nonatomic) int affectedRows;
@property (nonatomic) long long lastInsertedRowID;


-(void)runQuery:(const char *)query isQueryExecutable:(BOOL)queryExecutable;
-(instancetype)initWithDatabaseFilename:(NSString *)dbFilename;
-(void) copyDatabaseIntoDocumentsDirectory;


-(NSArray *)loadDataFromDB:(NSString *)query;

-(void)executeQuery:(NSString *)query;

@end
