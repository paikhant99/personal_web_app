
import 'package:flutter/material.dart';

class HomeScreenViewmodel extends ChangeNotifier{

  int pageNo = 0;

  void setPageNo(int changedPageNo){
    pageNo = changedPageNo;
    notifyListeners();
  }

}