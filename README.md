# COMFUZZ
This is a compiler testing framework



## BugList for JS

| No.  | Compiler | Version | Link | Status | Contributor | Description | module |
| ---- | -------- | ------- | ---- | ------ | ----------- | ----------- | ------ |
| 1    |          |         |      |        |             |             |        |



## BugList for Java

| No.  | Compiler          | Version                    | Bug Report                                                         | Status         | Contributor                               | Description                                                  | Affected Component|
| ---- | ----------------- | -------------------------- | ------------------------------------------------------------ | -------------- | ----------------------------------------- | ------------------------------------------------------------ | ------ |
| 1    | OpenJ9-JDK8&JDK11 | jdk8u332-b02&jdk-11.0.15+1 | [OpenJ9_1](https://github.com/eclipse-openj9/openj9/issues/14872) | Verified&Fixed | [Yuan Wang](https://github.com/YuanWangC) | Checking is missing when giving the method System.loadLibrary an absolute path to the file. | jre    |
| 2    | OpenJ9-JDK8&JDK11 | jdk8u332-b02&jdk-11.0.15+1 | [OpenJ9_2](https://github.com/eclipse-openj9/openj9/issues/14873) | Verified&Fixed | [Yuan Wang](https://github.com/YuanWangC) | Wrong initialization to the cause of IllegalStateException in Throwable.initCause(). | jre    |
| 3    |                   |                            |                                                              |                |                                           |                                                              |        |
| 4    |                   |                            |                                                              |                |                                           |                                                              |        |

