import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../model/model.dart';

//-------------------------------------------------

String server = serverGB;

abstract class FINALMASTER_Event {}

class FINALMASTER_TYPEget extends FINALMASTER_Event {}

class FINALMASTER_UNITget extends FINALMASTER_Event {}

class FINALMASTER_ITEMSget extends FINALMASTER_Event {}

class FINALMASTER_MACHINENAMEget extends FINALMASTER_Event {}

class FINALMASTER_METHODEget extends FINALMASTER_Event {}

class FINALMASTER_SPECIALSPECget extends FINALMASTER_Event {}

class FINALMASTER_CALCULATEget extends FINALMASTER_Event {}

class FINALMASTER_Bloc extends Bloc<FINALMASTER_Event, DatasetWithSatatus> {
  FINALMASTER_Bloc() : super(DatasetWithSatatus(data: [])) {
    on<FINALMASTER_TYPEget>((event, emit) {
      return _FINALMASTER_TYPEget(DatasetWithSatatus(data: []), emit);
    });
    on<FINALMASTER_UNITget>((event, emit) {
      return _FINALMASTER_UNITget(DatasetWithSatatus(data: []), emit);
    });

    on<FINALMASTER_ITEMSget>((event, emit) {
      return _FINALMASTER_ITEMSget(DatasetWithSatatus(data: []), emit);
    });

    on<FINALMASTER_MACHINENAMEget>((event, emit) {
      return _FINALMASTER_MACHINENAMEget(DatasetWithSatatus(data: []), emit);
    });

    on<FINALMASTER_METHODEget>((event, emit) {
      return _FINALMASTER_METHODEget(DatasetWithSatatus(data: []), emit);
    });

    on<FINALMASTER_SPECIALSPECget>((event, emit) {
      return _FINALMASTER_SPECIALSPECget(DatasetWithSatatus(data: []), emit);
    });

    on<FINALMASTER_CALCULATEget>((event, emit) {
      return _FINALMASTER_CALCULATEget(DatasetWithSatatus(data: []), emit);
    });
  }
  Future<void> _FINALMASTER_TYPEget(
      DatasetWithSatatus toAdd, Emitter<DatasetWithSatatus> emit) async {
    //--------------------------------------------------------
    DatasetWithSatatus output = DatasetWithSatatus(
      status: "",
      position: "",
      data: [],
    );
    //--------------------------------------------------------
    final response = await Dio().post(
      server + "GET_TYPE_FINAL",
      data: {},
    );

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;
      // print(databuff);
      output = DatasetWithSatatus(
        status: "OK",
        position: "TYPEget",
        data: [],
      );
      if (databuff.length > 0) {
        for (int i = 0; i < databuff.length; i++) {
          output.data.add(dataset(
            id: i,
            f01: databuff[i]['TYPE'] != null
                ? databuff[i]['TYPE'].toString()
                : "",
            f21: databuff[i]['masterID'] != null
                ? databuff[i]['masterID'].toString()
                : "",
          ));
        }
      }
    } else {
      //
    }
    emit(output);
  }

  Future<void> _FINALMASTER_UNITget(
      DatasetWithSatatus toAdd, Emitter<DatasetWithSatatus> emit) async {
    //--------------------------------------------------------
    DatasetWithSatatus output = DatasetWithSatatus(
      status: "",
      position: "",
      data: [],
    );
    //--------------------------------------------------------
    final response = await Dio().post(
      server + "GET_UNIT_FINAL",
      data: {},
    );

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;
      // print(databuff);
      output = DatasetWithSatatus(
        status: "OK",
        position: "UNITget",
        data: [],
      );
      if (databuff.length > 0) {
        for (int i = 0; i < databuff.length; i++) {
          output.data.add(dataset(
            id: i,
            f01: databuff[i]['TYPE'] != null
                ? databuff[i]['TYPE'].toString()
                : "",
            f02: databuff[i]['UNIT'] != null
                ? databuff[i]['UNIT'].toString()
                : "",
            f03: databuff[i]['DESIMAL'] != null
                ? databuff[i]['DESIMAL'].toString()
                : "",
            f11: databuff[i]['TYPEname'] != null
                ? databuff[i]['TYPEname'].toString()
                : "",
            f21: databuff[i]['masterID'] != null
                ? databuff[i]['masterID'].toString()
                : "",
          ));
        }
      }
    } else {
      //
    }
    emit(output);
  }

  Future<void> _FINALMASTER_ITEMSget(
      DatasetWithSatatus toAdd, Emitter<DatasetWithSatatus> emit) async {
    //--------------------------------------------------------
    DatasetWithSatatus output = DatasetWithSatatus(
      status: "",
      position: "",
      data: [],
    );
    //--------------------------------------------------------
    final response = await Dio().post(
      server + "GET_ITEMSget_FINAL",
      data: {},
    );

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;
      // print(databuff);
      output = DatasetWithSatatus(
        status: "OK",
        position: "ITEMSget",
        data: [],
      );
      if (databuff.length > 0) {
        for (int i = 0; i < databuff.length; i++) {
          output.data.add(dataset(
            id: i,
            f01: databuff[i]['TYPE'] != null
                ? databuff[i]['TYPE'].toString()
                : "",
            f02: databuff[i]['ITEMs'] != null
                ? databuff[i]['ITEMs'].toString()
                : "",
            f03: databuff[i]['RESULTFORMAT'] != null
                ? databuff[i]['RESULTFORMAT'].toString()
                : "",
            f04: databuff[i]['GRAPHTYPE'] != null
                ? databuff[i]['GRAPHTYPE'].toString()
                : "",
            f05: databuff[i]['INTERSECTION'] != null
                ? databuff[i]['INTERSECTION'].toString()
                : "",
            f06: databuff[i]['DOCUMENTS'] != null
                ? databuff[i]['DOCUMENTS'].toString()
                : "",
            f07: databuff[i]['CALCULATE'] != null
                ? databuff[i]['CALCULATE'].toString()
                : "",
            f11: databuff[i]['TYPEname'] != null
                ? databuff[i]['TYPEname'].toString()
                : "",
            f17: databuff[i]['CALCULATEname'] != null
                ? databuff[i]['CALCULATEname'].toString()
                : "",
            f21: databuff[i]['masterID'] != null
                ? databuff[i]['masterID'].toString()
                : "",
          ));
        }
      }
    } else {
      //
    }

    emit(output);
  }

  Future<void> _FINALMASTER_MACHINENAMEget(
      DatasetWithSatatus toAdd, Emitter<DatasetWithSatatus> emit) async {
    //--------------------------------------------------------
    DatasetWithSatatus output = DatasetWithSatatus(
      status: "",
      position: "",
      data: [],
    );
    //--------------------------------------------------------
    final response = await Dio().post(
      server + "GET_MACHINENAMEget_FINAL",
      data: {},
    );

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;
      // print(databuff);
      output = DatasetWithSatatus(
        status: "OK",
        position: "MACHINENAMEget",
        data: [],
      );

      if (databuff.length > 0) {
        for (int i = 0; i < databuff.length; i++) {
          String MACHINEdata = "";
          if (databuff[i]['MACHINE'] != null) {
            if (databuff[i]['MACHINE'].length > 0) {
              for (int j = 0; j < databuff[i]['MACHINE'].length; j++) {
                if (j == 0) {
                  MACHINEdata = databuff[i]['MACHINE'][j];
                } else {
                  MACHINEdata = MACHINEdata + "," + databuff[i]['MACHINE'][j];
                }
              }
            }
          }
          output.data.add(dataset(
            id: i,
            f01: databuff[i]['METHOD'] != null
                ? databuff[i]['METHOD'].toString()
                : "",
            f02: MACHINEdata,
            f03: databuff[i]['DESIMAL'] != null
                ? databuff[i]['DESIMAL'].toString()
                : "",
            f21: databuff[i]['masterID'] != null
                ? databuff[i]['masterID'].toString()
                : "",
          ));
        }
      }
    } else {
      //
    }

    emit(output);
  }

  Future<void> _FINALMASTER_METHODEget(
      DatasetWithSatatus toAdd, Emitter<DatasetWithSatatus> emit) async {
    //--------------------------------------------------------
    DatasetWithSatatus output = DatasetWithSatatus(
      status: "",
      position: "",
      data: [],
    );
    //--------------------------------------------------------
    final response = await Dio().post(
      server + "GET_METHODEget_FINAL",
      data: {},
    );

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;
      // print(databuff);
      output = DatasetWithSatatus(
        status: "OK",
        position: "METHODEget",
        data: [],
      );
      if (databuff.length > 0) {
        for (int i = 0; i < databuff.length; i++) {
          output.data.add(dataset(
            id: i,
            f01: databuff[i]['ITEMs'] != null
                ? databuff[i]['ITEMs'].toString()
                : "",
            f02: databuff[i]['METHOD'] != null
                ? databuff[i]['METHOD'].toString()
                : "",
            f03: databuff[i]['DOCUMENTSM'] != null
                ? databuff[i]['DOCUMENTSM'].toString()
                : "",
            f11: databuff[i]['ITEMsname'] != null
                ? databuff[i]['ITEMsname'].toString()
                : "",
            f12: databuff[i]['METHODname'] != null
                ? databuff[i]['METHODname'].toString()
                : "",
            f21: databuff[i]['masterID'] != null
                ? databuff[i]['masterID'].toString()
                : "",
          ));
        }
      }
    } else {
      //
    }

    emit(output);
  }

  Future<void> _FINALMASTER_SPECIALSPECget(
      DatasetWithSatatus toAdd, Emitter<DatasetWithSatatus> emit) async {
    //--------------------------------------------------------
    DatasetWithSatatus output = DatasetWithSatatus(
      status: "",
      position: "",
      data: [],
    );
    //--------------------------------------------------------
    final response = await Dio().post(
      server + "GET_SPECIALSPECget_FINAL",
      data: {},
    );

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;
      // print(databuff);
      output = DatasetWithSatatus(
        status: "OK",
        position: "SPECIALSPECget",
        data: [],
      );
      if (databuff.length > 0) {
        for (int i = 0; i < databuff.length; i++) {
          output.data.add(dataset(
            id: i,
            f01: databuff[i]['ITEMs'] != null
                ? databuff[i]['ITEMs'].toString()
                : "",
            f02: databuff[i]['SPECIFICATION'] != null
                ? databuff[i]['SPECIFICATION'].toString()
                : "",
            f11: databuff[i]['ITEMsname'] != null
                ? databuff[i]['ITEMsname'].toString()
                : "",
            f21: databuff[i]['masterID'] != null
                ? databuff[i]['masterID'].toString()
                : "",
          ));
        }
      }
    } else {
      //
    }

    emit(output);
  }

  Future<void> _FINALMASTER_CALCULATEget(
      DatasetWithSatatus toAdd, Emitter<DatasetWithSatatus> emit) async {
    //--------------------------------------------------------
    DatasetWithSatatus output = DatasetWithSatatus(
      status: "",
      position: "",
      data: [],
    );

    final response = await Dio().post(
      server + "GET_CALCULATEget_FINAL",
      data: {},
    );

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;
      // print(databuff);
      output = DatasetWithSatatus(
        status: "OK",
        position: "CALCULATEget",
        data: [],
      );

      if (databuff.length > 0) {
        for (int i = 0; i < databuff.length; i++) {
          output.data.add(dataset(
            id: i,
            f01: databuff[i]['CALCULATE'] != null
                ? databuff[i]['CALCULATE'].toString()
                : "",
            f02: databuff[i]['FORMULA'] != null
                ? databuff[i]['FORMULA'].toString()
                : "",

            //
            f41: databuff[i]['X'] != null ? databuff[i]['X'].toString() : "",
            f42: databuff[i]['Y'] != null ? databuff[i]['Y'].toString() : "",
            f43: databuff[i]['Z'] != null ? databuff[i]['Z'].toString() : "",
            f44: databuff[i]['I'] != null ? databuff[i]['I'].toString() : "",
            f45: databuff[i]['K1'] != null ? databuff[i]['K1'].toString() : "",
            f46: databuff[i]['K2'] != null ? databuff[i]['K2'].toString() : "",
            f47: databuff[i]['K3'] != null ? databuff[i]['K3'].toString() : "",
            //
            f51: databuff[i]['Xb'] != null ? databuff[i]['Xb'].toString() : "",
            f52: databuff[i]['Yb'] != null ? databuff[i]['Yb'].toString() : "",
            f53: databuff[i]['Zb'] != null ? databuff[i]['Zb'].toString() : "",
            f54: databuff[i]['Ib'] != null ? databuff[i]['Ib'].toString() : "",
            f55:
                databuff[i]['K1b'] != null ? databuff[i]['K1b'].toString() : "",
            f56:
                databuff[i]['K2b'] != null ? databuff[i]['K2b'].toString() : "",
            f57:
                databuff[i]['K3b'] != null ? databuff[i]['K4b'].toString() : "",
            //

            f21: databuff[i]['masterID'] != null
                ? databuff[i]['masterID'].toString()
                : "",
          ));
        }
      }
    } else {
      //
    }

    emit(output);
  }
}

class DatasetWithSatatus {
  DatasetWithSatatus({
    this.status = '',
    this.position = '',
    required this.data,
  });
  String status;
  String position;
  List<dataset> data;
}
