import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_master/bloc/BlocEvent/02-1-FINALMASTERget.dart';

import '../../../bloc/BlocEvent/02-2-FINALMASTERmsg.dart';
import '../../../bloc/cubit/Rebuild.dart';
import '../../../model/model.dart';
import '../../../widget/TABLE/06SPECIALSPECtable.dart';
import '../../../widget/common/Advancedropdown.dart';
import '../../../widget/common/ComInputText.dart';
import '../../../widget/common/popup.dart';
import '../FINALMASTERvar.dart';

late BuildContext SPECIALSPECtablecontext;

class SPECIALSPECtable extends StatelessWidget {
  SPECIALSPECtable({
    super.key,
    this.data,
  });
  final List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    SPECIALSPECtablecontext = context;
    List<dataset> _data = data ?? [];
    if (FINALMASTERvar.SPECIALSPEC_SORT_ST == 0) {
    } else if (FINALMASTERvar.SPECIALSPEC_SORT_ST == 1) {
      if (FINALMASTERvar.SPECIALSPEC_SORT_F == 0) {
        _data.sort((a, b) => a.f11.compareTo(b.f11));
      } else if (FINALMASTERvar.SPECIALSPEC_SORT_F == 1) {
        _data.sort((a, b) => a.f02.compareTo(b.f02));
      }
    } else if (FINALMASTERvar.SPECIALSPEC_SORT_ST == 2) {
      if (FINALMASTERvar.SPECIALSPEC_SORT_F == 0) {
        _data.sort((b, a) => a.f11.compareTo(b.f11));
      } else if (FINALMASTERvar.SPECIALSPEC_SORT_F == 1) {
        _data.sort((b, a) => a.f02.compareTo(b.f02));
      }
    }
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: InkWell(
            onTap: () {
              FINALMASTERvar.ITEM_SPECIALSPEC_ACTION = '';
              FINALMASTERvar.SPECIALSPEC_SPECIALSPEC_ACTION = '';
              FINALMASTERvar.masterID_SPECIALSPEC_ACTION = '';
              SPECIALSPECPOPUP(context);
            },
            child: Container(
              height: 30,
              width: 100,
              color: Colors.blue,
              child: const Center(
                  child: Text(
                "NEW",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 40,
          child: SPECIALSPECtableWidget(
            BGColorMain: Colors.grey.shade400,
            ITEMstext: "ITEMs",
            SPECIFICATIONtext: "SPECIFICATION",
            ACTIONtext: "ACTION",
            masterIDtext: "masterID",
            F01: (v) {
              FINALMASTERvar.SPECIALSPEC_SORT_F = 0;
              if (FINALMASTERvar.SPECIALSPEC_SORT_ST == 0) {
                FINALMASTERvar.SPECIALSPEC_SORT_ST = 1;
                context.read<BlocPageRebuild>().rebuildPage();
              } else if (FINALMASTERvar.SPECIALSPEC_SORT_ST == 1) {
                FINALMASTERvar.SPECIALSPEC_SORT_ST = 2;
                context.read<BlocPageRebuild>().rebuildPage();
              } else if (FINALMASTERvar.SPECIALSPEC_SORT_ST == 2) {
                FINALMASTERvar.SPECIALSPEC_SORT_ST = 0;
                context
                    .read<FINALMASTER_Bloc>()
                    .add(FINALMASTER_SPECIALSPECget());
              }
            },
            F02: (v) {
              FINALMASTERvar.SPECIALSPEC_SORT_F = 1;
              if (FINALMASTERvar.SPECIALSPEC_SORT_ST == 0) {
                FINALMASTERvar.SPECIALSPEC_SORT_ST = 1;
                context.read<BlocPageRebuild>().rebuildPage();
              } else if (FINALMASTERvar.SPECIALSPEC_SORT_ST == 1) {
                FINALMASTERvar.SPECIALSPEC_SORT_ST = 2;
                context.read<BlocPageRebuild>().rebuildPage();
              } else if (FINALMASTERvar.SPECIALSPEC_SORT_ST == 2) {
                FINALMASTERvar.SPECIALSPEC_SORT_ST = 0;
                context
                    .read<FINALMASTER_Bloc>()
                    .add(FINALMASTER_SPECIALSPECget());
              }
            },
          ),
        ),
        for (int i = 0; i < _data.length; i++) ...[
          SizedBox(
            height: 40,
            child: SPECIALSPECtableWidget(
              BGColorMain:
                  i.isEven ? Colors.grey.shade50 : Colors.grey.shade200,
              ITEMstext: _data[i].f11,
              SPECIFICATIONtext: _data[i].f02,
              ACTIONtext: "ACTION",
              isACTION: true,
              DeleteFN: (v) {
                FINALMASTERvar.masterID_SPECIALSPEC = _data[i].f21;
                // context
                //     .read<FINALMASTERmsg_Bloc>()
                //     .add(FINALMASTERmsg_SPECIFICATION_DROP());
                POPUPyn(context, (v) {
                  context
                      .read<FINALMASTERmsg_Bloc>()
                      .add(FINALMASTERmsg_SPECIFICATION_DROP());
                }, "DELETE DATA", 120, 90);
              },
              EditFN: (v) {
                FINALMASTERvar.ITEM_SPECIALSPEC_ACTION = _data[i].f01;
                FINALMASTERvar.SPECIALSPEC_SPECIALSPEC_ACTION = _data[i].f02;
                FINALMASTERvar.masterID_SPECIALSPEC_ACTION = _data[i].f21;
                SPECIALSPECPOPUP(context);
              },
              masterIDtext: _data[i].f21,
            ),
          ),
        ]
      ],
    );
  }
}

