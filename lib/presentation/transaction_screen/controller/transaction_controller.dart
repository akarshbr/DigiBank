import 'package:digibank/core/static_data/static_data.dart';
import 'package:flutter/material.dart';

class TransactionController extends ChangeNotifier {
  final List<Map<String, dynamic>> _transactionData = List.from(StaticData.transactions);

  void sortDataByDate() {
    _transactionData.sort((a, b) => a['date'].compareTo(b['date']));
    notifyListeners();
  }
    List<Map<String, dynamic>> get transactionData => _transactionData;

}