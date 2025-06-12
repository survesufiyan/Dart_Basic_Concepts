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
}