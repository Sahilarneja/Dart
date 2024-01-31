import 'dart:io';
void main(){
  List<int> inputList=[1,2,2,3,4,4,5,5];

  List<int> result=removeDuplicates(inputList);

  print("Original List: $inputList");
  print("List without Duplicates: $result");
}

List<int> removeDuplicates(List<int>inputList){
  List<int> resultList=[];

  for(int element in inputList){
    if(!resultList.contains(element)){
      resultList.add(element);
    }
  }
  return resultList;
}