class INSPECTIONstdVAR {
  static bool iscontrol = false;
  static bool ACTION_isEnabled = false;
  //----------------------------
  static String CP = "-";
  static String FG = "-";
  static String CUSTOMER = "-";
  static String PART = "-";
  static String PARTNAME = "-";
  static String MATERIAL = "-";
  static String CUST_FULLNM = "-";

  //----------------------------
  static List<MapEntry<String, String>> List_INCOMING_ITEMs = [
    MapEntry("-", "-")
  ];
  static List<List_INCOMING_ITEMs_set_Class> List_INCOMING_ITEMs_set = [];
  static List<MapEntry<String, String>> List_INCOMING_SCMARK = YESNO;
  static List<MapEntry<String, String>> List_INCOMING_METHOD = [
    MapEntry("-", "-")
  ];
  static List<MapEntry<String, String>> List_INCOMING_LOAD = [
    MapEntry("-", "-")
  ];
  static List<MapEntry<String, String>> List_INCOMING_GT = [MapEntry("-", "-")];
  static List<MapEntry<String, String>> List_INCOMING_UNIT = [
    MapEntry("-", "-")
  ];
  static List<MapEntry<String, String>> List_INCOMING_UNIT_CONVERST = [
    MapEntry("-", "-")
  ];
  static List<MapEntry<String, String>> List_INCOMING_FREQUENCY = [
    MapEntry("-", "-")
  ];
  static List<MapEntry<String, String>> List_INCOMING_IMGreaddata = YESNO;
  static List<MapEntry<String, String>> List_INCOMING_SWreport = YESNO;
  static List<MapEntry<String, String>> List_INCOMING_IMGno = NUM14;
  static List<MapEntry<String, String>> List_INCOMING_CORETYPE = [
    MapEntry("-", "-")
  ];
  static List<MapEntry<String, String>> List_INCOMING_CALCULATE = [
    MapEntry("-", "-")
  ];
  static List<MapEntry<String, String>> List_INCOMING_SPECIFICATIONt = [
    MapEntry("-", "-")
  ];

  //----------------------------
  static List<MapEntry<String, String>> List_FINAL_ITEMs = [MapEntry("-", "-")];
  static List<List_FINAL_ITEMs_set_Class> List_FINAL_ITEMs_set = [];
  static List<MapEntry<String, String>> List_FINAL_SCMARK = YESNO;
  static List<MapEntry<String, String>> List_FINAL_METHOD = [
    MapEntry("-", "-")
  ];
  static List<MapEntry<String, String>> List_FINAL_LOAD = [MapEntry("-", "-")];
  static List<MapEntry<String, String>> List_FINAL_GT = [MapEntry("-", "-")];
  static List<MapEntry<String, String>> List_FINAL_UNIT = [MapEntry("-", "-")];
  static List<MapEntry<String, String>> List_FINAL_UNIT_CONVERST = [
    MapEntry("-", "-")
  ];
  static List<MapEntry<String, String>> List_FINAL_FREQUENCY = [
    MapEntry("-", "-")
  ];
  static List<MapEntry<String, String>> List_FINAL_IMGreaddata = YESNO;
  static List<MapEntry<String, String>> List_FINAL_SWreport = YESNO;
  static List<MapEntry<String, String>> List_FINAL_IMGno = NUM14;
  static List<MapEntry<String, String>> List_FINAL_CORETYPE = [
    MapEntry("-", "-")
  ];
  static List<MapEntry<String, String>> List_FINAL_CALCULATE = [
    MapEntry("-", "-")
  ];
  static List<MapEntry<String, String>> List_FINAL_SPECIFICATIONt = [
    MapEntry("-", "-")
  ];
  //------------------------------------------------------------------------------------ List_INCOMING_SPECIFICATIONt

