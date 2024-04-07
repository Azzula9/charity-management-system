// part of 'authbloc_bloc.dart';

import 'package:charityms/model/reportmodel.dart';
import 'package:charityms/model/suggestion.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AuthblocState {}

class AuthblocInitial extends AuthblocState {}

// class Successedregisterstate extends AuthblocState {
//   final Rig user;
//   Successedregisterstate({
//     required this.user,
//   });
// }

// class Fildregisterstate extends AuthblocState {}

// class Successedloginstate extends AuthblocState {
//   final User user;
//   Successedloginstate({required this.user});
// }

// class Fildloginstate extends AuthblocState {}

// class Successedprofilestate extends AuthblocState {}

// class Fildprofilestate extends AuthblocState {}

// class Successedlogoutstate extends AuthblocState {}

// class Fildlogoutstate extends AuthblocState {}

// class Successedvform extends AuthblocState {
//   Volmodel? user;
//   Successedvform({
//     required this.user,
//   });
// }

// class Faildvform extends AuthblocState {}

// class getvformsuccessedstate extends AuthblocState {
//   Volmodel? user;
//   getvformsuccessedstate({required this.user});
// }

// class Fildgetvformstate extends AuthblocState {}

// class edsuccessedvform extends AuthblocState {
//   Volmodel? user;
//   edsuccessedvform({
//     required this.user,
//   });
// }

// class Faileddvformstate extends AuthblocState {}

// class successedgetcomstate extends AuthblocState {
//   List<Com>? user;
//   successedgetcomstate({required this.user});
// }

// class Faildgetcomstate extends AuthblocState {}

class successedreportstate extends AuthblocState {
  Report? user;
  successedreportstate({required this.user});
}

class edsuccessedreportform extends AuthblocState {
  Report? user;
  edsuccessedreportform({
    required this.user,
  });
}

class Faildrepotstate extends AuthblocState {}

class LoadinggetcomState extends AuthblocState {}

class LoadinggetvformState extends AuthblocState {}
class successuggestion extends AuthblocState {
  Sugg? user;
  successuggestion({
    required this.user,
  });
}

class Failedsuggestion extends AuthblocState {}
