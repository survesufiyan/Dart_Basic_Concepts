void main(){
  /* what is List and Set in Dart?
   * List: An ordered collection of items that can contain duplicates.
   * Set: An unordered collection of unique items, where each item can only appear once.
   * Both List and Set are part of the Dart core library and are used to store collections of data.
   * Lists maintain the order of elements, while Sets do not.
   * Lists are indexed, meaning you can access elements by their position, while Sets do not
   * have indices.
   * Lists can contain duplicate elements, while Sets automatically remove duplicates.
   * Lists are implemented as arrays, while Sets are implemented as hash tables.
   * Lists are useful when you need to maintain the order of elements or allow duplicates,
   * while Sets are useful when you need to ensure uniqueness and do not care about the order
   * of elements.
   * In Dart, both List and Set are generic types, meaning you can specify the type of elements they contain.
   * For example, List<int> is a list of integers, and Set<String> is a set of strings.
   * You can create a List or Set using literals or constructors.
   * Lists can be created using square brackets [], while Sets can be created using curlybraces {}.
   * You can also create empty Lists and Sets using List() and Set() constructors.
   * Both List and Set provide various methods for adding, removing, and manipulating elements.

   In flutter, Lists and Sets are commonly used to manage collections of data, such as
   * items in a shopping cart, user preferences, or any other data that requires storage and
   * manipulation. They are essential for building dynamic and interactive applications.
   * Lists and Sets are also used in various algorithms and data structures, such as sorting,
   * searching, and filtering data. They are fundamental concepts in Dart programming and are
   * widely used in Flutter development.
   * In this code, we will explore how to create and manipulate Lists and Sets in Dart
   * using various methods and operations.
   * We will demonstrate how to create Lists and Sets, add and remove elements, check for
   * existence of elements, and perform operations like shuffling and sorting.
   * We will also highlight the differences between Lists and Sets in terms of their properties
   * and behaviors.

   example code to demonstrate the use of List in Flutter?
   Code:
   * This code demonstrates how to create and manipulate Lists and Sets in Flutter.
   Children: [
       const Text(
         'List and Set in Dart',
         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
       ),
       const SizedBox(height: 20),
       const Text(
         'List: An ordered collection of items that can contain duplicates.',
         style: TextStyle(fontSize: 16),
   ]

   example code to demonstrate the use of set in Flutter?
   Code:
   * This code demonstrates how to create and Sets in Flutter.
   code:
    Set<String> mySet = {'apple', 'banana', 'orange'};
    mySet.add('grape');
    mySet.remove('banana');
    print(mySet); // Output: {apple, orange, grape}
*/
  var list = [1, 2, 3, 4, 5];
  print("List: $list");

  // Set
  var set = {1, 2, 3, 4, 5};
  print("Set: $set");

  // Adding elements to List
  list.add(6);
  print("Updated List: $list");
  
  // Suffing elements to List
     list.shuffle();
     print("Shuffled List: $list");

  // Removing elements from List
  list.remove(2);
  print("List after removing 2: $list");

  // Adding elements to Set
  set.add(6);
  print("Updated Set: $set");

  // Shuffling elements in Set
  // Note: Sets do not maintain order, so shuffling is not applicable.

  // Removing elements from Set
  set.remove(2);
  print("Set after removing 2: $set");

  // Checking if an element exists in List
  print("Does List contain 3? ${list.contains(3)}");

  // Checking if an element exists in Set
  print("Does Set contain 3? ${set.contains(3)}");
}
