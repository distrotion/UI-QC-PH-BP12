import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../page/05INSPECTIONstd/INSPECTIONstdMAIN.dart';
import '../../page/05INSPECTIONstd/INSPECTIONstdVAR.dart';
import '../../page/06INSPECTIONstdN/P6INSPECTIONstdNmain.dart';
import '../../page/06INSPECTIONstdN/P6INSPECTIONstdNvar.dart';
import '../cubit/NotificationEvent.dart';
import '05-1-FINSPECTIONget.dart';
import '06-1-P6FINSPECTIONget.dart';

//-------------------------------------------------
String server = serverGB;

abstract class P6UPLOADSPEC_Event {}

class P6UPLOADSPEC_FINAL_TEXT extends P6UPLOADSPEC_Event {}

class P6UPLOADSPEC_FINAL_NUM extends P6UPLOADSPEC_Event {}

class DELETESPEC_FINAL extends P6UPLOADSPEC_Event {}

class P6UPLOADSPEC_INCOMMING_TEXT extends P6UPLOADSPEC_Event {}

class P6UPLOADSPEC_INCOMMING_NUM extends P6UPLOADSPEC_Event {}

class DELETESPEC_INCOMMING extends P6UPLOADSPEC_Event {}

class UPLOAD_PIC extends P6UPLOADSPEC_Event {}

//_DELETESPEC_FINAL_NUM

class P6UPLOADSPEC_flush extends P6UPLOADSPEC_Event {}

