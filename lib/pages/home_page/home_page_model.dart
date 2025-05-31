import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<CardDataTypeStruct> mapCards = [];
  void addToMapCards(CardDataTypeStruct item) => mapCards.add(item);
  void removeFromMapCards(CardDataTypeStruct item) => mapCards.remove(item);
  void removeAtIndexFromMapCards(int index) => mapCards.removeAt(index);
  void insertAtIndexInMapCards(int index, CardDataTypeStruct item) =>
      mapCards.insert(index, item);
  void updateMapCardsAtIndex(
          int index, Function(CardDataTypeStruct) updateFn) =>
      mapCards[index] = updateFn(mapCards[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