  static String INCOMING_seq = "-";
  static String INCOMING_ITEMs = "-";
  static String INCOMING_TYPE = "";
  static String INCOMING_RESULTFORMAT = "";
  static String INCOMING_GRAPHTYPE = "";
  static String INCOMING_INTERSECTION = "";
  static String INCOMING_COREtype = "-";
  static String INCOMING_FORMULA = "-";
  static String INCOMING_SCMARK = "-";
  static String INCOMING_SCMARKtype = "-";
  static String INCOMING_DOCUMENT = "-";
  static String INCOMING_METHOD = "-";
  static String INCOMING_IMGreaddata = "-";
  static String INCOMING_IMGno = "-";
  static String INCOMING_LOAD = "-";
  static String INCOMING_GT = "-";
  static String INCOMING_SPECIFICATION = "-";
  static String INCOMING_SPECIFICATIONstr = "-";
  static String INCOMING_SPECIFICATIONve = "-";
  static veOB INCOMING_SPECIFICATIONveOB = veOB();
  static String INCOMING_UNIT = "-";
  static String INCOMING_UNIT_CONVERST = "-";
  // static String INCOMING_POINTPCS = "-";
  static String INCOMING_POINT = "-";
  static String INCOMING_PCS = "-";
  static String INCOMING_FREQUENCY = "-";
  static String INCOMING_REMARK = "-";
  static String INCOMING_RESULTFORMATdata = "-";
  static String INCOMING_SWreport = "-";

  static String INCOMING_CALCULATE = "-";
  static String INCOMING_CAL_K1 = "-";
  static String INCOMING_CAL_K2 = "-";
  static String INCOMING_CAL_K3 = "-";

  static String INCOMING_CAL_K1_N = "-";
  static String INCOMING_CAL_K2_N = "-";
  static String INCOMING_CAL_K3_N = "-";
  static bool INCOMING_CAL_K1b = false;
  static bool INCOMING_CAL_K2b = false;
  static bool INCOMING_CAL_K3b = false;

  static bool INCOMING_POP = false;
  //------------------------------------------------------------------------------------ List_FINAL_SPECIFICATIONt

  static String FINAL_seq = "-";
  static String FINAL_ITEMs = "-";
  static String FINAL_TYPE = "";
  static String FINAL_RESULTFORMAT = "";
  static String FINAL_GRAPHTYPE = "";
  static String FINAL_INTERSECTION = "";
  static String FINAL_COREtype = "-";
  static String FINAL_FORMULA = "-";
  static String FINAL_SCMARK = "-";
  static String FINAL_SCMARKtype = "-";
  static String FINAL_DOCUMENT = "-";
  static String FINAL_METHOD = "-";
  static String FINAL_IMGreaddata = "-";
  static String FINAL_IMGno = "-";
  static String FINAL_LOAD = "-";
  static String FINAL_GT = "-";
  static String FINAL_SPECIFICATION = "-";
  static String FINAL_SPECIFICATIONstr = "-";
  static String FINAL_SPECIFICATIONve = "-";
  static veOB FINAL_SPECIFICATIONveOB = veOB();
  static String FINAL_UNIT = "-";
  static String FINAL_UNIT_CONVERST = "-";
  // static String FINAL_POINTPCS = "-";
  static String FINAL_POINT = "-";
  static String FINAL_PCS = "-";
  static String FINAL_FREQUENCY = "-";
  static String FINAL_REMARK = "-";
  static String FINAL_RESULTFORMATdata = "-";
  static String FINAL_SWreport = "-";

  static String FINAL_CALCULATE = "-";
  static String FINAL_CAL_K1 = "-";
  static String FINAL_CAL_K2 = "-";
  static String FINAL_CAL_K3 = "-";

  static String FINAL_CAL_K1_N = "-";
  static String FINAL_CAL_K2_N = "-";
  static String FINAL_CAL_K3_N = "-";
  static bool FINAL_CAL_K1b = false;
  static bool FINAL_CAL_K2b = false;
  static bool FINAL_CAL_K3b = false;

  static bool FINAL_POP = false;

  static String CALCULATEp = "-";

  static String PICUPLOAD = "";

  //------------------------------------------------------------------------------------
}

