import 'package:flutter_riverpod/flutter_riverpod.dart';

StateProvider<String> hostProvider = StateProvider((ref) => '');
StateProvider<String> userProvider = StateProvider((ref) => '');
StateProvider<String> passwordProvider = StateProvider((ref) => '');
StateProvider<String> databaseProvider = StateProvider((ref) => '');
StateProvider<bool> isDatabaseConnected = StateProvider((ref) => false);
StateProvider<String> chatIdProvider = StateProvider((ref) => '');