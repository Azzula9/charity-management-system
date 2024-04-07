import 'package:charityms/bloc/authbloc_event.dart';
import 'package:charityms/bloc/authbloc_state.dart';
import 'package:charityms/model/reportmodel.dart';
import 'package:charityms/model/suggestion.dart';
import 'package:charityms/service.dart/reportservice.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bloc/bloc.dart';
import 'package:charityms/service.dart/suggservice.dart';

class AuthblocBloc extends Bloc<AuthblocEvent, AuthblocState> {
  // bool? islog = false;
  // bool? haveform = false;
  // bool? isreg = false;

  reportsrvice rserv = reportsrvice();
  suggestionservice sserv = suggestionservice();
  AuthblocBloc() : super(AuthblocInitial()) {
    // ignore: unnecessary_statements
    //   on<registerevent>((event, emit) async {
    //     Rig? R = await serv.authregs(event.user);
    //     R == null
    //         ? emit(Fildregisterstate())
    //         : {emit(Successedregisterstate(user: R)), isreg = true};
    //     SharedPreferences? sharedPreferences =
    //         await SharedPreferences?.getInstance();
    //     sharedPreferences.setInt('id', R?.userInformation?.id as int);
    //     sharedPreferences.setString('name', '${R?.userInformation?.firstName}');
    //     sharedPreferences.setString('email', '${R?.userInformation?.email}');
    //     sharedPreferences.setBool('isreg', isreg!);
    //     sharedPreferences.setString('messageR', '${R?.message}');
    //   });
    //   on<loginevent>(((event, emit) async {
    //     User? U = await serv.authlog(event.user);
    //     U == null ? emit(Fildloginstate()) : emit(Successedloginstate(user: U));
    //     islog = true;
    //     SharedPreferences sharedPreferences =
    //         await SharedPreferences.getInstance();
    //     sharedPreferences.setString(
    //         'acces_token', '${U?.accesToken?.accessToken}');
    //     sharedPreferences.setBool('islog', islog!);
    //     sharedPreferences.setString('message', '${U?.message}');
    //   }));
    //   on<profileevent>(((event, emit) async {
    //     // ignore: unused_local_variable
    //     Profile? P = await serv.authpro();
    //     P == null ? emit(Fildprofilestate()) : emit(Successedprofilestate());
    //   }));
    //   on<logoutevent>(((event, emit) async {
    //     bool? logout = await serv.authlogout(event.token);
    //     logout == true
    //         ? {emit(Successedlogoutstate()), emit(AuthblocInitial())}
    //         : emit(Fildlogoutstate());
    //     SharedPreferences sharedPreferences =
    //         await SharedPreferences.getInstance();
    //     sharedPreferences.setString('name', 'no name');
    //     sharedPreferences.setInt('id', -1);
    //     sharedPreferences.setString('email', 'no email');
    //     sharedPreferences.setString('acces_token', '');
    //     sharedPreferences.setBool('islog', false);
    //     sharedPreferences.setBool('isreg', false);
    //     sharedPreferences.setBool('haveform', false);
    //   }));
    //   on<Vformevent>((event, emit) async {
    //     Volmodel? V = await serve.vol(event.user);
    //     V == null ? emit(Faildvform()) : emit(Successedvform(user: V));
    //     haveform = true;
    //     SharedPreferences? sharedPreferences =
    //         await SharedPreferences?.getInstance();
    //     sharedPreferences.setInt('idv', V?.id as int);
    //     sharedPreferences.setBool('haveform', haveform!);
    //   });

    //   on<getvformevent>(((event, emit) async {
    //     Volmodel? G = await serve.vget();
    //     G == null
    //         ? emit(Fildgetvformstate())
    //         : emit(getvformsuccessedstate(user: G));
    //     SharedPreferences? sharedPreferences =
    //         await SharedPreferences?.getInstance();
    //     sharedPreferences.setInt('hourwork', G?.hourWork as int);
    //     sharedPreferences.setInt('sectionId', G?.sectionId as int);
    //   }));
    //   on<edvformevent>(((event, emit) async {
    //     Volmodel? E = await serve.ved(event.user);
    //     E == null ? emit(Faileddvformstate()) : emit(edsuccessedvform(user: E));
    //     SharedPreferences? sharedPreferences =
    //         await SharedPreferences?.getInstance();
    //     sharedPreferences.setInt('hourwork', E?.hourWork as int);
    //     sharedPreferences.setInt('sectionId', E?.sectionId as int);
    //   }));
    //   on<getcomevent>(((event, emit) async {
    //     Com? C = await ser.comget();
    //     C == null
    //         ? emit(Faildgetcomstate())
    //         : emit(successedgetcomstate(user: C));
    //   }));
    on<getreportevent>(((event, emit) async {
      Report? S = await rserv.rget();
      S == null ? emit(Faildrepotstate()) : emit(successedreportstate(user: S));
      SharedPreferences? sharedPreferences =
          await SharedPreferences?.getInstance();

      sharedPreferences.setString('firstName', '${S?.firstName}');
      sharedPreferences.setString('lastName', '${S?.lastName} ');
      sharedPreferences.setString('email', '${S?.email}');
      sharedPreferences.setString('phoneNumber', '${S?.phoneNumber}');
      sharedPreferences.setString('memberNumber', '${S?.memberNumber}');
    }));
    on<editreportvent>(((event, emit) async {
      Report? E = await rserv.red(event.user);
      E == null
          ? emit(Faildrepotstate())
          : emit(edsuccessedreportform(user: E));
      SharedPreferences? sharedPreferences =
          await SharedPreferences?.getInstance();
      sharedPreferences.setString('firstName', '${E?.firstName}');
      sharedPreferences.setString('lastName', '${E?.lastName} ');
      sharedPreferences.setString('email', '${E?.email}');
      sharedPreferences.setString('phoneNumber', '${E?.phoneNumber}');
      sharedPreferences.setString('memberNumber', '${E?.memberNumber}');
    }));
    on<reportevent>(((event, emit) async {
      Report? S = await rserv.vreport(event.user);
      S == null ? emit(Faildrepotstate()) : emit(successedreportstate(user: S));
    }));
    on<suggevent>(((event, emit) async {
      Sugg? S = await sserv.vsugg(event.user);
      S == null ? emit(Failedsuggestion()) : emit(successuggestion(user: S));
    }));
  }
}
