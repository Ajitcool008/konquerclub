import 'package:konquerclub/src/models/fighter_model.dart';
import 'package:konquerclub/src/utils/network/endpoints.dart';
import 'package:konquerclub/src/utils/network/network_manager.dart';

class ApiService {
  Future<FighterModel> fetchFighters(
      {int page = 1, String? name, int? ageGte, int? ageLte}) async {
    final response = await NetworkManager.instance.getDio().get(
      Endpoints.baseURL + Endpoints.users,
      queryParameters: {
        'page': page,
        if (name != null) 'name': name,
        if (ageGte != null) 'age__gte': ageGte,
        if (ageLte != null) 'age__lte': ageLte,
      },
    );
    return FighterModel.fromJson(response.data);
  }
}
