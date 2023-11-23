import 'dart:io';

// Define a function to calculate the price based on the measure and the quantity
double calculatePrice(int category, int quantity) {
  // Define the prices of each measure
  double bucketUnitPrice = 50;
  double trashBagUnitPrice = 75;
  double wheelbarrowUnitPrice = 100;

  // Define a variable to store the price
  double price;

  // Use a switch statement to assign the price based on the measure
  switch (category) {
    case 1: // If the measure is 1, use the bucket price
      price = bucketUnitPrice;
      break;
    case 2: // If the measure is 2, use the trash bag price
      price = trashBagUnitPrice;
      break;
    case 3: // If the measure is 3, use the wheelbarrow price
      price = wheelbarrowUnitPrice;
      break;
    default: // If the measure is invalid, return 0
      return 0;
  }

  // Multiply the price by the quantity and return the result
  return price * quantity;
}

// Define a main function to test the program
void main() {
  // Ask the user to enter the measure
  print('What is your Category in?');
  print('- Enter 1 for Bucket');
  print('- Enter 2 for Trash Bag');
  print('- Enter 3 for Wheelbarrow');

  // Read the user input as an integer
  String? input = stdin.readLineSync();
  int category =
      int.parse(input ?? '0'); // Use 0 as the default value if input is null

  // Ask the user to enter the quantity
  print('How many do you have?');

  // Read the user input as an integer
  input = stdin.readLineSync();
  int quantity =
      int.parse(input ?? '0'); // Use 0 as the default value if input is null

  // Call the calculatePrice function and store the result
  int result = calculatePrice(category, quantity).round();

  // Print the result
  print('The price is ${result} FCFA.');

  // Ask the user how much they want to pay
  print('How much do you want to pay?');

  // Read the user input as a double
  input = stdin.readLineSync();
  double offer =
      double.parse(input ?? '0'); // Use 0 as the default value if input is null

  // Define a variable to store the minimum acceptable price as 75% of the result
  int minimum = (result * 0.75).round();

  // Compare the offer with the minimum and print the response
  if (offer < minimum) {
    // If the offer is too low, reject it
    print('Your price is too low. Please pay at least ${minimum} FCFA.');
  } else {
    // If the offer is equal or higher than the minimum, accept it
    print('Accepted. The Agent is on his way please be patient!');
  }
}
