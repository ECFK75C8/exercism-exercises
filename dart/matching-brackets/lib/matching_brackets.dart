  extension CheckIfBracket on String{
    bool get isOpenBracket => MatchingBrackets()._brackets.keys.contains(this);
    bool get isClosedBracket => MatchingBrackets()._brackets.values.contains(this);
  }

class MatchingBrackets {
  Map<String, String> _brackets = {'[': ']', '(': ')', '{': '}'};

  bool isPaired(String arg) {
    var found = <String>[];

    arg.split('').forEach((string) {
      if (string.isOpenBracket || string.isClosedBracket) found.add(string);
    });

    if (found.last.isOpenBracket || found.first.isClosedBracket) return false;
    var skippedBrackets = <String>[];

    for (int index = 0; index < found.length; index++) {
      if (found[index].isOpenBracket) {
        String openBracket = found[index];
        String nextBracket = found[index + 1];
        if (nextBracket.isClosedBracket && nextBracket != _brackets[openBracket])
          return false;
        else if (nextBracket.isOpenBracket) {
          skippedBrackets.add(openBracket);
        }
      } else {
        if (found[index] == _brackets[found[index - 1]])
          continue;
        else {
          if (skippedBrackets.isNotEmpty && found[index] == _brackets[skippedBrackets.last])
            skippedBrackets.removeLast();
          else
            return false;
        }
      }
    }
    return skippedBrackets.isEmpty;
  }
}

/* 
  Algorithm:
  1 Convert the string argument (passed to the function) into a list using split.
  2 Loop through the list and save all brackets  in order of occurence in variable found.
  3 Check to see if the first occurence in brackets found is a closing bracket. if yes return false (not a matching bracket).
  4 check to see if the last occurence inf brackets found is a opening bracket. if yes return false (not a matching bracket).
  5 if the last two condition passed, continue code execution.
  6 loop through the length of the `found` brackets.
  -- in the loop, first:
    i check if bracket found at that index is an opening bracket.
    6i-- if yes:
      ia. check if the next bracket is a closing bracket.
      ib. if the next bracket it's a closing bracket, check if it is the closing bracket of the opening bracket at index of step 6i.
      -- if No; return false. Not a matching bracket.
      -- if Yes: start loop again and increament index.
      ic. if next bracket is not a closing bracket rather an opening bracket. skip the opening bracket and store for reference in future.
    6ii-- if No:
      iia. check if the bracket found at the index of step 6ii is the closing bracket of the last index bracket (opening bracket). 
      -- if yes: start loop and increment the index;
      -- if no: 
        -iiia. Check if there is a skipped opening bracket.
          --if yes
            iva. Check if the closing bracket found at index 6ii matches the last skipped bracket.
            -- if yes. remove (pop) the last skipped opening bracket. start loop again and increase index.
            -- if no. return false no matching bracket.
          -- if no: no skipped opening bracket. return false. no matching bracket.
    6iii: After looping throung the length of the found brackets. if no condition warant false (no mathcing brackets).
      -check if there is any skipped opening brackets.
      -- if yes return false. No matching brackets.
      -- if no: All opening brackets have been matched. return true.
  */
