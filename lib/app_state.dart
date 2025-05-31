import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cards = prefs
              .getStringList('ff_cards')
              ?.map((x) {
                try {
                  return CardDataTypeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cards;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CardDataTypeStruct> _cards = [
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"CASTLE\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/h03z1a7lvdjk/Screenshot_2025-05-29_at_22.04.15.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"SOLDIER\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/gfe9h33zmy0x/Screenshot_2025-05-29_at_22.04.18.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"PALADIN\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/3yyk22zbrr58/Screenshot_2025-05-29_at_22.04.22.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"ARCHER\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/q3zfuesn28ke/Screenshot_2025-05-29_at_22.04.25.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"SCOUT TOWER\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/3xzg14j01exj/Screenshot_2025-05-29_at_22.04.28.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"FARM\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/kqttxsyupi4j/Screenshot_2025-05-29_at_22.04.30.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"WILDCARD\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/n07zhfha29je/Screenshot_2025-05-29_at_22.04.33.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"BLACKSMITH\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/7k2k57g0z4qi/Screenshot_2025-05-29_at_22.04.36.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"STEEL COAT\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/v7kixc2xrsn4/Screenshot_2025-05-29_at_22.04.40.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"CITADEL\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/u9sndxcizyvy/Screenshot_2025-05-29_at_22.04.51.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"WIZARD\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/e753f2xyzl3c/Screenshot_2025-05-29_at_22.04.54.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"WARLOCK\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/dv1u5pky5khq/Screenshot_2025-05-29_at_22.04.57.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"STATIC\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/tkehbahv0y0l/Screenshot_2025-05-29_at_22.04.59.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"OFFERING\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/bfjaj5f5c2lv/Screenshot_2025-05-29_at_22.05.02.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"COMBUSTION\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/acxrarrwe140/Screenshot_2025-05-29_at_22.05.04.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"SHAMAN\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/n27435k4hmzz/Screenshot_2025-05-29_at_22.05.07.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"LIBRARY\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/fr7tjw7j0yu7/Screenshot_2025-05-29_at_22.05.09.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"SPIRE\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/wadyvxlx0nfg/Screenshot_2025-05-29_at_22.05.12.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"PAGODA\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/s3dxhmsd5uiw/Screenshot_2025-05-29_at_22.05.47.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"BOMBER\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/nnd53bnrtc8p/Screenshot_2025-05-29_at_22.05.50.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"IMP\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/6bvb1jnlxlqw/Screenshot_2025-05-29_at_22.05.53.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"CARNAGE\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/h88uk983li5f/Screenshot_2025-05-29_at_22.05.56.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"SACRIFICE\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/r333vwhzuf9k/Screenshot_2025-05-29_at_22.05.58.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"VAMPIRISM\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/34mqlp7pt61x/Screenshot_2025-05-29_at_22.06.00.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"MANGLER\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/9024m5pu2xnb/Screenshot_2025-05-29_at_22.06.02.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"CEMETERY\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/k3yzewi5rko5/Screenshot_2025-05-29_at_22.06.04.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"DEMON\'S ALTAR\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/zjmmfy1w0m91/Screenshot_2025-05-29_at_22.06.07.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"PALACE\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/st2cloj9y1i3/Screenshot_2025-05-29_at_22.05.19.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"BEACON\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/y6lnt2ttnzfh/Screenshot_2025-05-29_at_22.05.23.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"VAULT\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/mjuy5gsarmnr/Screenshot_2025-05-29_at_22.05.26.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"DISPENSER\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/o80ttooi92ge/Screenshot_2025-05-29_at_22.05.29.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"MIDAS TOUCH\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/eedyrv8ctt4m/Screenshot_2025-05-29_at_22.05.32.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"MORTGAGE\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/x7c3y6wrtxgj/Screenshot_2025-05-29_at_22.05.34.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"OVER-INVEST\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/v7murfep4wse/Screenshot_2025-05-29_at_22.05.37.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"MERCENARY\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/bp2xi9mb37fd/Screenshot_2025-05-29_at_22.05.39.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"THIEF\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/x5z2vi4rip42/Screenshot_2025-05-29_at_22.05.41.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"TREANT\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/y14lqo3qt3t5/Screenshot_2025-05-29_at_22.06.15.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"MYCELIUM\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/adfd5dramnfc/Screenshot_2025-05-29_at_22.06.18.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"CLONE\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/7qxttj97dc6a/Screenshot_2025-05-29_at_22.06.21.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"ELF\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/hqzsuo7f45ti/Screenshot_2025-05-29_at_22.06.23.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"BOAR\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/0c6stcv1mbqv/Screenshot_2025-05-29_at_22.06.26.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"ORCHARD\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/5znt5uvds395/Screenshot_2025-05-29_at_22.06.29.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"PROCREATE\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/ofwke7tutna0/Screenshot_2025-05-29_at_22.06.31.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"FOREST\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/6mcshny6x85k/Screenshot_2025-05-29_at_22.06.33.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"POISON VITAL\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/lyp4v6495bph/Screenshot_2025-05-29_at_22.06.36.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"STRONGHOLD\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/43grvh5ii905/Screenshot_2025-05-29_at_22.06.41.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"CAULDRON\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/5dc2dprwaz95/Screenshot_2025-05-29_at_22.06.44.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"TREBUCHET\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/znfqu12zq5ab/Screenshot_2025-05-29_at_22.06.47.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"QUARRY\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/ohe05qmvgixv/Screenshot_2025-05-29_at_22.06.49.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"EARTHWORKS\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/0f0yki1uc5x4/Screenshot_2025-05-29_at_22.06.51.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"BALLISTA\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/c0xry3w5mq21/Screenshot_2025-05-29_at_22.06.54.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"TRAPPER\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/hpn811ap1rrg/Screenshot_2025-05-29_at_22.06.56.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"WALLMAKER\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/878pcfcegmdg/Screenshot_2025-05-29_at_22.06.58.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"FLAMETOWER\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/kk1yl2c0cwkn/Screenshot_2025-05-29_at_22.07.00.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"MOTHERSHIP\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/g8eu8pvmjxt3/Screenshot_2025-05-29_at_22.07.06.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"EXECUTIONER\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/dqvq8s81147u/Screenshot_2025-05-29_at_22.07.08.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"DEFENDER\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/jhkutnv8tcqy/Screenshot_2025-05-29_at_22.07.11.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"LAB RAT\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/jk12m2eju98r/Screenshot_2025-05-29_at_22.07.13.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"CONCABULATOR\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/js2oxq6u8t9e/Screenshot_2025-05-29_at_22.07.15.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"REINFORCE\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/befif9c8pcm9/Screenshot_2025-05-29_at_22.07.18.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"PRECISION\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/ckvjgikmo3fb/Screenshot_2025-05-29_at_22.07.20.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"CONVERTER\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/lpn35iaxoyeb/Screenshot_2025-05-29_at_22.07.22.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"OVERHAUL\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kings9-lkgjj0/assets/iw79mqif8ffn/Screenshot_2025-05-29_at_22.07.24.png\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}'))
  ];
  List<CardDataTypeStruct> get cards => _cards;
  set cards(List<CardDataTypeStruct> value) {
    _cards = value;
    prefs.setStringList('ff_cards', value.map((x) => x.serialize()).toList());
  }

  void addToCards(CardDataTypeStruct value) {
    cards.add(value);
    prefs.setStringList('ff_cards', _cards.map((x) => x.serialize()).toList());
  }

  void removeFromCards(CardDataTypeStruct value) {
    cards.remove(value);
    prefs.setStringList('ff_cards', _cards.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCards(int index) {
    cards.removeAt(index);
    prefs.setStringList('ff_cards', _cards.map((x) => x.serialize()).toList());
  }

  void updateCardsAtIndex(
    int index,
    CardDataTypeStruct Function(CardDataTypeStruct) updateFn,
  ) {
    cards[index] = updateFn(_cards[index]);
    prefs.setStringList('ff_cards', _cards.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCards(int index, CardDataTypeStruct value) {
    cards.insert(index, value);
    prefs.setStringList('ff_cards', _cards.map((x) => x.serialize()).toList());
  }

  List<CardDataTypeStruct> _myStrat = [
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/890/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/581/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/742/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/954/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/745/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/320/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/435/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/102/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/774/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/938/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/133/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/464/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/332/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/939/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/39/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/876/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/60/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/584/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/733/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/530/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/175/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/460/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/937/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/201/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}')),
    CardDataTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"image\":\"https://picsum.photos/seed/563/600\",\"description\":\"Hello World\",\"stats\":\"Hello World\"}'))
  ];
  List<CardDataTypeStruct> get myStrat => _myStrat;
  set myStrat(List<CardDataTypeStruct> value) {
    _myStrat = value;
  }

  void addToMyStrat(CardDataTypeStruct value) {
    myStrat.add(value);
  }

  void removeFromMyStrat(CardDataTypeStruct value) {
    myStrat.remove(value);
  }

  void removeAtIndexFromMyStrat(int index) {
    myStrat.removeAt(index);
  }

  void updateMyStratAtIndex(
    int index,
    CardDataTypeStruct Function(CardDataTypeStruct) updateFn,
  ) {
    myStrat[index] = updateFn(_myStrat[index]);
  }

  void insertAtIndexInMyStrat(int index, CardDataTypeStruct value) {
    myStrat.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
