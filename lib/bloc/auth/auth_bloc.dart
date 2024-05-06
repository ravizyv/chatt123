


import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:bloc/bloc.dart';
import 'package:chatt/bloc/auth/auth_event.dart';
import 'package:chatt/bloc/auth/auth_state.dart';
import 'package:chatt/service/AppwriteClient.dart';
import 'package:kiwi/kiwi.dart';

class AuthBloc extends Bloc<AuthEvent,AuthState> {


  final AppWriteClientService appWriteClientService= KiwiContainer().resolve<AppWriteClientService>();

  AuthBloc(AuthState authState) : super(authState){

    on<EmailLoginEvent>((event,state) async{

      await loginWithEmail(event,state);
    });

  }



  loginWithEmail(EmailLoginEvent event, Emitter<AuthState> state) async {
    try{


    emit(LoadingLoginAuthState());
    Account account = Account(appWriteClientService.getClient());

    String email = event.email;
    String pass = event.pass;
    Session session = await account.createEmailSession(
      email: email,
      password: pass,
    );

    // информация о пользователе
    User user = await account.get();

    emit(SuccessLoginAuthState(user));

  } catch (e) {
    print("Error during loading: $e");
    if (e is AppwriteException) {
      if (e.message == 'general_argument_invalid') {
        emit(FailureLoginAuthState("Неверные учетные данные. Пожалуйста проверьте введеные данные."));
      }
  }
    emit(FailureLoginAuthState("Ошибка входа: $e"));
  }

}
}

