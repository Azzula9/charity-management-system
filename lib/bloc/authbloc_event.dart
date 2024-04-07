// part of 'authbloc_bloc.dart';

import 'package:charityms/model/reportmodel.dart';
import 'package:charityms/model/suggestion.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AuthblocEvent {}

// class registerevent extends AuthblocEvent {
//   Rig user;
//   registerevent({required this.user});
// }

// class loginevent extends AuthblocEvent {
//   User user;
//   loginevent({required this.user});
// }

// class profileevent extends AuthblocEvent {}

// class logoutevent extends AuthblocEvent {
//   String? token;
//   logoutevent({required this.token});
// }

// class Vformevent extends AuthblocEvent {
//   Volmodel user;
//   Vformevent({required this.user});
// }

// class getvformevent extends AuthblocEvent {}

// class edvformevent extends AuthblocEvent {
//   Volmodel user;
//   edvformevent({required this.user});
// }

class getreportevent extends AuthblocEvent {}

class editreportvent extends AuthblocEvent {
  Report user;
  editreportvent({required this.user});
}

class reportevent extends AuthblocEvent {
  Report user;
  reportevent({required this.user});
}

class suggevent extends AuthblocEvent {
  Sugg user;
  suggevent({required this.user});
}