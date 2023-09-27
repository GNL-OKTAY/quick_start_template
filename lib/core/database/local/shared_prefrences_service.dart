// import 'package:get_storage/get_storage.dart';

// import 'package:avare3/core/database/local/contract/storage_contract.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class MyStorage implements StorageContract {
//   MyStorage._();

//   static final shared = MyStorage._();

//   @override
//   Future<T> read<T>(String key) async {
//     var instance = SharedPreferences.getInstance();
//     final response = await instance.read(key);
//     return response;
//   }

//   @override
//   Future<void> delete<T>(String key) async {
//     await _storage.remove(key);
//   }

//   @override
//   Future<void> write<T>(String key, T dataToSave) async {
//     await _storage.write(key, dataToSave);
//   }
// }
