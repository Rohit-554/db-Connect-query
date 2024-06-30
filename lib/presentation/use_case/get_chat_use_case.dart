import '../../domain/repository/api_repository.dart';

class GetChatUseCase {
  final ApiRepository apiRepository;

  GetChatUseCase({required this.apiRepository});

  Future<List<String>?> execute({
    required String chatId,
    required String query
  }) async {
    return await apiRepository.getChat(
    chatId: chatId,
    query: query
    );
  }

}
