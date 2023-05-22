import 'package:dio/dio.dart';

import '../../data/global.dart';

//print(databuff[0]['FINAL']);

Future<dynamic> INSPECTION_FINAL_GET_STEP1(String CP) async {
  final response = await Dio().post(
    serverGB + "INSPECTION_FINAL_GET_STEP1",
    data: {
      "MATCP": CP,
    },
  );
  var databuff;
  if (response.statusCode == 200) {
    databuff = response.data;
  }
  return databuff;
}

Future<dynamic> INSPECTION_FINAL_GET_STEP2(String ITEMs) async {
  var databuff;

  final response = await Dio().post(
    serverGB + "INSPECTION_FINAL_GET_STEP2",
    data: {
      "ITEMs": ITEMs,
    },
  );

  if (response.statusCode == 200) {
    databuff = response.data;
  }

  return databuff;
}

Future<dynamic> INSPECTION_INCOMING_GET_STEP1(String CP) async {
  final response = await Dio().post(
    serverGB + "INSPECTION_INCOMING_GET_STEP1",
    data: {
      "MATCP": CP,
    },
  );
  var databuff;
  if (response.statusCode == 200) {
    databuff = response.data;
  }
  return databuff;
}

Future<dynamic> INSPECTION_INCOMING_GET_STEP2(String ITEMs) async {
  var databuff;

  final response = await Dio().post(
    serverGB + "INSPECTION_INCOMING_GET_STEP2",
    data: {
      "ITEMs": ITEMs,
    },
  );

  if (response.statusCode == 200) {
    databuff = response.data;
  }

  return databuff;
}
