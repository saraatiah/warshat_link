// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:warshat_link/features/auth/bloc/auth_bloc/auth_states.dart';
// import 'package:warshat_link/features/auth/services/auth_service.dart';

// class AuthCubit extends Cubit<AuthStates> {
//   AuthCubit() : super(InitialAuthState());
//   AuthService authService = AuthService();

//   Future signUp({
//     required String email,
//     required String password,
//     required String confirmPassword,
//   }) async
//   {
//     emit(LoadingAuthState());
//     try
//     {
//       authService.signUp(email, password, confirmPassword);
//       Future.delayed(const Duration(seconds: 3), () {
//         emit(SuccessAuthState());
//       });
//     }
//     catch (e)
//     {
//       emit(ErrorAuthState());
//     }
//   }

//   Future logIn({
//     required double phone,
//     required String password,
//   }) async
//   {
//     emit(LoadingAuthState());
//     try {
//       authService.logIn(phone, password);
//       Future.delayed(const Duration(seconds: 3), () {
//         emit(SuccessAuthState());
//       });
//     } catch (e) {
//       emit(ErrorAuthState());
//     }
//   }

//   Future logOut() async
//   {
//     emit(LoadingAuthState());
//     authService.logOut();
//     Future.delayed(const Duration(seconds: 1), () {
//       emit(SuccessAuthState());
//     });
//     emit(ErrorAuthState());
//   }
// }
