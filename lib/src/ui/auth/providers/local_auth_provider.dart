import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:edu_erp/src/domain/user_account/entities/user_account_entity.dart';
import 'package:edu_erp/src/shared/helpers/password_hasher.dart';
import 'package:edu_erp/src/shared/helpers/show_toast.dart';
import 'package:edu_erp/src/infrastructure/providers/user_account_providers.dart';

enum SessionStatus { unknown, authenticated, unauthenticated }

class SessionState {
  final SessionStatus status;
  final UserAccountEntity? user;
  const SessionState({this.status = SessionStatus.unknown, this.user});
}

final sessionProvider =
    StateNotifierProvider<SessionNotifier, SessionState>((ref) {
  return SessionNotifier();
});

class SessionNotifier extends StateNotifier<SessionState> {
  SessionNotifier() : super(const SessionState());

  void setUser(UserAccountEntity user) {
    state = SessionState(status: SessionStatus.authenticated, user: user);
  }

  void clear() {
    state = const SessionState(status: SessionStatus.unauthenticated);
  }
}

Future<bool> loginLocal(WidgetRef ref, String username, String password) async {
  final getByUsername = ref.read(getUserAccountByUsernameUseCase);
  final account = await getByUsername(username);

  if (account == null || !account.isActive) {
    showGlobalToast(message: 'اسم المستخدم غير صحيح أو معطل', status: 'error');
    return false;
  }

  if (!PasswordHasher.verify(password, account.passwordHash)) {
    showGlobalToast(message: 'كلمة المرور غير صحيحة', status: 'error');
    return false;
  }

  ref.read(sessionProvider.notifier).setUser(account);
  return true;
}