class veOB {
  veOB({
    this.condition = "-",
    this.BTW_HI = "-",
    this.BTW_LOW = "-",
    this.HIM_L = "-",
    this.LOL_H = "-",
    this.TARGET = "-",
  });
  String condition;
  String BTW_HI;
  String BTW_LOW;
  String HIM_L;
  String LOL_H;
  String TARGET;
}

const List<MapEntry<String, String>> NUM14 = [
  MapEntry("-", "-"),
  MapEntry("1", "1"),
  MapEntry("2", "2"),
  MapEntry("3", "3"),
  MapEntry("4", "4"),
];

const List<MapEntry<String, String>> YESNO = [
  MapEntry("-", "-"),
  MapEntry("YES", "YES"),
  MapEntry("NO", "NO"),
];

const List<MapEntry<String, String>> specset = [
  MapEntry("-", "-"),
  MapEntry("BTW", "BTW"),
  MapEntry("LOL(<)", "LOL(<)"),
  MapEntry("HIM(>)", "HIM(>)"),
  MapEntry("Actual", "Actual"),
];

clearFINAL() {
  INSPECTIONstdVAR.iscontrol = true;
  //
  INSPECTIONstdVAR.FINAL_seq = "0";
  INSPECTIONstdVAR.FINAL_ITEMs = "-";
  INSPECTIONstdVAR.FINAL_TYPE = "";
  INSPECTIONstdVAR.FINAL_RESULTFORMAT = "";
  INSPECTIONstdVAR.FINAL_GRAPHTYPE = "";
  INSPECTIONstdVAR.FINAL_INTERSECTION = "";
  INSPECTIONstdVAR.FINAL_COREtype = "-";
  INSPECTIONstdVAR.FINAL_FORMULA = "-";
  INSPECTIONstdVAR.FINAL_SCMARK = "-";
  INSPECTIONstdVAR.FINAL_SCMARKtype = "-";
  INSPECTIONstdVAR.FINAL_DOCUMENT = "-";
  INSPECTIONstdVAR.FINAL_METHOD = "-";
  INSPECTIONstdVAR.FINAL_IMGreaddata = "-";
  INSPECTIONstdVAR.FINAL_IMGno = "-";
  INSPECTIONstdVAR.FINAL_LOAD = "-";
  INSPECTIONstdVAR.FINAL_GT = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATION = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONstr = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONve = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONveOB = veOB();
  INSPECTIONstdVAR.FINAL_UNIT = "-";
  INSPECTIONstdVAR.FINAL_UNIT_CONVERST = "-";
  // INSPECTIONstdVAR.FINAL_POINTPCS = "-";
  INSPECTIONstdVAR.FINAL_POINT = "-";
  INSPECTIONstdVAR.FINAL_PCS = "-";
  INSPECTIONstdVAR.FINAL_FREQUENCY = "-";
  INSPECTIONstdVAR.FINAL_REMARK = "-";
  INSPECTIONstdVAR.FINAL_RESULTFORMATdata = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONveOB.condition = "-";

  INSPECTIONstdVAR.FINAL_CAL_K1_N = "-";
  INSPECTIONstdVAR.FINAL_CAL_K2_N = "-";
  INSPECTIONstdVAR.FINAL_CAL_K3_N = "-";
  INSPECTIONstdVAR.FINAL_CAL_K1b = false;
  INSPECTIONstdVAR.FINAL_CAL_K2b = false;
  INSPECTIONstdVAR.FINAL_CAL_K3b = false;
  //--------------------------------------------------
  INSPECTIONstdVAR.List_FINAL_ITEMs = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_FINAL_ITEMs_set = [];
  INSPECTIONstdVAR.List_FINAL_SCMARK = YESNO;
  INSPECTIONstdVAR.List_FINAL_METHOD = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_FINAL_LOAD = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_FINAL_GT = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_FINAL_UNIT = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_FINAL_UNIT_CONVERST = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_FINAL_FREQUENCY = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_FINAL_IMGreaddata = YESNO;
  INSPECTIONstdVAR.List_FINAL_SWreport = YESNO;
  INSPECTIONstdVAR.List_FINAL_IMGno = NUM14;
  INSPECTIONstdVAR.List_FINAL_CORETYPE = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_FINAL_CALCULATE = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_FINAL_SPECIFICATIONt = [MapEntry("-", "-")];
}

