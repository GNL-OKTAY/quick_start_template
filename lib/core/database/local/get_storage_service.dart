// ignore_for_file: public_member_api_docs

import 'package:get_storage/get_storage.dart';

import 'contract/storage_contract.dart';

class GetStorageImp implements StorageContract {
  GetStorageImp._();

  static final shared = GetStorageImp._();
  final GetStorage _storage = GetStorage();

  @override
  Future<T?> read<T>(String key) async {
    final response = _storage.read<T>(key);
    return response;
  }

  @override
  Future<void> delete<T>(String key) async {
    await _storage.remove(key);
  }

  @override
  Future<void> write<T>(String key, T dataToSave) async {
    await _storage.write(key, dataToSave);
  }
}
