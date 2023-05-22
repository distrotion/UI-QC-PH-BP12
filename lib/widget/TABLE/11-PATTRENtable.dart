import 'package:flutter/material.dart';

import '00EACHCALL.dart';

class PATTERNtable extends StatelessWidget {
  PATTERNtable({
    super.key,
    this.seq,
    this.ITEMs,
    this.CORStype,
    this.FORMULA,
    this.SCMARK,
    this.SCMARKtype,
    this.DOCUMENT,
    this.METHOD,
    this.IMGreaddata,
    this.IMGno,
    this.LOAD,
    this.GT,
    this.SPECIFICATIONve,
    this.CALCULATE,
    this.UNIT,
    this.CONVERSE,
    this.POSITION,
    this.PCS,
    this.FREQUENCY,
    this.REMARK,
    this.SWreport,
    //
    this.Showseq,
    this.ShowITEMs,
    this.ShowCORStype,
    this.ShowFORMULA,
    this.ShowSCMARK,
    this.ShowSCMARKtype,
    this.ShowDOCUMENT,
    this.ShowMETHOD,
    this.ShowIMGreaddata,
    this.ShowIMGno,
    this.ShowLOAD,
    this.ShowGT,
    this.ShowSPECIFICATIONve,
    this.ShowCALCULATE,
    this.ShowUNIT,
    this.ShowCONVERSE,
    this.ShowPOSITION,
    this.ShowPCS,
    this.ShowFREQUENCY,
    this.ShowREMARK,
    this.ShowSWreport,
    //
    this.WIDGETseq,
    this.WIDGETITEMs,
    this.WIDGETCORStype,
    this.WIDGETFORMULA,
    this.WIDGETSCMARK,
    this.WIDGETSCMARKtype,
    this.WIDGETDOCUMENT,
    this.WIDGETMETHOD,
    this.WIDGETIMGreaddata,
    this.WIDGETIMGno,
    this.WIDGETLOAD,
    this.WIDGETGT,
    this.WIDGETSPECIFICATIONve,
    this.WIDGETCALCULATE,
    this.WIDGETUNIT,
    this.WIDGETCONVERSE,
    this.WIDGETPOSITION,
    this.WIDGETPCS,
    this.WIDGETFREQUENCY,
    this.WIDGETREMARK,
    this.WIDGETSWreport,
    //
    this.ACTION,
    this.ACTIONMODE,
    this.isACTION,
    this.EditFN,
    this.DeleteFN,
    this.SAVEFN,
    this.BGColorMain,
  });
  String? seq;
  String? ITEMs;
  String? CORStype;
  String? FORMULA;
  String? SCMARK;
  String? SCMARKtype;
  String? DOCUMENT;
  String? METHOD;
  String? IMGreaddata;
  String? IMGno;
  String? LOAD;
  String? GT;
  String? SPECIFICATIONve;
  String? CALCULATE;
  String? UNIT;
  String? CONVERSE;
  String? POSITION;
  String? PCS;
  String? FREQUENCY;
  String? REMARK;
  String? SWreport;
//
  bool? Showseq;
  bool? ShowITEMs;
  bool? ShowCORStype;
  bool? ShowFORMULA;
  bool? ShowSCMARK;
  bool? ShowSCMARKtype;
  bool? ShowDOCUMENT;
  bool? ShowMETHOD;
  bool? ShowIMGreaddata;
  bool? ShowIMGno;
  bool? ShowLOAD;
  bool? ShowGT;
  bool? ShowSPECIFICATIONve;
  bool? ShowCALCULATE;
  bool? ShowUNIT;
  bool? ShowCONVERSE;
  bool? ShowPOSITION;
  bool? ShowPCS;
  bool? ShowFREQUENCY;
  bool? ShowREMARK;
  bool? ShowSWreport;
//
  Widget? WIDGETseq;
  Widget? WIDGETITEMs;
  Widget? WIDGETCORStype;
  Widget? WIDGETFORMULA;
  Widget? WIDGETSCMARK;
  Widget? WIDGETSCMARKtype;
  Widget? WIDGETDOCUMENT;
  Widget? WIDGETMETHOD;
  Widget? WIDGETIMGreaddata;
  Widget? WIDGETIMGno;
  Widget? WIDGETLOAD;
  Widget? WIDGETGT;
  Widget? WIDGETSPECIFICATIONve;
  Widget? WIDGETCALCULATE;
  Widget? WIDGETUNIT;
  Widget? WIDGETCONVERSE;
  Widget? WIDGETPOSITION;
  Widget? WIDGETPCS;
  Widget? WIDGETFREQUENCY;
  Widget? WIDGETREMARK;
  Widget? WIDGETSWreport;
//
  String? ACTION;
  int? ACTIONMODE;
  bool? isACTION;
  Function(String)? EditFN;
  Function(String)? DeleteFN;
  Function(String)? SAVEFN;
  Color? BGColorMain;
  @override
  Widget build(BuildContext context) {
    int _ACTIONMODE = ACTIONMODE ?? 0;
    return Container(
      color: BGColorMain ?? Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              if (Showseq ?? true) ...[
                Expanded(
                  flex: 1,
                  child: WIDGETseq == null
                      ? EACHCELL(
                          data: seq ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETseq ?? SizedBox(),
                ),
              ],
              if (ShowITEMs ?? true) ...[
                Expanded(
                  flex: 2,
                  child: WIDGETITEMs == null
                      ? EACHCELL(
                          data: ITEMs ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETITEMs ?? SizedBox(),
                ),
              ],

              if (ShowSCMARK ?? true) ...[
                Expanded(
                  flex: 1,
                  child: WIDGETSCMARK == null
                      ? EACHCELL(
                          data: SCMARK ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETSCMARK ?? SizedBox(),
                ),
              ],
              // if (ShowSCMARKtype ?? true) ...[
              //   Expanded(
              //     flex: 1,
              //     child: WIDGETSCMARKtype == null
              //         ? EACHCELL(
              //             data: SCMARKtype ?? "",
              //             tapCell: (v) {},
              //           )
              //         : WIDGETSCMARKtype ?? SizedBox(),
              //   ),
              // ],
              if (ShowDOCUMENT ?? true) ...[
                Expanded(
                  flex: 2,
                  child: WIDGETDOCUMENT == null
                      ? EACHCELL(
                          data: DOCUMENT ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETDOCUMENT ?? SizedBox(),
                ),
              ],
              if (ShowMETHOD ?? true) ...[
                Expanded(
                  flex: 2,
                  child: WIDGETMETHOD == null
                      ? EACHCELL(
                          data: METHOD ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETMETHOD ?? SizedBox(),
                ),
              ],
              // if (ShowIMGreaddata ?? true) ...[
              //   Expanded(
              //     flex: 2,
              //     child: WIDGETIMGreaddata == null
              //         ? EACHCELL(
              //             data: IMGreaddata ?? "",
              //             tapCell: (v) {},
              //           )
              //         : WIDGETIMGreaddata ?? SizedBox(),
              //   ),
              // ],
              // if (ShowIMGno ?? true) ...[
              //   Expanded(
              //     flex: 2,
              //     child: WIDGETIMGno == null
              //         ? EACHCELL(
              //             data: IMGno ?? "",
              //             tapCell: (v) {},
              //           )
              //         : WIDGETIMGno ?? SizedBox(),
              //   ),
              // ],
              if (ShowLOAD ?? true) ...[
                Expanded(
                  flex: 1,
                  child: WIDGETLOAD == null
                      ? EACHCELL(
                          data: LOAD ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETLOAD ?? SizedBox(),
                ),
              ],
              if (ShowGT ?? true) ...[
                Expanded(
                  flex: 1,
                  child: WIDGETGT == null
                      ? EACHCELL(
                          data: GT ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETGT ?? SizedBox(),
                ),
              ],
              if (ShowSPECIFICATIONve ?? true) ...[
                Expanded(
                  flex: 1,
                  child: WIDGETSPECIFICATIONve == null
                      ? EACHCELL(
                          data: SPECIFICATIONve ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETSPECIFICATIONve ?? SizedBox(),
                ),
              ],
              // if (ShowCALCULATE ?? true) ...[
              //   Expanded(
              //     flex: 1,
              //     child: WIDGETCALCULATE == null
              //         ? EACHCELL(
              //             data: CALCULATE ?? "",
              //             tapCell: (v) {},
              //           )
              //         : WIDGETCALCULATE ?? SizedBox(),
              //   ),
              // ],
              if (ShowUNIT ?? true) ...[
                Expanded(
                  flex: 1,
                  child: WIDGETUNIT == null
                      ? EACHCELL(
                          data: UNIT ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETUNIT ?? SizedBox(),
                ),
              ],
              if (ShowFORMULA ?? true) ...[
                Expanded(
                  flex: 2,
                  child: WIDGETFORMULA == null
                      ? EACHCELL(
                          data: FORMULA ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETFORMULA ?? SizedBox(),
                ),
              ],
              if (ShowCONVERSE ?? true) ...[
                Expanded(
                  flex: 1,
                  child: WIDGETCONVERSE == null
                      ? EACHCELL(
                          data: CONVERSE ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETCONVERSE ?? SizedBox(),
                ),
              ],
              if (ShowPOSITION ?? true) ...[
                Expanded(
                  flex: 1,
                  child: WIDGETPOSITION == null
                      ? EACHCELL(
                          data: POSITION ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETPOSITION ?? SizedBox(),
                ),
              ],
              if (ShowPCS ?? true) ...[
                Expanded(
                  flex: 1,
                  child: WIDGETPCS == null
                      ? EACHCELL(
                          data: PCS ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETPCS ?? SizedBox(),
                ),
              ],
              if (ShowFREQUENCY ?? true) ...[
                Expanded(
                  flex: 1,
                  child: WIDGETFREQUENCY == null
                      ? EACHCELL(
                          data: FREQUENCY ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETFREQUENCY ?? SizedBox(),
                ),
              ],
              if (ShowREMARK ?? true) ...[
                Expanded(
                  flex: 1,
                  child: WIDGETREMARK == null
                      ? EACHCELL(
                          data: REMARK ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETREMARK ?? SizedBox(),
                ),
              ],
              if (ShowCORStype ?? true) ...[
                Expanded(
                  flex: 2,
                  child: WIDGETCORStype == null
                      ? EACHCELL(
                          data: CORStype ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETCORStype ?? SizedBox(),
                ),
              ],
              if (ShowSWreport ?? true) ...[
                Expanded(
                  flex: 1,
                  child: WIDGETSWreport == null
                      ? EACHCELL(
                          data: SWreport ?? "",
                          tapCell: (v) {},
                        )
                      : WIDGETSWreport ?? SizedBox(),
                ),
              ],
              if (_ACTIONMODE == 0) ...[
                Expanded(
                  flex: 1,
                  child: isACTION ?? false
                      ? ACTIONCELL(
                          DeleteFN: (v) {
                            if (DeleteFN != null) {
                              DeleteFN!("DeleteFN");
                            }
                          },
                          EditFN: (v) {
                            if (EditFN != null) {
                              EditFN!("EditFN");
                            }
                          },
                        )
                      : EACHCELL(
                          data: ACTION ?? "",
                          tapCell: (v) {},
                        ),
                ),
              ] else if (_ACTIONMODE == 1) ...[
                Expanded(
                  flex: 1,
                  child: isACTION ?? false
                      ? ACTIONCELLs(
                          SaveFN: (v) {
                            if (SAVEFN != null) {
                              SAVEFN!("SAVEFN");
                            }
                          },
                        )
                      : EACHCELL(
                          data: ACTION ?? "",
                          tapCell: (v) {},
                        ),
                ),
              ],
            ],
          )
        ],
      ),
    );
  }
}
