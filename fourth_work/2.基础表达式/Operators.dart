void main(List<String> args) {
  /*
    Arithmetic operators
#
Dart supports the usual arithmetic operators, as shown in the following table.

Operator	Meaning
+	    Add
-	    Subtract
-expr	Unary minus, also known as negation (reverse the sign of the expression)
*	    Multiply
/	    Divide
~/	  Divide, returning an integer result
%	    Get the remainder of an integer division (modulo)

  */
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder

  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

/*
  Operator	Meaning
++var	var  =  var + 1 (expression value is var + 1)
var++	var  =  var + 1 (expression value is var)
--var	var  =  var - 1 (expression value is var - 1)
var--	var  =  var - 1 (expression value is var)
*/

  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a after b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a after b gets its value.
  assert(a != b); // -1 != 0
/*
Equality and relational operators
#
The following table lists the meanings of equality and relational operators.

Operator	Meaning
==	Equal; see discussion below
!=	Not equal
>	Greater than
<	Less than
>=	Greater than or equal to
<=	Less than or equal to
*/
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

  /*
  Type test operators
#
The as, is, and is! operators are handy for checking types at runtime.

Operator	Meaning
as	Typecast (also used to specify library prefixes)
is	True if the object has the specified type
is!	True if the object doesn't have the specified type

The result of obj is T is true if obj implements the interface specified by T.
For example, obj is Object? is always true.

Use the as operator to cast an object to a particular type if and only if you 
are sure that the object is of that type. Example:

(employee as Person).firstName = 'Bob';
content_copy
If you aren't sure that the object is of type T,
 then use is T to check the type before using the object.
if (employee is Person) {
  // Type check
  employee.firstName = 'Bob';
}
  */

  /*
  Bitwise and shift operators
#
You can manipulate the individual bits of numbers in Dart. Usually, 
you'd use these bitwise and shift operators with integers.

Operator	Meaning
&	AND
|	OR
^	XOR
~expr	Unary bitwise complement (0s become 1s; 1s become 0s)
<<	Shift left
>>	Shift right
>>>	Unsigned shift right
  */
final value = 0x22;
final bitmask = 0x0f;

assert((value & bitmask) == 0x02); // AND
assert((value & ~bitmask) == 0x20); // AND NOT
assert((value | bitmask) == 0x2f); // OR
assert((value ^ bitmask) == 0x2d); // XOR

assert((value << 4) == 0x220); // Shift left
assert((value >> 4) == 0x02); // Shift right

// Shift right example that results in different behavior on web
// because the operand value changes when masked to 32 bits:
assert((-value >> 4) == -0x03);

assert((value >>> 4) == 0x02); // Unsigned shift right
assert((-value >>> 4) > 0); // Unsigned shift right
}