clearINCOMING() {
  INSPECTIONstdVAR.iscontrol = true;
  //
  INSPECTIONstdVAR.INCOMING_seq = "0";
  INSPECTIONstdVAR.INCOMING_ITEMs = "-";
  INSPECTIONstdVAR.INCOMING_TYPE = "";
  INSPECTIONstdVAR.INCOMING_RESULTFORMAT = "";
  INSPECTIONstdVAR.INCOMING_GRAPHTYPE = "";
  INSPECTIONstdVAR.INCOMING_INTERSECTION = "";
  INSPECTIONstdVAR.INCOMING_COREtype = "-";
  INSPECTIONstdVAR.INCOMING_FORMULA = "-";
  INSPECTIONstdVAR.INCOMING_SCMARK = "-";
  INSPECTIONstdVAR.INCOMING_SCMARKtype = "-";
  INSPECTIONstdVAR.INCOMING_DOCUMENT = "-";
  INSPECTIONstdVAR.INCOMING_METHOD = "-";
  INSPECTIONstdVAR.INCOMING_IMGreaddata = "-";
  INSPECTIONstdVAR.INCOMING_IMGno = "-";
  INSPECTIONstdVAR.INCOMING_LOAD = "-";
  INSPECTIONstdVAR.INCOMING_GT = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATION = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONstr = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONve = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONveOB = veOB();
  INSPECTIONstdVAR.INCOMING_UNIT = "-";
  INSPECTIONstdVAR.INCOMING_UNIT_CONVERST = "-";
  // INSPECTIONstdVAR.INCOMING_POINTPCS = "-";
  INSPECTIONstdVAR.INCOMING_POINT = "-";
  INSPECTIONstdVAR.INCOMING_PCS = "-";
  INSPECTIONstdVAR.INCOMING_FREQUENCY = "-";
  INSPECTIONstdVAR.INCOMING_REMARK = "-";
  INSPECTIONstdVAR.INCOMING_RESULTFORMATdata = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONveOB.condition = "-";

  INSPECTIONstdVAR.INCOMING_CAL_K1_N = "-";
  INSPECTIONstdVAR.INCOMING_CAL_K2_N = "-";
  INSPECTIONstdVAR.INCOMING_CAL_K3_N = "-";
  INSPECTIONstdVAR.INCOMING_CAL_K1b = false;
  INSPECTIONstdVAR.INCOMING_CAL_K2b = false;
  INSPECTIONstdVAR.INCOMING_CAL_K3b = false;
  //--------------------------------------------------
  INSPECTIONstdVAR.List_INCOMING_ITEMs = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_INCOMING_ITEMs_set = [];
  INSPECTIONstdVAR.List_INCOMING_SCMARK = YESNO;
  INSPECTIONstdVAR.List_INCOMING_METHOD = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_INCOMING_LOAD = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_INCOMING_GT = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_INCOMING_UNIT = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_INCOMING_UNIT_CONVERST = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_INCOMING_FREQUENCY = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_INCOMING_IMGreaddata = YESNO;
  INSPECTIONstdVAR.List_INCOMING_SWreport = YESNO;
  INSPECTIONstdVAR.List_INCOMING_IMGno = NUM14;
  INSPECTIONstdVAR.List_INCOMING_CORETYPE = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_INCOMING_CALCULATE = [MapEntry("-", "-")];
  INSPECTIONstdVAR.List_INCOMING_SPECIFICATIONt = [MapEntry("-", "-")];
}