class P6UPLOADSPEC_Bloc extends Bloc<P6UPLOADSPEC_Event, String> {
  P6UPLOADSPEC_Bloc() : super('') {
    on<P6UPLOADSPEC_FINAL_TEXT>((event, emit) {
      return _P6UPLOADSPEC_FINAL_TEXT('', emit);
    });
    on<P6UPLOADSPEC_FINAL_NUM>((event, emit) {
      return _P6UPLOADSPEC_FINAL_NUM('', emit);
    });

    on<DELETESPEC_FINAL>((event, emit) {
      return _DELETESPEC_FINAL('', emit);
    });

    on<P6UPLOADSPEC_INCOMMING_TEXT>((event, emit) {
      return _P6UPLOADSPEC_INCOMMING_TEXT('', emit);
    });
    on<P6UPLOADSPEC_INCOMMING_NUM>((event, emit) {
      return _P6UPLOADSPEC_INCOMMING_NUM('', emit);
    });

    on<DELETESPEC_INCOMMING>((event, emit) {
      return _DELETESPEC_INCOMMING('', emit);
    });

    on<UPLOAD_PIC>((event, emit) {
      return _UPLOAD_PIC('', emit);
    });

    on<P6UPLOADSPEC_flush>((event, emit) {
      return _P6UPLOADSPEC_flush('', emit);
    });
  }
  Future<void> _P6UPLOADSPEC_FINAL_TEXT(
      String toAdd, Emitter<String> emit) async {
    String output = '';
    print("---------------3");
    var query = {
      "CPorder": {
        "CP": P6INSPECTIONstdNvar_BASIC.CP,
        "FG": P6INSPECTIONstdNvar_BASIC.FG,
        "CUSTOMER": P6INSPECTIONstdNvar_BASIC.CUSTOMER,
        "PART": P6INSPECTIONstdNvar_BASIC.PART,
        "PARTNAME": P6INSPECTIONstdNvar_BASIC.PARTNAME,
        "MATERIAL": P6INSPECTIONstdNvar_BASIC.MATERIAL,
        "CUST_FULLNM": P6INSPECTIONstdNvar_BASIC.CUST_FULLNM,
      },
      "MASTERdatalist": {
        "TYPE": P6INSPECTIONstdNvar_FINAL.TYPE,
        "RESULTFORMAT": P6INSPECTIONstdNvar_FINAL.RESULTFORMAT,
        "GRAPHTYPE": P6INSPECTIONstdNvar_FINAL.GRAPHTYPE,
        "INTERSECTION": P6INSPECTIONstdNvar_FINAL.INTERSECTION,
        "DOCUMENTS": P6INSPECTIONstdNvar_FINAL.DOCUMENT,
      },
      "editedItem_FN": {
        "SEQ": P6INSPECTIONstdNvar_FINAL.seq,
        "TYPE": P6INSPECTIONstdNvar_FINAL.TYPE,
        "ITEMs": P6INSPECTIONstdNvar_FINAL.ITEMs,
        "RESULTFORMAT": P6INSPECTIONstdNvar_FINAL.RESULTFORMAT,
        "GRAPHTYPE": P6INSPECTIONstdNvar_FINAL.GRAPHTYPE,
        "INTERSECTION": P6INSPECTIONstdNvar_FINAL.INTERSECTION,
        "DOCUMENT": P6INSPECTIONstdNvar_FINAL.DOCUMENT,
        "SCMARK": P6INSPECTIONstdNvar_FINAL.SCMARK,
        "METHOD": P6INSPECTIONstdNvar_FINAL.METHOD,
        "INSTRUMENTS": [],
        "SPECIFICATION": [
          {
            "name": P6INSPECTIONstdNvar_FINAL.SPECIFICATIONstr,
            "value": P6INSPECTIONstdNvar_FINAL.SPECIFICATION
          }
        ],
        "SPECIFICATIONve": P6INSPECTIONstdNvar_FINAL.SPECIFICATION,
        "UNIT": P6INSPECTIONstdNvar_FINAL.UNIT,
        "POINTPCS": "",
        "POINT": AQLpcs(
            P6INSPECTIONstdNvar_FINAL.AQL, P6INSPECTIONstdNvar_FINAL.POINT),
        "PCS": AQLposition(
            P6INSPECTIONstdNvar_FINAL.AQL, P6INSPECTIONstdNvar_FINAL.PCS),
        "FREQUENCY": P6INSPECTIONstdNvar_FINAL.FREQUENCY,
        "MODE": P6INSPECTIONstdNvar_FINAL.METHOD,
        "REMARK": P6INSPECTIONstdNvar_FINAL.REMARK,
        "LOAD": P6INSPECTIONstdNvar_FINAL.LOAD,
        "CONVERSE": P6INSPECTIONstdNvar_FINAL.UNIT_CONVERST,

        //
        "SWreport": P6INSPECTIONstdNvar_FINAL.SWreport,
        "K1b": P6INSPECTIONstdNvar_FINAL.K1b,
        "K1v": P6INSPECTIONstdNvar_FINAL.K1v,

        "AQL": P6INSPECTIONstdNvar_FINAL.AQL,
        "AQLV": P6INSPECTIONstdNvar_FINAL.AQLV,
        "CONVERSEDATA": P6INSPECTIONstdNvar_FINAL.CONVERSEDATA,
        "SUMDATA": P6INSPECTIONstdNvar_FINAL.SUMDATA,
        "SRAWDATA": P6INSPECTIONstdNvar_FINAL.SRAWDATA,
        "SCMARKTYPE": P6INSPECTIONstdNvar_FINAL.SCMARKTYPE,
        "SUMDATATEXT": P6INSPECTIONstdNvar_FINAL.SUMDATATEXT,
      }
    };

    final response = await Dio().post(
      server + "FINAL_SAVE",
      data: query,
    );

    if (response.statusCode == 200) {
      var databuff = response.data;

      if (databuff == 'ok') {
        P6INSPECTIONstdNvar_FINAL.POP = false;
        P6INSPECTIONstdNvar_INCOMMING.POP = false;
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "OK", "UPDATE complete", enumNotificationlist.Success);
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
      } else {
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "NOK", "someting wrong", enumNotificationlist.Error);
      }
    }

    emit(output);
  }

  Future<void> _P6UPLOADSPEC_FINAL_NUM(
      String toAdd, Emitter<String> emit) async {
    print("---------------4");
    String output = '';
    print(INSPECTIONstdVAR.CP);
    var query = {
      "CPorder": {
        "CP": P6INSPECTIONstdNvar_BASIC.CP,
        "FG": P6INSPECTIONstdNvar_BASIC.FG,
        "CUSTOMER": P6INSPECTIONstdNvar_BASIC.CUSTOMER,
        "PART": P6INSPECTIONstdNvar_BASIC.PART,
        "PARTNAME": P6INSPECTIONstdNvar_BASIC.PARTNAME,
        "MATERIAL": P6INSPECTIONstdNvar_BASIC.MATERIAL,
        "CUST_FULLNM": P6INSPECTIONstdNvar_BASIC.CUST_FULLNM,
      },
      "MASTERdatalist": {
        "TYPE": P6INSPECTIONstdNvar_FINAL.TYPE,
        "RESULTFORMAT": P6INSPECTIONstdNvar_FINAL.RESULTFORMAT,
        "GRAPHTYPE": P6INSPECTIONstdNvar_FINAL.GRAPHTYPE,
        "INTERSECTION": P6INSPECTIONstdNvar_FINAL.INTERSECTION,
        "DOCUMENTS": P6INSPECTIONstdNvar_FINAL.DOCUMENT,
      },
      "editedItem_FN": {
        "SEQ": P6INSPECTIONstdNvar_FINAL.seq,
        "TYPE": P6INSPECTIONstdNvar_FINAL.TYPE,
        "ITEMs": P6INSPECTIONstdNvar_FINAL.ITEMs,
        "RESULTFORMAT": P6INSPECTIONstdNvar_FINAL.RESULTFORMAT,
        "GRAPHTYPE": P6INSPECTIONstdNvar_FINAL.GRAPHTYPE,
        "INTERSECTION": P6INSPECTIONstdNvar_FINAL.INTERSECTION,
        "DOCUMENT": P6INSPECTIONstdNvar_FINAL.DOCUMENT,
        "SCMARK": P6INSPECTIONstdNvar_FINAL.SCMARK,
        "METHOD": P6INSPECTIONstdNvar_FINAL.METHOD,
        "INSTRUMENTS": [],
        "SPECIFICATION": [
          {
            "name": P6INSPECTIONstdNvar_FINAL.SPECIFICATIONstr,
            "value": P6INSPECTIONstdNvar_FINAL.SPECIFICATION
          }
        ],
        "SPECIFICATIONve": P6INSPECTIONstdNvar_FINAL.SPECIFICATION,
        "UNIT": P6INSPECTIONstdNvar_FINAL.UNIT,
        "POINTPCS": "",
        "POINT": AQLpcs(
            P6INSPECTIONstdNvar_FINAL.AQL, P6INSPECTIONstdNvar_FINAL.POINT),
        "PCS": AQLposition(
            P6INSPECTIONstdNvar_FINAL.AQL, P6INSPECTIONstdNvar_FINAL.PCS),
        "FREQUENCY": P6INSPECTIONstdNvar_FINAL.FREQUENCY,
        "MODE": P6INSPECTIONstdNvar_FINAL.METHOD,
        "REMARK": P6INSPECTIONstdNvar_FINAL.REMARK,
        "LOAD": P6INSPECTIONstdNvar_FINAL.LOAD,
        "CONVERSE": P6INSPECTIONstdNvar_FINAL.UNIT_CONVERST,

        //
        "SWreport": P6INSPECTIONstdNvar_FINAL.SWreport,
        "K1b": P6INSPECTIONstdNvar_FINAL.K1b,
        "K1v": P6INSPECTIONstdNvar_FINAL.K1v,

        "AQL": P6INSPECTIONstdNvar_FINAL.AQL,
        "AQLV": P6INSPECTIONstdNvar_FINAL.AQLV,
        "CONVERSEDATA": P6INSPECTIONstdNvar_FINAL.CONVERSEDATA,
        "SUMDATA": P6INSPECTIONstdNvar_FINAL.SUMDATA,
        "SRAWDATA": P6INSPECTIONstdNvar_FINAL.SRAWDATA,
        "SCMARKTYPE": P6INSPECTIONstdNvar_FINAL.SCMARKTYPE,
        "SUMDATATEXT": P6INSPECTIONstdNvar_FINAL.SUMDATATEXT,
      }
    };

    final response = await Dio().post(
      server + "FINAL_SAVE",
      data: query,
    );

    if (response.statusCode == 200) {
      var databuff = response.data;

      if (databuff == 'ok') {
        P6INSPECTIONstdNvar_FINAL.POP = false;
        P6INSPECTIONstdNvar_INCOMMING.POP = false;
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "OK", "UPDATE complete", enumNotificationlist.Success);
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
      } else {
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "NOK", "someting wrong", enumNotificationlist.Error);
      }
    }
    emit(output);
  }

  Future<void> _DELETESPEC_FINAL(String toAdd, Emitter<String> emit) async {
    String output = '';
    var query = {
      "CPorder": {
        "CP": P6INSPECTIONstdNvar_BASIC.CP,
        "FG": P6INSPECTIONstdNvar_BASIC.FG,
        "CUSTOMER": P6INSPECTIONstdNvar_BASIC.CUSTOMER,
        "PART": P6INSPECTIONstdNvar_BASIC.PART,
        "PARTNAME": P6INSPECTIONstdNvar_BASIC.PARTNAME,
        "MATERIAL": P6INSPECTIONstdNvar_BASIC.MATERIAL,
        "CUST_FULLNM": P6INSPECTIONstdNvar_BASIC.CUST_FULLNM,
      },
      "MASTERdatalist": {
        "TYPE": P6INSPECTIONstdNvar_FINAL.TYPE,
        "RESULTFORMAT": P6INSPECTIONstdNvar_FINAL.RESULTFORMAT,
        "GRAPHTYPE": P6INSPECTIONstdNvar_FINAL.GRAPHTYPE,
        "INTERSECTION": P6INSPECTIONstdNvar_FINAL.INTERSECTION,
        "DOCUMENTS": P6INSPECTIONstdNvar_FINAL.DOCUMENT,
      },
      "editedItem_FN": {
        "SEQ": P6INSPECTIONstdNvar_FINAL.seq,
        "TYPE": P6INSPECTIONstdNvar_FINAL.TYPE,
        "ITEMs": P6INSPECTIONstdNvar_FINAL.ITEMs,
        "RESULTFORMAT": P6INSPECTIONstdNvar_FINAL.RESULTFORMAT,
        "GRAPHTYPE": P6INSPECTIONstdNvar_FINAL.GRAPHTYPE,
        "INTERSECTION": P6INSPECTIONstdNvar_FINAL.INTERSECTION,
        "DOCUMENT": P6INSPECTIONstdNvar_FINAL.DOCUMENT,
        "SCMARK": P6INSPECTIONstdNvar_FINAL.SCMARK,
        "METHOD": P6INSPECTIONstdNvar_FINAL.METHOD,
        "INSTRUMENTS": [],
        "SPECIFICATION": [
          {
            "name": P6INSPECTIONstdNvar_FINAL.SPECIFICATIONstr,
            "value": P6INSPECTIONstdNvar_FINAL.SPECIFICATION
          }
        ],
        "SPECIFICATIONve": P6INSPECTIONstdNvar_FINAL.SPECIFICATION,
        "UNIT": P6INSPECTIONstdNvar_FINAL.UNIT,
        "POINTPCS": "",
        "POINT": AQLpcs(
            P6INSPECTIONstdNvar_FINAL.AQL, P6INSPECTIONstdNvar_FINAL.POINT),
        "PCS": AQLposition(
            P6INSPECTIONstdNvar_FINAL.AQL, P6INSPECTIONstdNvar_FINAL.PCS),
        "FREQUENCY": P6INSPECTIONstdNvar_FINAL.FREQUENCY,
        "MODE": P6INSPECTIONstdNvar_FINAL.METHOD,
        "REMARK": P6INSPECTIONstdNvar_FINAL.REMARK,
        "LOAD": P6INSPECTIONstdNvar_FINAL.LOAD,
        "CONVERSE": P6INSPECTIONstdNvar_FINAL.UNIT_CONVERST,

        //
        "SWreport": P6INSPECTIONstdNvar_FINAL.SWreport,
        "K1b": P6INSPECTIONstdNvar_FINAL.K1b,
        "K1v": P6INSPECTIONstdNvar_FINAL.K1v,

        "AQL": P6INSPECTIONstdNvar_FINAL.AQL,
        "AQLV": P6INSPECTIONstdNvar_FINAL.AQLV,
        "CONVERSEDATA": P6INSPECTIONstdNvar_FINAL.CONVERSEDATA,
        "SUMDATA": P6INSPECTIONstdNvar_FINAL.SUMDATA,
        "SRAWDATA": P6INSPECTIONstdNvar_FINAL.SRAWDATA,
        "SCMARKTYPE": P6INSPECTIONstdNvar_FINAL.SCMARKTYPE,
        "SUMDATATEXT": P6INSPECTIONstdNvar_FINAL.SUMDATATEXT,
      }
    };

    final response = await Dio().post(
      server + "FINAL_DELETE",
      data: query,
    );

    if (response.statusCode == 200) {
      var databuff = response.data;

      if (databuff == 'ok') {
        P6INSPECTIONstdNvar_FINAL.POP = false;
        P6INSPECTIONstdNvar_INCOMMING.POP = false;
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "OK", "UPDATE complete", enumNotificationlist.Success);
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
      } else {
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "NOK", "someting wrong", enumNotificationlist.Error);
      }
    }
    emit(output);
  }

  //

  Future<void> _UPLOAD_PIC(String toAdd, Emitter<String> emit) async {
    String output = '';
    var query = {
      "CPorder": {
        "CP": P6INSPECTIONstdNvar_BASIC.CP,
        "FG": P6INSPECTIONstdNvar_BASIC.FG,
        "CUSTOMER": P6INSPECTIONstdNvar_BASIC.CUSTOMER,
        "PART": P6INSPECTIONstdNvar_BASIC.PART,
        "PARTNAME": P6INSPECTIONstdNvar_BASIC.PARTNAME,
        "MATERIAL": P6INSPECTIONstdNvar_BASIC.MATERIAL,
        "CUST_FULLNM": P6INSPECTIONstdNvar_BASIC.CUST_FULLNM,
      },
      "PIC": P6INSPECTIONstdNvar_BASIC.PICUPLOAD,
    };

    final response = await Dio().post(
      server + "PIC_UPLOAD",
      data: query,
    );

    if (response.statusCode == 200) {
      var databuff = response.data;

      if (databuff == 'ok') {
        P6INSPECTIONstdNvar_FINAL.POP = false;
        P6INSPECTIONstdNvar_INCOMMING.POP = false;
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "OK", "UPDATE complete", enumNotificationlist.Success);
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
      } else {
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "NOK", "someting wrong", enumNotificationlist.Error);
      }
    }
    emit(output);
  }

  Future<void> _P6UPLOADSPEC_INCOMMING_TEXT(
      String toAdd, Emitter<String> emit) async {
    String output = '';
    var query = {
      "CPorder": {
        "CP": P6INSPECTIONstdNvar_BASIC.CP,
        "FG": P6INSPECTIONstdNvar_BASIC.FG,
        "CUSTOMER": P6INSPECTIONstdNvar_BASIC.CUSTOMER,
        "PART": P6INSPECTIONstdNvar_BASIC.PART,
        "PARTNAME": P6INSPECTIONstdNvar_BASIC.PARTNAME,
        "MATERIAL": P6INSPECTIONstdNvar_BASIC.MATERIAL,
        "CUST_FULLNM": P6INSPECTIONstdNvar_BASIC.CUST_FULLNM,
      },
      "MASTERdatalist": {
        "TYPE": P6INSPECTIONstdNvar_INCOMMING.TYPE,
        "RESULTFORMAT": P6INSPECTIONstdNvar_INCOMMING.RESULTFORMAT,
        "GRAPHTYPE": P6INSPECTIONstdNvar_INCOMMING.GRAPHTYPE,
        "INTERSECTION": P6INSPECTIONstdNvar_INCOMMING.INTERSECTION,
        "DOCUMENTS": P6INSPECTIONstdNvar_INCOMMING.DOCUMENT,
      },
      "editedItem_IC": {
        "SEQ": P6INSPECTIONstdNvar_INCOMMING.seq,
        "TYPE": P6INSPECTIONstdNvar_INCOMMING.TYPE,
        "ITEMs": P6INSPECTIONstdNvar_INCOMMING.ITEMs,
        "RESULTFORMAT": P6INSPECTIONstdNvar_INCOMMING.RESULTFORMAT,
        "GRAPHTYPE": P6INSPECTIONstdNvar_INCOMMING.GRAPHTYPE,
        "INTERSECTION": P6INSPECTIONstdNvar_INCOMMING.INTERSECTION,
        "DOCUMENT": P6INSPECTIONstdNvar_INCOMMING.DOCUMENT,
        "SCMARK": P6INSPECTIONstdNvar_INCOMMING.SCMARK,
        "METHOD": P6INSPECTIONstdNvar_INCOMMING.METHOD,
        "INSTRUMENTS": [],
        "SPECIFICATION": [
          {
            "name": P6INSPECTIONstdNvar_INCOMMING.SPECIFICATIONstr,
            "value": P6INSPECTIONstdNvar_INCOMMING.SPECIFICATION
          }
        ],
        "SPECIFICATIONve": P6INSPECTIONstdNvar_INCOMMING.SPECIFICATION,
        "UNIT": P6INSPECTIONstdNvar_INCOMMING.UNIT,
        "POINTPCS": "",
        "POINT": AQLpcs(P6INSPECTIONstdNvar_INCOMMING.AQL,
            P6INSPECTIONstdNvar_INCOMMING.POINT),
        "PCS": AQLposition(P6INSPECTIONstdNvar_INCOMMING.AQL,
            P6INSPECTIONstdNvar_INCOMMING.PCS),
        "FREQUENCY": P6INSPECTIONstdNvar_INCOMMING.FREQUENCY,
        "MODE": P6INSPECTIONstdNvar_INCOMMING.METHOD,
        "REMARK": P6INSPECTIONstdNvar_INCOMMING.REMARK,
        "LOAD": P6INSPECTIONstdNvar_INCOMMING.LOAD,
        "CONVERSE": P6INSPECTIONstdNvar_INCOMMING.UNIT_CONVERST,

        //
        "SWreport": P6INSPECTIONstdNvar_INCOMMING.SWreport,
        "K1b": P6INSPECTIONstdNvar_INCOMMING.K1b,
        "K1v": P6INSPECTIONstdNvar_INCOMMING.K1v,

        "AQL": P6INSPECTIONstdNvar_INCOMMING.AQL,
        "AQLV": P6INSPECTIONstdNvar_INCOMMING.AQLV,
        "CONVERSEDATA": P6INSPECTIONstdNvar_INCOMMING.CONVERSEDATA,
        "SUMDATA": P6INSPECTIONstdNvar_INCOMMING.SUMDATA,
        "SRAWDATA": P6INSPECTIONstdNvar_INCOMMING.SRAWDATA,
        "SCMARKTYPE": P6INSPECTIONstdNvar_INCOMMING.SCMARKTYPE,
        "SUMDATATEXT": P6INSPECTIONstdNvar_INCOMMING.SUMDATATEXT,
      }
    };

    final response = await Dio().post(
      server + "INCOMMING_SAVE",
      data: query,
    );

    if (response.statusCode == 200) {
      var databuff = response.data;

      if (databuff == 'ok') {
        P6INSPECTIONstdNvar_FINAL.POP = false;
        P6INSPECTIONstdNvar_INCOMMING.POP = false;
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "OK", "UPDATE complete", enumNotificationlist.Success);
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
      } else {
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "NOK", "someting wrong", enumNotificationlist.Error);
      }
    }

    emit(output);
  }

  Future<void> _P6UPLOADSPEC_INCOMMING_NUM(
      String toAdd, Emitter<String> emit) async {
    String output = '';
    var query = {
      "CPorder": {
        "CP": P6INSPECTIONstdNvar_BASIC.CP,
        "FG": P6INSPECTIONstdNvar_BASIC.FG,
        "CUSTOMER": P6INSPECTIONstdNvar_BASIC.CUSTOMER,
        "PART": P6INSPECTIONstdNvar_BASIC.PART,
        "PARTNAME": P6INSPECTIONstdNvar_BASIC.PARTNAME,
        "MATERIAL": P6INSPECTIONstdNvar_BASIC.MATERIAL,
        "CUST_FULLNM": P6INSPECTIONstdNvar_BASIC.CUST_FULLNM,
      },
      "MASTERdatalist": {
        "TYPE": P6INSPECTIONstdNvar_INCOMMING.TYPE,
        "RESULTFORMAT": P6INSPECTIONstdNvar_INCOMMING.RESULTFORMAT,
        "GRAPHTYPE": P6INSPECTIONstdNvar_INCOMMING.GRAPHTYPE,
        "INTERSECTION": P6INSPECTIONstdNvar_INCOMMING.INTERSECTION,
        "DOCUMENTS": P6INSPECTIONstdNvar_INCOMMING.DOCUMENT,
      },
      "editedItem_IC": {
        "SEQ": P6INSPECTIONstdNvar_INCOMMING.seq,
        "TYPE": P6INSPECTIONstdNvar_INCOMMING.TYPE,
        "ITEMs": P6INSPECTIONstdNvar_INCOMMING.ITEMs,
        "RESULTFORMAT": P6INSPECTIONstdNvar_INCOMMING.RESULTFORMAT,
        "GRAPHTYPE": P6INSPECTIONstdNvar_INCOMMING.GRAPHTYPE,
        "INTERSECTION": P6INSPECTIONstdNvar_INCOMMING.INTERSECTION,
        "DOCUMENT": P6INSPECTIONstdNvar_INCOMMING.DOCUMENT,
        "SCMARK": P6INSPECTIONstdNvar_INCOMMING.SCMARK,
        "METHOD": P6INSPECTIONstdNvar_INCOMMING.METHOD,
        "INSTRUMENTS": [],
        "SPECIFICATION": [
          {
            "name": P6INSPECTIONstdNvar_INCOMMING.SPECIFICATIONstr,
            "value": P6INSPECTIONstdNvar_INCOMMING.SPECIFICATION
          }
        ],
        "SPECIFICATIONve": P6INSPECTIONstdNvar_INCOMMING.SPECIFICATION,
        "UNIT": P6INSPECTIONstdNvar_INCOMMING.UNIT,
        "POINTPCS": "",
        "POINT": AQLpcs(P6INSPECTIONstdNvar_INCOMMING.AQL,
            P6INSPECTIONstdNvar_INCOMMING.POINT),
        "PCS": AQLposition(P6INSPECTIONstdNvar_INCOMMING.AQL,
            P6INSPECTIONstdNvar_INCOMMING.PCS),
        "FREQUENCY": P6INSPECTIONstdNvar_INCOMMING.FREQUENCY,
        "MODE": P6INSPECTIONstdNvar_INCOMMING.METHOD,
        "REMARK": P6INSPECTIONstdNvar_INCOMMING.REMARK,
        "LOAD": P6INSPECTIONstdNvar_INCOMMING.LOAD,
        "CONVERSE": P6INSPECTIONstdNvar_INCOMMING.UNIT_CONVERST,

        //
        "SWreport": P6INSPECTIONstdNvar_INCOMMING.SWreport,
        "K1b": P6INSPECTIONstdNvar_INCOMMING.K1b,
        "K1v": P6INSPECTIONstdNvar_INCOMMING.K1v,

        "AQL": P6INSPECTIONstdNvar_INCOMMING.AQL,
        "AQLV": P6INSPECTIONstdNvar_INCOMMING.AQLV,
        "CONVERSEDATA": P6INSPECTIONstdNvar_INCOMMING.CONVERSEDATA,
        "SUMDATA": P6INSPECTIONstdNvar_INCOMMING.SUMDATA,
        "SRAWDATA": P6INSPECTIONstdNvar_INCOMMING.SRAWDATA,
        "SCMARKTYPE": P6INSPECTIONstdNvar_INCOMMING.SCMARKTYPE,
        "SUMDATATEXT": P6INSPECTIONstdNvar_INCOMMING.SUMDATATEXT,
      }
    };

    final response = await Dio().post(
      server + "INCOMMING_SAVE",
      data: query,
    );

    if (response.statusCode == 200) {
      var databuff = response.data;

      if (databuff == 'ok') {
        P6INSPECTIONstdNvar_FINAL.POP = false;
        P6INSPECTIONstdNvar_INCOMMING.POP = false;
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "OK", "UPDATE complete", enumNotificationlist.Success);
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
      } else {
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "NOK", "someting wrong", enumNotificationlist.Error);
      }
    }
    emit(output);
  }

  Future<void> _DELETESPEC_INCOMMING(String toAdd, Emitter<String> emit) async {
    String output = '';
    var query = {
      "CPorder": {
        "CP": P6INSPECTIONstdNvar_BASIC.CP,
        "FG": P6INSPECTIONstdNvar_BASIC.FG,
        "CUSTOMER": P6INSPECTIONstdNvar_BASIC.CUSTOMER,
        "PART": P6INSPECTIONstdNvar_BASIC.PART,
        "PARTNAME": P6INSPECTIONstdNvar_BASIC.PARTNAME,
        "MATERIAL": P6INSPECTIONstdNvar_BASIC.MATERIAL,
        "CUST_FULLNM": P6INSPECTIONstdNvar_BASIC.CUST_FULLNM,
      },
      "MASTERdatalist": {
        "TYPE": P6INSPECTIONstdNvar_INCOMMING.TYPE,
        "RESULTFORMAT": P6INSPECTIONstdNvar_INCOMMING.RESULTFORMAT,
        "GRAPHTYPE": P6INSPECTIONstdNvar_INCOMMING.GRAPHTYPE,
        "INTERSECTION": P6INSPECTIONstdNvar_INCOMMING.INTERSECTION,
        "DOCUMENTS": P6INSPECTIONstdNvar_INCOMMING.DOCUMENT,
      },
      "editedItem_IC": {
        "SEQ": P6INSPECTIONstdNvar_INCOMMING.seq,
        "TYPE": P6INSPECTIONstdNvar_INCOMMING.TYPE,
        "ITEMs": P6INSPECTIONstdNvar_INCOMMING.ITEMs,
        "RESULTFORMAT": P6INSPECTIONstdNvar_INCOMMING.RESULTFORMAT,
        "GRAPHTYPE": P6INSPECTIONstdNvar_INCOMMING.GRAPHTYPE,
        "INTERSECTION": P6INSPECTIONstdNvar_INCOMMING.INTERSECTION,
        "DOCUMENT": P6INSPECTIONstdNvar_INCOMMING.DOCUMENT,
        "SCMARK": P6INSPECTIONstdNvar_INCOMMING.SCMARK,
        "METHOD": P6INSPECTIONstdNvar_INCOMMING.METHOD,
        "INSTRUMENTS": [],
        "SPECIFICATION": [
          {
            "name": P6INSPECTIONstdNvar_INCOMMING.SPECIFICATIONstr,
            "value": P6INSPECTIONstdNvar_INCOMMING.SPECIFICATION
          }
        ],
        "SPECIFICATIONve": P6INSPECTIONstdNvar_INCOMMING.SPECIFICATION,
        "UNIT": P6INSPECTIONstdNvar_INCOMMING.UNIT,
        "POINTPCS": "",
        "POINT": AQLpcs(P6INSPECTIONstdNvar_INCOMMING.AQL,
            P6INSPECTIONstdNvar_INCOMMING.POINT),
        "PCS": AQLposition(P6INSPECTIONstdNvar_INCOMMING.AQL,
            P6INSPECTIONstdNvar_INCOMMING.PCS),
        "FREQUENCY": P6INSPECTIONstdNvar_INCOMMING.FREQUENCY,
        "MODE": P6INSPECTIONstdNvar_INCOMMING.METHOD,
        "REMARK": P6INSPECTIONstdNvar_INCOMMING.REMARK,
        "LOAD": P6INSPECTIONstdNvar_INCOMMING.LOAD,
        "CONVERSE": P6INSPECTIONstdNvar_INCOMMING.UNIT_CONVERST,

        //
        "SWreport": P6INSPECTIONstdNvar_INCOMMING.SWreport,
        "K1b": P6INSPECTIONstdNvar_INCOMMING.K1b,
        "K1v": P6INSPECTIONstdNvar_INCOMMING.K1v,

        "AQL": P6INSPECTIONstdNvar_INCOMMING.AQL,
        "AQLV": P6INSPECTIONstdNvar_INCOMMING.AQLV,
        "CONVERSEDATA": P6INSPECTIONstdNvar_INCOMMING.CONVERSEDATA,
        "SUMDATA": P6INSPECTIONstdNvar_INCOMMING.SUMDATA,
        "SRAWDATA": P6INSPECTIONstdNvar_INCOMMING.SRAWDATA,
        "SCMARKTYPE": P6INSPECTIONstdNvar_INCOMMING.SCMARKTYPE,
        "SUMDATATEXT": P6INSPECTIONstdNvar_INCOMMING.SUMDATATEXT,
      }
    };

    final response = await Dio().post(
      server + "INCOMMING_DELETE",
      data: query,
    );

    if (response.statusCode == 200) {
      var databuff = response.data;

      if (databuff == 'ok') {
        P6INSPECTIONstdNvar_FINAL.POP = false;
        P6INSPECTIONstdNvar_INCOMMING.POP = false;
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "OK", "UPDATE complete", enumNotificationlist.Success);
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
      } else {
        P6P6InspectionSTDNmaincontext.read<P6FINSPECTIONget_Bloc>()
            .add(P6FINSPECTIONget_MATCP());
        BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
            "NOK", "someting wrong", enumNotificationlist.Error);
      }
    }
    emit(output);
  }

  //

  Future<void> _P6UPLOADSPEC_flush(String toAdd, Emitter<String> emit) async {
    String output = '';
    emit(output);
  }
}

String AQLpcs(String AQL, String DATA) {
  String output = DATA;
  if (AQL == 'YES') {
    output = '1';
  }
  return output;
}

String AQLposition(String AQL, String DATA) {
  String output = DATA;
  if (AQL == 'YES') {
    output = '10';
  }
  return output;
}
