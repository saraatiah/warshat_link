import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warshat_link/core/app_widgets/password_text_form_field/bloc/password_field_states.dart';
class PasswordFieldCubit extends Cubit<PasswordFieldState>{
  PasswordFieldCubit() : super(InitialPasswordFieldState());
  bool hiddenPassword = true;
  void changeHiddenStatue()
  {
    hiddenPassword = !hiddenPassword;
    emit(PasswordVisibilityState());
  }

}