newdataFINAL() {
  INSPECTIONstdVAR.FINAL_seq = "0";
  INSPECTIONstdVAR.FINAL_ITEMs = "-";
  INSPECTIONstdVAR.FINAL_TYPE = "";
  INSPECTIONstdVAR.FINAL_RESULTFORMAT = "";
  INSPECTIONstdVAR.FINAL_GRAPHTYPE = "";
  INSPECTIONstdVAR.FINAL_INTERSECTION = "";
  INSPECTIONstdVAR.FINAL_COREtype = "-";
  INSPECTIONstdVAR.FINAL_FORMULA = "-";
  INSPECTIONstdVAR.FINAL_SCMARK = "-";
  INSPECTIONstdVAR.FINAL_SCMARKtype = "-";
  INSPECTIONstdVAR.FINAL_DOCUMENT = "-";
  INSPECTIONstdVAR.FINAL_METHOD = "-";
  INSPECTIONstdVAR.FINAL_IMGreaddata = "-";
  INSPECTIONstdVAR.FINAL_IMGno = "-";
  INSPECTIONstdVAR.FINAL_LOAD = "-";
  INSPECTIONstdVAR.FINAL_GT = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATION = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONve = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONstr = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONveOB = veOB();
  INSPECTIONstdVAR.FINAL_UNIT = "-";
  INSPECTIONstdVAR.FINAL_UNIT_CONVERST = "-";
  // INSPECTIONstdVAR.FINAL_POINTPCS = "-";
  INSPECTIONstdVAR.FINAL_POINT = "-";
  INSPECTIONstdVAR.FINAL_PCS = "-";
  INSPECTIONstdVAR.FINAL_FREQUENCY = "-";
  INSPECTIONstdVAR.FINAL_REMARK = "-";
  INSPECTIONstdVAR.FINAL_RESULTFORMATdata = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONveOB.condition = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONveOB.BTW_HI = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONveOB.BTW_LOW = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONveOB.HIM_L = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONveOB.LOL_H = "-";
  INSPECTIONstdVAR.FINAL_SPECIFICATIONveOB.TARGET = "-";

  INSPECTIONstdVAR.FINAL_CAL_K1_N = "-";
  INSPECTIONstdVAR.FINAL_CAL_K2_N = "-";
  INSPECTIONstdVAR.FINAL_CAL_K3_N = "-";
  INSPECTIONstdVAR.FINAL_CAL_K1b = false;
  INSPECTIONstdVAR.FINAL_CAL_K2b = false;
  INSPECTIONstdVAR.FINAL_CAL_K3b = false;
  if (INSPECTIONstdVAR.FINAL_POP) {
    INSPECTIONstdVAR.FINAL_POP = false;
  } else {
    INSPECTIONstdVAR.FINAL_POP = true;
  }
}

newdataINCOMING() {
  INSPECTIONstdVAR.INCOMING_seq = "0";
  INSPECTIONstdVAR.INCOMING_ITEMs = "-";
  INSPECTIONstdVAR.INCOMING_TYPE = "";
  INSPECTIONstdVAR.INCOMING_RESULTFORMAT = "";
  INSPECTIONstdVAR.INCOMING_GRAPHTYPE = "";
  INSPECTIONstdVAR.INCOMING_INTERSECTION = "";
  INSPECTIONstdVAR.INCOMING_COREtype = "-";
  INSPECTIONstdVAR.INCOMING_FORMULA = "-";
  INSPECTIONstdVAR.INCOMING_SCMARK = "-";
  INSPECTIONstdVAR.INCOMING_SCMARKtype = "-";
  INSPECTIONstdVAR.INCOMING_DOCUMENT = "-";
  INSPECTIONstdVAR.INCOMING_METHOD = "-";
  INSPECTIONstdVAR.INCOMING_IMGreaddata = "-";
  INSPECTIONstdVAR.INCOMING_IMGno = "-";
  INSPECTIONstdVAR.INCOMING_LOAD = "-";
  INSPECTIONstdVAR.INCOMING_GT = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATION = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONve = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONstr = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONveOB = veOB();
  INSPECTIONstdVAR.INCOMING_UNIT = "-";
  INSPECTIONstdVAR.INCOMING_UNIT_CONVERST = "-";
  // INSPECTIONstdVAR.INCOMING_POINTPCS = "-";
  INSPECTIONstdVAR.INCOMING_POINT = "-";
  INSPECTIONstdVAR.INCOMING_PCS = "-";
  INSPECTIONstdVAR.INCOMING_FREQUENCY = "-";
  INSPECTIONstdVAR.INCOMING_REMARK = "-";
  INSPECTIONstdVAR.INCOMING_RESULTFORMATdata = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONveOB.condition = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONveOB.BTW_HI = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONveOB.BTW_LOW = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONveOB.HIM_L = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONveOB.LOL_H = "-";
  INSPECTIONstdVAR.INCOMING_SPECIFICATIONveOB.TARGET = "-";

  INSPECTIONstdVAR.INCOMING_CAL_K1_N = "-";
  INSPECTIONstdVAR.INCOMING_CAL_K2_N = "-";
  INSPECTIONstdVAR.INCOMING_CAL_K3_N = "-";
  INSPECTIONstdVAR.INCOMING_CAL_K1b = false;
  INSPECTIONstdVAR.INCOMING_CAL_K2b = false;
  INSPECTIONstdVAR.INCOMING_CAL_K3b = false;
  if (INSPECTIONstdVAR.INCOMING_POP) {
    INSPECTIONstdVAR.INCOMING_POP = false;
  } else {
    INSPECTIONstdVAR.INCOMING_POP = true;
  }
}

