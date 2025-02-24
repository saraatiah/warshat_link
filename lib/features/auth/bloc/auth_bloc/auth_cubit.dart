import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_states.dart';

class AuthCubit extends Cubit<AuthStates>
{
   AuthCubit():super (InitialAuthState());
   Future signUp({
      required String name,
      required String email,
      required String password,
      required String confirmPassword,
   }) async
   {
      emit(LoadingAuthState());
      try
      {
          emit(SuccessAuthState());
      }
      catch (e)
      {
         emit(ErrorAuthState());
      }
   }
   Future logIn({
      required String email,
      required String password,
   }) async
   {
      emit(LoadingAuthState());
      try
      {
         emit(SuccessAuthState());
      }
      catch (e)
      {
         emit(ErrorAuthState());
      }
   }
   Future logOut() async
   {
      emit(LoadingAuthState());
      try {
         emit(SuccessAuthState());
      } catch (e) {
         emit(ErrorAuthState());
      }
   }
}