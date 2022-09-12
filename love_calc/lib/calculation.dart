import 'dart:core';

int calculation({String firstName,String secondName}){
  int finalScore;

  List<String> firstList = firstName.toLowerCase().split('');
  List<String> secondList = secondName.toLowerCase().split('');
  
  List<String> magicWord = firstList + "love".split('') + secondList;
  print(magicWord);
  
  var nameMap = new Map();
  magicWord.forEach((f){
    nameMap.containsKey(f) ? nameMap[f]++ : nameMap[f] = 1;
  });  
  
  print(nameMap.values);

  List magicCode = nameMap.values.toList();
  print(magicCode);

  List score;

  while(magicCode.length > 2)  {
    score = _calculate(magicCode);
    magicCode = score;
    print(score);
  }

  finalScore = magicCode[0] * 10 + magicCode[1];
  print(finalScore);

  return finalScore;
}

List _calculate(List magicCode){
  int countSum;


List score = new List();

  do
  {
    countSum = magicCode.first + magicCode.last;
    if(countSum>9) countSum -= 9;
    score.add(countSum);
    magicCode.removeLast();
    magicCode.removeAt(0);  
  } while (magicCode.length > 2);

  print(magicCode);

  if(magicCode.isNotEmpty){
    score.add(magicCode);
  }

  return score;
}