class speckSTD {
  speckSTD({
    this.seq = "-",
    this.TYPE = "-",
    this.TYPEname = "-",
    this.ITEMs = "-",
    this.ITEMsname = "-",
    this.RESULTFORMAT = "-",
    this.GRAPHTYPE = "-",
    this.INTERSECTION = "-",
    this.DOCUMENT = "-",
    this.SCMARK = "-",
    this.METHOD = "-",
    this.METHODname = "-",
    this.INSTRUMENTS = "-",
    this.SPECIFICATION = "-",
    this.SPECIFICATIONve = "-",
    this.SPECIFICATIONvename = "-",
    this.UNIT = "-",
    this.UNITname = "-",
    this.CONVERSE = "-",
    this.CONVERSEname = "-",
    this.POINTPCS = "-",
    this.POINT = "-",
    this.PCS = "-",
    this.FREQUENCY = "-",
    this.FREQUENCYname = "-",
    this.MODE = "-",
    this.REMARK = "-",
    this.LOAD = "-",
  });

  String seq;
  String TYPE;
  String TYPEname;
  String ITEMs;
  String ITEMsname;
  String RESULTFORMAT;
  String GRAPHTYPE;
  String INTERSECTION;
  String DOCUMENT;
  String SCMARK;
  String METHOD;
  String METHODname;
  String INSTRUMENTS;
  String SPECIFICATION;
  String SPECIFICATIONve;
  String SPECIFICATIONvename;
  String UNIT;
  String UNITname;
  String CONVERSE;
  String CONVERSEname;
  String POINTPCS;
  String POINT;
  String PCS;
  String FREQUENCY;
  String FREQUENCYname;
  String MODE;
  String REMARK;
  String LOAD;
}

class List_FINAL_ITEMs_set_Class {
  List_FINAL_ITEMs_set_Class({
    this.ITEMs = '',
    this.RESULTFORMAT = '',
    this.TYPE = '',
    this.GRAPHTYPE = '',
    this.INTERSECTION = '',
    this.masterID = '',
  });
  String ITEMs;
  String RESULTFORMAT;
  String TYPE;
  String GRAPHTYPE;
  String INTERSECTION;
  String masterID;
}

class List_INCOMING_ITEMs_set_Class {
  List_INCOMING_ITEMs_set_Class({
    this.ITEMs = '',
    this.RESULTFORMAT = '',
    this.TYPE = '',
    this.GRAPHTYPE = '',
    this.INTERSECTION = '',
    this.masterID = '',
  });
  String ITEMs;
  String RESULTFORMAT;
  String TYPE;
  String GRAPHTYPE;
  String INTERSECTION;
  String masterID;
}
