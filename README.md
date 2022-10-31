# COMFUZZ

This is a compiler testing framework

## BugList for JS

| No.  |   Compiler   |                           Version                            |                             Link                             |     Status     |                         Contributor                          |                         Description                          | Affected Component | Remark                                   |
| :--: | :----------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------: | ---------------------------------------- |
|  1   | Jerryscript  | Jerryscript([fea10bb](https://github.com/jerryscript-project/jerryscript/commit/fea10bb7e3ac1f5e8c092d2e8b6c9e39256f56e3)) | [A question about Uint8Array operation](https://github.com/jerryscript-project/jerryscript/issues/5007) |     Fixed      | [Wen Yi](https://github.com/YiWen-y) & [Che Xiaokang](https://github.com/lionche) | jerryscript abnormally replace the first element of view with 0 |      Backend       | Generation via our program generator     |
|  2   | Jerryscript  | Jerryscript([6fe763f](https://github.com/jerryscript-project/jerryscript/commit/6fe763f1912c3ef82ec2ca31c40f186dde9c5a57)) | [Array concatenation exception](https://github.com/jerryscript-project/jerryscript/issues/5026) |    Verified    | [Wen Yi](https://github.com/YiWen-y) & [Che Xiaokang](https://github.com/lionche) & [Zhenye Fan](https://github.com/AidPaike) | about array literal handling which looks like it deleted all the vacancies |      Backend       | Generation via our program generator     |
|  3   | Jerryscript  | Jerryscript([6fe763f](https://github.com/jerryscript-project/jerryscript/commit/6fe763f1912c3ef82ec2ca31c40f186dde9c5a57)) | [A question about Array.prototype.sort](https://github.com/jerryscript-project/jerryscript/issues/5025) |    Verified    | [Wen Yi](https://github.com/YiWen-y) & [Che Xiaokang](https://github.com/lionche) & [Zhenye Fan](https://github.com/AidPaike) | The latest spec clarifies that NaN return value of the comparefn should be changed to +0.JerryScript hasn't implemented the latest spec yet |     Optimizer      | mutation via guided mutator              |
|  4   | Jerryscript  | Jerryscript([6fe763f](https://github.com/jerryscript-project/jerryscript/commit/6fe763f1912c3ef82ec2ca31c40f186dde9c5a57)) | [Variable Scope Problem](https://github.com/jerryscript-project/jerryscript/issues/5024) |  Undetermined  | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | jerryscript fails to deal with the scope of the global and local variables |       Parser       | generation from historical test programs |
|  5   | SpiderMonkey | C96.0([C96.0](https://github.com/ricardoquesada/Spidermonkey)) | [deleted/added property](https://bugzilla.mozilla.org/show_bug.cgi?id=1762188) |    Rejected     | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | Behavior difference between SpiderMonkey and Chrome/Safari with object enumeration with deleted/added property | Backend          |  mutation via genneral-purpose mutator |
|  6   | SpiderMonkey | C96.0([C96.0](https://github.com/ricardoquesada/Spidermonkey)) | [NaN values not normalised in ArrayNativeSort](https://bugzilla.mozilla.org/show_bug.cgi?id=1763996) | Verified&Fixed | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | Normalising NaN comparator results to 0 was added in ES6, but the twonumeric comparator functions were never updated to include this change. |     Optimizer      | mutation via guided mutator              |
|  7   |    Chakra    | ChakraCore([1.11.24.0](https://github.com/chakra-core/ChakraCore/releases/tag/v1.11.24)) | [for-loop optimization causes a null pointer exception](https://github.com/chakra-core/ChakraCore/issues/6817) | Verified&Fixed | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | after judging that !p is true , the function should return directly, but chakra terminates the program abnormally |     Optimizer      | generation from historical test programs |
|  8   |    Chakra    | ChakraCore([1.11.24.0](https://github.com/chakra-core/ChakraCore/releases/tag/v1.11.24)) | [arguments.callee can't get the correct result](https://github.com/chakra-core/ChakraCore/issues/6814) | Verified&Fixed | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | callee is a property of the arguments object. It can be used to refer to the currently executing function inside the function body of that function.But when executing this test case, chakra simply return nothing. |      Backend       | Generation via our program generator     |
|  9   |    Chakra    | ChakraCore([1.11.24.0](https://github.com/chakra-core/ChakraCore/releases/tag/v1.11.24)) | [chakra can't recognize spread_syntax ](https://github.com/chakra-core/ChakraCore/issues/6790) |     Fixed      | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | When executing the test cases that contain a spread operator,it not work. |       Parser       | mutation via general purpose mutator     |
|  10  |    Chakra    | ChakraCore([1.11.24.0](https://github.com/chakra-core/ChakraCore/releases/tag/v1.11.24)) | [chakra require () after catch](https://github.com/chakra-core/ChakraCore/issues/6807) |     Fixed      | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | It seems like chakra requires () after catch, or it won't work properly. |       Parser       | Generation via our program generator     |
|  11  |    Chakra    | ChakraCore([1.11.24.0](https://github.com/chakra-core/ChakraCore/releases/tag/v1.11.24)) | [A question about Date.now() ](https://github.com/chakra-core/ChakraCore/issues/6809) |    Rejected (By design)     | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | When executing this code, in the vast majority of cases, other engines output 0, but chakra outputs 5. |  Backend  |   Generation from historical test programs  |  
|  12  |    Chakra    | ChakraCore([1.11.24.0](https://github.com/chakra-core/ChakraCore/releases/tag/v1.11.24)) |                                                              |    suspect     | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | Null pointer, the program fails the assertion and exits abnormally. |                    |                                          |
|  13  |   graaljs    | graaljs([v21.3.0](https://github.com/oracle/graaljs/releases/tag/vm-21.3.0)) | [Object property modification problem](https://github.com/oracle/graaljs/issues/586) | Verified&Fixed | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) |             Object property modification problem             |     Optimizer      | mutation via general-purpose mutator     |
|  14  |   graaljs    | graaljs([v21.3.0](https://github.com/oracle/graaljs/releases/tag/vm-21.3.0)) | [A question about function declaration in switch](https://github.com/oracle/graaljs/issues/583) | Verified&Fixed | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | In JS,the function f() declared in the case should be promote to the scope of the function foo,graaljs does't work properly. |      Backend       | generation from historical test programs |
|  15  |   graaljs    | graaljs([v21.3.0](https://github.com/oracle/graaljs/releases/tag/vm-21.3.0)) | [Number.parse implementation error](https://github.com/oracle/graaljs/issues/585) | Verified&Fixed | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | If parseInt encounters a character that is not a numeral in the specified radix, it ignores it and all succeeding characters and returns the integer value parsed up to that point. parseInt truncates numbers to integer values. Leading and trailing spaces are allowed. |       Parser       | Generation via our program generator     |
|  16  |    Hermes    | hermes([v0.10.0](https://github.com/facebook/hermes/releases/tag/v0.10.0)) | [Array concatenation exception](https://github.com/facebook/hermes/issues/729) | Verified&Fixed | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) |               a bug in  array literal handling               |      Backend       | generation from historical test programs |
|  17  |    Hermes    | hermes([v0.10.0](https://github.com/facebook/hermes/releases/tag/v0.10.0)) | [Support for destructuring assignments in catch parameter](https://github.com/facebook/hermes/issues/680) |    Verified    | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | Hermes doesn't support destructuring assignments in catch parameters, so it reports an error. |       Parser       | generation from historical test programs |
|  18  |    Hermes    | 0.10.0([v0.10.0](https://github.com/facebook/hermes/releases/tag/v0.10.0)) | [Variable Scope Problem](https://github.com/facebook/hermes/issues/679) | Verified  | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | hermes fails to deal with the scope of the global and local variable |       Parser       | mutation via general-purpose mutator     |
|  19  |    Hermes    | hermes([v0.10.0](https://github.com/facebook/hermes/releases/tag/v0.10.0)) |                                                              |    suspect     | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | clearTimeout requires that the parameter type to be passed is not a 32-bit unsigned integer. If it is not satisfied, the assertion fails and the program exits. |                    |                                          |
|  20  |    Hermes    | hermes([v0.10.0](https://github.com/facebook/hermes/releases/tag/v0.10.0)) |                                                              |    suspect     | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | Hermes requires that when defining properties in eval, the property name must be a string literal, otherwise it cannot be converted to IR and the program will terminate. |                    |                                          |
|  21  |   quickjs    | quickjs([2022-03-07](https://github.com/bellard/quickjs/commit/2788d71e823b522b178db3b3660ce93689534e6d)) | [A bug in implementation of switch statement.](https://github.com/bellard/quickjs/issues/130) |  Undetermined  | [Yi Wen](https://github.com/YiWen-y) & [Xiaokang Che](https://github.com/lionche) | the scope of functions f() declared in switch expressions belong to the block scope |      Backend       | Generation via our program generator     |

## BugList for Java

| No.  | Compiler          | Version                    | Bug Report                                                   | Status         | Contributor                               | Description                                                  | Affected Component | Remarks                                 |
| ---- | ----------------- | -------------------------- | ------------------------------------------------------------ | -------------- | ----------------------------------------- | ------------------------------------------------------------ | ------------------ | --------------------------------------- |
| 1    | OpenJ9-JDK8&JDK11 | jdk8u332-b02&jdk-11.0.15+1 | [OpenJ9_1](https://github.com/eclipse-openj9/openj9/issues/14872) | Verified&Fixed | [Yuan Wang](https://github.com/YuanWangC) | Checking is missing when giving the method System.loadLibrary an absolute path to the file. | Backend            | generation from historical test program |
| 2    | OpenJ9-JDK8&JDK11 | jdk8u332-b02&jdk-11.0.15+1 | [OpenJ9_2](https://github.com/eclipse-openj9/openj9/issues/14873) | Verified&Fixed | [Yuan Wang](https://github.com/YuanWangC) | Wrong initialization to the cause of IllegalStateException in Throwable.initCause(). | Parser             | generation from historical test program |
| 3    | OpenJ9-JDK8&JDK11 | jdk8u332-b02&jdk-11.0.15+1 | [OpenJ9_3](https://github.com/eclipse-openj9/openj9/issues/14874) | Verified&Fixed | [Yuan Wang](https://github.com/YuanWangC) | When the engine executes the remainder operation, it directly assigns 0 to  the floating point non positive number calculation result. | Backend  | mutation via general-purpose mutator |
| 4    | OpenJ9-JDK11      | jdk-11.0.15+1              | [OpenJ9_4](https://github.com/eclipse-openj9/openj9/issues/15050) | Verified&Fixed | [Yuan Wang](https://github.com/YuanWangC) | When using the method "ensueCapacity" in the jdk11 version of Openj9, if the parameter is "Integer. MAX_VALUE+1", an OOM error will be reported. | Document           | generation from historical test program |
| 5    | OpenJ9-JDK11      | jdk-11.0.15+1              | [OpenJ9_5](https://github.com/eclipse-openj9/openj9/issues/15281) | Verified       | [Yuan Wang](https://github.com/YuanWangC) | When executing large-scale loops, Openj9 takes a long time and has low performance. Its JIT heuristics optimization failed to start properly. | Optimizer          | mutation via general-purpose mutator  |
| 6    | HotSpot-JDK8      | 8.0.332                    | [HotSpot_1](https://bugs.java.com/bugdatabase/view_bug.do?bug_id=8289724) | Verified       | [Yuan Wang](https://github.com/YuanWangC) | When compiling the source code, an unexpected error AssertionError occurs and is required to be submitted to the system | Backend              | generation from historical test program |
| 7    | OpenJ9-JDK8&JDK11 | jdk8u332-b02&jdk-11.0.15+1 | [OpenJ9_6](https://github.com/eclipse-openj9/openj9/issues/15544) | Verified       | [Yuan Wang](https://github.com/YuanWangC) | The performance of Openj9 is poor when executing triple loop, which is obviously different from that of HotSpot. | Optimizer          | mutation via guided mutators            |
| 8    | OpenJ9-JDK8&JDK11 | jdk8u332-b02&jdk-11.0.15+1 | [OpenJ9_7](https://github.com/eclipse-openj9/openj9/pull/15022) | Verified&Fixed | [Yuan Wang](https://github.com/YuanWangC) | JIT compiler may misjudge when checking available compiler threads. | Optimizer          |  generation from historical test program  |
| 9    | OpenJ9-JDK8&JDK11 | jdk8u332-b02&jdk-11.0.15+1 | [OpenJ9_8](https://github.com/eclipse-openj9/openj9/issues/15897) | Verified&Fixed | [Gao Jie](https://github.com/ayuan0828)   | When Openj9 executes the deleteCharAt (int index) method, it does not report an error if the boundary value is out of range. | Parser             | mutation via guided mutators    |
| 10   | OpenJ9-JDK8       | jdk8u332-b02               | [OpenJ9_9](https://github.com/eclipse-openj9/openj9/issues/15954) | Verified&Fixed | [Gao Jie](https://github.com/ayuan0828)   | When OpenJ9-jdk8 (using the CompactStrings parameter) calls the "insert" function, if the parameter "str" contains "character. MAX_VALUE", the last part of the characters in the result will be discarded. | Optimizer          | mutation via guided mutators            |
| 11   | OpenJ9-JDK8&JDK11 | jdk8u332-b02&jdk-11.0.15+1 | [OpenJ9_10](https://github.com/eclipse-openj9/openj9/issues/16188) | Verified&Fixed | [Gao Jie](https://github.com/ayuan0828)   | When the offsetByCodePoints (int index, int codePointOffset) function is called, if the index value obtained is negative, OpenJ9 using the "CompactStrings"parameter will not get the "IndexOutOfBoundsException". | Optimizer          | mutation via guided mutators            |
| 12   | GraalVM-JDK11     | v22.0.0.2                  | [GraalVM_1](https://github.com/oracle/graal/issues/5269)     | Discussion     | [Gao Jie](https://github.com/ayuan0828)   | When running the test case, the program go to the catch statement to capture "OutOfMemoryError". The expected result should be no error reported, just as hotspot did, but GraalVM(jdk11) still throws "OutOfMemoryError". | Parser    | mutation via guided mutators  |
| 13 | HotSpot-JDK8&JDK11 | 8.0.332 | [HotSpot_1](https://bugs.java.com/bugdatabase/view_bug.do?bug_id=JDK-8295930) | Verified | [Gao Jie](https://github.com/ayuan0828) | When the "wait (long time, int frac)" method is called with time=long. MAX_ VALUE and frac>0 (for example, "1"), HotSpot will capture IllegalArgumentException for "timeout value is negative". | Parser | generation from historical test program |