void SPECIALSPECPOPUP(
  BuildContext contextin,
) {
  showDialog(
    context: contextin,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        child: SPECIALSPECACTION(),
      );
    },
  );
}

class SPECIALSPECACTION extends StatefulWidget {
  const SPECIALSPECACTION({super.key});

  @override
  State<SPECIALSPECACTION> createState() => _SPECIALSPECACTIONState();
}

class _SPECIALSPECACTIONState extends State<SPECIALSPECACTION> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 450,
      color: Colors.white,
      child: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const SizedBox(
            child: Center(
              child: Text("SPECIALSPEC"),
            ),
          ),
          SizedBox(
            height: 64,
            width: 400,
            child: AdvanceDropDown(
              sLabel: "ITEM",
              imgpath: 'assets/icons/icon-down_4@3x.png',
              listdropdown: FINALMASTERvar.ITEMSddBUFF,
              onChangeinside: (d, k) {
                setState(() {
                  FINALMASTERvar.ITEM_SPECIALSPEC_ACTION = d;
                });
              },
              value: FINALMASTERvar.ITEM_SPECIALSPEC_ACTION,
              height: 40,
              width: 400,
            ),
          ),
          ComInputText(
            nLimitedChar: 100,
            sLabel: "SPECIALSPEC",
            height: 40,
            width: 400,
            isContr: FINALMASTERvar.iscontrol,
            fnContr: (input) {
              setState(() {
                FINALMASTERvar.iscontrol = input;
              });
            },
            sValue: FINALMASTERvar.SPECIALSPEC_SPECIALSPEC_ACTION,
            returnfunc: (String s) {
              FINALMASTERvar.SPECIALSPEC_SPECIALSPEC_ACTION = s;
            },
          ),
          ComInputText(
            nLimitedChar: 100,
            sLabel: "masterID",
            height: 40,
            width: 400,
            isContr: FINALMASTERvar.iscontrol,
            // isEnabled: FINALMASTERvar.masterID_ACTION_isEnabled,
            fnContr: (input) {
              setState(() {
                FINALMASTERvar.iscontrol = input;
              });
            },
            sValue: FINALMASTERvar.masterID_SPECIALSPEC_ACTION,
            returnfunc: (String s) {
              FINALMASTERvar.masterID_SPECIALSPEC_ACTION = s;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              SPECIALSPECtablecontext.read<FINALMASTERmsg_Bloc>()
                  .add(FINALMASTERmsg_SPECIFICATION_EDIT());
            },
            child: Container(
              height: 40,
              width: 200,
              color: Colors.blue,
              child: const Center(
                  child: Text(
                "SAVE",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      )),
    );
  }
}
