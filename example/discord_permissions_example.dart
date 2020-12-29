import 'package:discord_permissions/discord_permissions.dart';

void main() {
  Permissions everyPermission = convertPermissions(2147483647);
  print(everyPermission);

  if (everyPermission.ADMINISTRATOR) {
    print("You are an Admin!");
  }

  Permissions noPermission = convertPermissions(0);
  print(noPermission);
}
