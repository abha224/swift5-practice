//only for ios env 




//Check if a File Exists at a Path

NSFileManager *fileManager = [NSFileManager defaultManager];

//Get documents directory
NSArray *directoryPaths = NSSearchPathForDirectoriesInDomains
(NSDocumentDirectory, NSUserDomainMask, YES);
NSString *documentsDirectoryPath = [directoryPaths objectAtIndex:0];

if ([fileManager fileExistsAtPath:@""]==YES) {
   NSLog(@"File exists");
}

// Comparing Two File Contents
if ([fileManager contentsEqualAtPath:@"FilePath1" andPath:@" FilePath2"]) {
   NSLog(@"Same content");
}

//Check if Writable, Readable, and Executable
if ([fileManager isWritableFileAtPath:@"FilePath"]) {
   NSLog(@"isWritable");
}

if ([fileManager isReadableFileAtPath:@"FilePath"]) {
   NSLog(@"isReadable");
}

if ( [fileManager isExecutableFileAtPath:@"FilePath"]) {
   NSLog(@"is Executable");
}

//Move File
if([fileManager moveItemAtPath:@"FilePath1" 
   toPath:@"FilePath2" error:NULL]) {
   NSLog(@"Moved successfully");
}

//Copy file 
if ([fileManager copyItemAtPath:@"FilePath1" 
   toPath:@"FilePath2"  error:NULL]) {
   NSLog(@"Copied successfully");
}

//Remove file
if ([fileManager removeItemAtPath:@"FilePath" error:NULL]) {
   NSLog(@"Removed successfully");
}

// Read File
NSData *data = [fileManager contentsAtPath:@"Path"];

// Write File
[fileManager createFileAtPath:@"" contents:data attributes:nil];