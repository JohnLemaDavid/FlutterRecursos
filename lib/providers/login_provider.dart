import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:teslo_shop/apis/user_information.dart';
import 'package:teslo_shop/models/login_model.dart';
part 'login_provider.g.dart';



@Riverpod(keepAlive: true)
Future<UserResponse> userStateNotifier(UserStateNotifierRef ref, String user, String pass) async {
  final response = await UserInformation.getUserLogin(user, pass);
  return response;
}

@Riverpod()
class UserCredentialsNotifier extends _$UserCredentialsNotifier {
  @override
   UserCredentials build() {
    return UserCredentials(
      usuario:'',
      clave: ''
    ) ;
  }
  Future<void> updateUsuario(String usuario) async {
    state = state.copyWith(usuario: usuario);
  }
  Future<void> updateClave(String clave) async {
    state = state.copyWith(clave: clave);
  }

}







