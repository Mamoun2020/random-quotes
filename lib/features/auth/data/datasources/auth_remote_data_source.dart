
import 'package:one_studio_core/core.dart';
import 'package:quotes/features/auth/data/dto/user_dto.dart';
import 'package:quotes/features/auth/data/models/user.dart';
import 'package:quotes/features/auth/data/models/user_meta.dart';

class AuthRemoteDataSource extends DataSource {
  final ApiClient _client;

  AuthRemoteDataSource(this._client);

  Future<SingleMResponse<User, UserMeta>> login(UserDto user) async {
    return mapSingleMResponse<User, UserMeta>(
      await _client.post(
        'users/login',
        body: user.body,
        headers: Api.headers(),
      ),
    );
  }
}
