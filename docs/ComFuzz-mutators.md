# SIM

### Similar functions(JS)

Between different classes:

- String() / toString()
- Number() / parseInt / parseFloat

- RegExp.prototype.exec / RegExpprototype.test
- RegExp.prototype[@@match]  / RegExp.prototype.match
- RegExp.prototype[@@matchAll ] / String.prototype.matchAll
- RegExp.prototype[@@search] / String.prototype.search
- RegExp.prototype[@@replace] / String.prototype.replace
- RegExp.prototype[@@split] / String.prototype.split

In individual class:

- String.substr / String.substring / String.slice
- String.charAt / String.indexOf
- String.prototype.indexOf / String.prototype.lastIndexOf
- String.toLowerCase / String.toUpperCase
- Array.push / Array.pop
- Array.sort / Array.reverse
- Array.shift / Array.unshift
- Object.keys / Object.getOwnPropertyNames
- Function.call / Function.apply
- Number.toFixed / Number.toPrecision

### Same Return Value(JS)



### Similar functions(Java)

We collected totally 534 groups methods that using the same name and different parameter lists from [standard document](https: /  / docs.oracle.com / javase / 8 / docs / api / ). Here are information about methods in `String` and named as `lastIndexOf`.

| Method Name | Param Info                            |
| ----------- | ------------------------------------- |
| lastIndexOf | {"ch": "int"}                         |
| lastIndexOf | {"ch": "int", "fromIndex": "int"}     |
| lastIndexOf | {"str": "String"}                     |
| lastIndexOf | {"str": "String", "fromIndex": "int"} |



### Same Return Value(Java)

We collected totally 27445 methods in 2385 classes from [standard document](https: /  / docs.oracle.com / javase / 8 / docs / api / ). Here are information about methods in `String` and return type is `int`.

| Method Name         | Param Info                                 |
| ------------------- | ------------------------------------------ |
| length              | {}                                         |
| codePointAt         | {"index": "int"}                           |
| codePointBefore     | {"index": "int"}                           |
| codePointCount      | {"beginIndex": "int", "endIndex": "int"}   |
| offsetByCodePoints  | {"index": "int", "codePointOffset": "int"} |
| compareTo           | {"anotherString": "String"}                |
| compareToIgnoreCase | {"str": "String"}                          |
| hashCode            | {}                                         |
| indexOf             | {"ch": "int"}                              |
| indexOf             | {"ch": "int", "fromIndex": "int"}          |
| lastIndexOf         | {"ch": "int"}                              |
| lastIndexOf         | {"ch": "int", "fromIndex": "int"}          |
| indexOf             | {"str": "String"}                          |
| indexOf             | {"str": "String", "fromIndex": "int"}      |
| lastIndexOf         | {"str": "String"}                          |
| lastIndexOf         | {"str": "String", "fromIndex": "int"}      |



# BOUN

### Boundary Value(JS)



### Boundary Value(Java)

| Data Type | Maximum Value       | Minimum Value       | Positive Infinity        | Negative Infinity        | NaN        |
| --------- | ------------------- | ------------------- | ------------------------ | ------------------------ | ---------- |
| Integer   | Integer.MAX_VALUE   | Integer.MIN_VALUE   |                          |                          |            |
| Short     | Short.MAX_VALUE     | Short.MIN_VALUE     |                          |                          |            |
| Long      | Long.MAX_VALUE      | Long.MIN_VALUE      |                          |                          |            |
| Byte      | Byte.MAX_VALUE      | Byte.MIN_VALUE      |                          |                          |            |
| Character | Character.MAX_VALUE | Character.MIN_VALUE |                          |                          |            |
| Float     | Float.MAX_VALUE     | Float.MIN_VALUE     | Float.POSITIVE_INFINITY  | Float.NEGATIVE_INFINITY  | Float.NaN  |
| Double    | Double.MAX_VALUE    | Double.MIN_VALUE    | Double.POSITIVE_INFINITY | Double.NEGATIVE_INFINITY | Double.NaN |



# REPO

### Operators(JS)

### Operators(Java)

| Operator Type | Available Operator List         |
| ------------- | ------------------------------- |
| unary         | [+,-]                           |
|               | [++,--]                         |
| binary        | [==,!=]                         |
|               | [>,<,>=,<=]                     |
|               | [+,-,*, / ,%,^]                 |
| assign        | [+=,-=,*=, / +,>=,>>>=,\|=,\&=] |



#  INSC 

### Conditional Statement(JS)

### Conditional Statement(Java)

There are totally 5 kinds of conditional statements will be selected:

- if
- if-else
- if-else if-else
- try-catch
- switch

For if statement, a condition will be generated according to declared variables in the test case. Here are examples:

| Always True / False | Boolean Expression                   | Variable Declaration                                         |
| ------------------- | ------------------------------------ | ------------------------------------------------------------ |
| Always True         | GTe.length <= 10&&GTe[8]==-152072164 | [int[] GTe = { 0, 8, 1659535291, 8, 0, 2, 8, 6, -152072164, 0 };] |
| Always False        | myjvm_par0 > 7                       | [int myjvm_par0 = 6;]                                        |

