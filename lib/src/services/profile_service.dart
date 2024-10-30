import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/models.dart';

class ProfileService {
  final http.Client _client;
  final NetworkConfig networkConfig;

  ProfileService({
    http.Client? client,
    required this.networkConfig,
  }) : _client = client ?? http.Client();

  Future<Profile> getProfile(String stxAddress) async {
    final response = await _client.get(
      Uri.parse('${networkConfig.url}/v1/profiles/$stxAddress'),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get profile: ${response.body}');
    }

    return Profile.fromJson(json.decode(response.body));
  }

  Future<void> updateProfile(String stxAddress, Profile profile) async {
    final response = await _client.put(
      Uri.parse('${networkConfig.url}/v1/profiles/$stxAddress'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(profile.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update profile: ${response.body}');
    }
  }

  Future<String> uploadProfileImage(
      String stxAddress, List<int> imageBytes) async {
    final request = http.MultipartRequest(
      'POST',
      Uri.parse('${networkConfig.url}/v1/profiles/$stxAddress/image'),
    );

    request.files.add(
      http.MultipartFile.fromBytes(
        'image',
        imageBytes,
        filename: 'profile.jpg',
      ),
    );

    final response = await request.send();
    if (response.statusCode != 200) {
      throw Exception('Failed to upload profile image');
    }

    final responseData = await response.stream.bytesToString();
    return json.decode(responseData)['url'];
  }

  Future<Map<String, dynamic>> getProfileApps(String stxAddress) async {
    final response = await _client.get(
      Uri.parse('${networkConfig.url}/v1/profiles/$stxAddress/apps'),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get profile apps: ${response.body}');
    }

    return json.decode(response.body);
  }

  Future<void> deleteProfile(String stxAddress) async {
    final response = await _client.delete(
      Uri.parse('${networkConfig.url}/v1/profiles/$stxAddress'),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to delete profile: ${response.body}');
    }
  }
}
