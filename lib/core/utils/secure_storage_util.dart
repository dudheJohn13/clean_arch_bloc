import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageUtil {
  const SecureStorageUtil._();

  static final FlutterSecureStorage _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
      keyCipherAlgorithm:
          KeyCipherAlgorithm.RSA_ECB_OAEPwithSHA_256andMGF1Padding,
      storageCipherAlgorithm: StorageCipherAlgorithm.AES_CBC_PKCS7Padding,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );

  static Future<void> write(String key, dynamic value) async {
    await _storage.write(key: key, value: value);
  }

  static T? read<T>(String key) {
    _storage.read(key: key);
  }

  static Future<void> writeObject(
    String key,
    Map<String, dynamic> value,
  ) async {
    await _storage.write(key: key, value: json.encode(value));
  }

  static Future<void> writeList(String key, List<dynamic> value) async {
    await _storage.write(key: key, value: json.encode(value));
  }

  static Future<void> clear() async {
    await _storage.deleteAll();
  }

  static Future<void> remove(String key) async {
    await _storage.delete(key: key);
  }

  static Future<Map<String, String>> readAll() async {
    return await _storage.readAll();
  }

  static Future<Set<String>> readAllKey() async {
    final Map<String, String> allValues = await _storage.readAll();
    return allValues.keys.toSet();
  }
}
