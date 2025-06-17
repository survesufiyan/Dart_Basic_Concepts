void main(){
       /*why we used var keyword 
       In Dart, the var keyword is used to declare a variable without explicitly specifying its type. 
       When you use var, Dart automatically infers the variable's type based on the value assigned to it. 
       This makes the code shorter and easier to read, especially when the type is obvious from the context.*/
    var name= "Prosmart";
    var count = 10;       // Dart infers that 'count' is an int
    print(name);
    print(count);
 
    /* why we used final keyword
       In Dart, the final keyword is used to declare a variable whose value can be set only once. 
       After a final variable is assigned, it cannot be changed. 
       This is useful when you want to create constants whose value is determined at runtime.
    */   
    final age = 25;      // Dart infers that 'age' is an int
    print(age);

    /* why we used const keyword
       In Dart, the const keyword is used to declare a compile-time constant. 
       A const variable must be assigned a value that is known at compile time, and it cannot be changed.
       This is useful for defining constants that are fixed and known at the time of writing the code.
    */
    const pi = 3.14;     // Dart infers that 'pi' is a double
    print(pi);

      /* why we used dynamic keyword
         In Dart, the dynamic keyword is used to declare a variable that can hold values of any type. 
         When you use dynamic, you are telling Dart that the variable's type can change at runtime, 
         and you are opting out of static type checking for that variable.
      */

      dynamic variable = "Hello"; // Initially a String
      print(variable);
      variable = 42; // Now an int
      print(variable);

      /* why we used Object keyword
         In Dart, the Object type is the root of the Dart type hierarchy. 
         Every class in Dart implicitly extends the Object class, and it can be used to declare a variable that can hold any object.
         However, unlike dynamic, Object does not allow you to call methods or access properties that are not defined in the Object class without casting.
      */
      Object obj = "Hello"; // Initially a String
      print(obj);
      obj = 42; // Now an int
      print(obj);

      /* why we used late keyword
         In Dart, the late keyword is used to declare a variable that will be initialized later, 
         but before it is accessed. This allows you to defer the initialization of a variable until it is actually needed.
         It is particularly useful for variables that cannot be initialized at the point of declaration.
      */
      late String description;
      description = "This is a late initialized variable.";
      print(description);

      /* How we used nullable keyword
         In Dart, the nullable keyword is used to indicate that a variable can hold a null value
         In Dart, you can make a type nullable by appending a question mark (?) to the type name.
         This is useful when you want to allow a variable to have no value or to represent the absence of a value.
      */
      
      String? nullableString; // This variable can hold a String or null
      nullableString = "This is a nullable string.";
      print(nullableString);
      nullableString = null; // Now it holds a null value
      print(nullableString);
      // Note: In Dart, if you want to use a variable that can be null, you must handle it appropriately to avoid runtime errors.
}