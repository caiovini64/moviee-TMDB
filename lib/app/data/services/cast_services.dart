class CastService {
  final client;

  CastService({required this.client});

  Future<Map<String, dynamic>> getAllCredits(movieId) async {
    final response = await client.get('/movie/$movieId/credits');
    return response;
  }
}
