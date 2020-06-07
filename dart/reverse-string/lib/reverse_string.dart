// String reverse(String string) {
//   // Put your code here
//   String newString = '';
//   for (int i = string.length - 1; i >= 0; i--){
//     newString += string[i];
//   }

//   return newString;
// }

String reverse(String string){
  return string.split('').reversed.join();
}
