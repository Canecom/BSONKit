#BSONKit

The BSONKit is an Objective-C framework for decoding binary JSON according to the BSON specification http://bsonspec.org

This is a modification of the original BSONKit created by Mattias Levin: https://github.com/mattiaslevin/BSONKit
I made a lot of bug fixes and cleanups. This is tested on iOS, but should work on Os-X as well.

It doesn't use ARC, but could be easily converted to use it.

####Type conversion rules

BSON types are converted into Objective-C types according to the table below:

<table border="1">
<tr><th>BSON type</th><th>Objective-c type</th></tr>
<tr><td>Document</td><td>NSDictionary</td></tr>
<tr><td>Floating point</td><td>double</td></tr>
<tr><td>UTF-8 string</td><td>NSString</td></tr>
<tr><td>Array</td><td>NSArray</td></tr>
<tr><td>Binary data</td><td>NSData</td></tr>
<tr><td>ObjectId</td><td>NSData</td></tr>
<tr><td>Boolean</td><td>BOOL</td></tr>
<tr><td>UTC datestamp</td><td>long long</td></tr>
<tr><td>Null value</td><td>nil</td></tr>
<tr><td>Regular expression</td><td>NSArray with two objects - regexp pattern (NSString) and options (NSString)</td></tr>
<tr><td>Javascript code</td><td>NSString</td></tr>
<tr><td>Symbol</td><td>NSString</td></tr>
<tr><td>Javascript code with scope</td><td>NSArray with two objects - the Javascript code (NSString) and scope variables (NSDictionary)</td></tr>
<tr><td>32-bit integer</td><td>NSInteger</td></tr>
<tr><td>Timestamp</td><td>long long</td></tr>
<tr><td>64-bit integer</td><td>long long</td></tr>
<tr><td>Min key</td><td>TBD</td></tr>
<tr><td>Max key</td><td>TBD</td></tr>
</table>

##Interface

The interface for performing the decoding is very simple:

```objective-c
// Get a decoder instance
+ (id)decoder;
// Start decoding a BSON byte array
- (id)decode:(NSData*)source withError:(NSError**)error;
```

There is also a convenience NSData category:
```objective-c
// Decoding a BSON byte array
- (id)decodeBSONWithError:(NSError**)error;
```
