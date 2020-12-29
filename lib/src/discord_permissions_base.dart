const permissions = {
  'CREATE_INSTANT_INVITE': 1,
  'KICK_MEMBERS': 2,
  'BAN_MEMBERS': 4,
  'ADMINISTRATOR': 8,
  'MANAGE_CHANNELS': 16,
  'MANAGE_GUILD': 32,
  'ADD_REACTIONS': 64,
  'VIEW_AUDIT_LOG': 128,
  'PRIORITY_SPEAKER': 256,
  'VIEW_CHANNEL': 1024,
  'READ_MESSAGES': 1024,
  'SEND_MESSAGES': 2048,
  'SEND_TTS_MESSAGES': 4096,
  'MANAGE_MESSAGES': 8192,
  'EMBED_LINKS': 16384,
  'ATTACH_FILES': 32768,
  'READ_MESSAGE_HISTORY': 65536,
  'MENTION_EVERYONE': 131072,
  'EXTERNAL_EMOJIS': 262144,
  'USE_EXTERNAL_EMOJIS': 262144,
  'CONNECT': 1048576,
  'SPEAK': 2097152,
  'MUTE_MEMBERS': 4194304,
  'DEAFEN_MEMBERS': 8388608,
  'MOVE_MEMBERS': 16777216,
  'USE_VAD': 33554432,
  'CHANGE_NICKNAME': 67108864,
  'MANAGE_NICKNAMES': 134217728,
  'MANAGE_ROLES': 268435456,
  'MANAGE_ROLES_OR_PERMISSIONS': 268435456,
  'MANAGE_WEBHOOKS': 536870912,
  'MANAGE_EMOJIS': 1073741824
};

Permissions convertPermissions(int permNumber) {
  var result = {};
  for (var entry in permissions.entries) {
    result[entry.key] = permNumber & entry.value != 0;
  }
  return Permissions._fromMap(result);
}

class Permissions {
  Map _permissions;

  Map get map => _permissions;

  bool CREATE_INSTANT_INVITE,
      KICK_MEMBERS,
      BAN_MEMBERS,
      ADMINISTRATOR,
      MANAGE_CHANNELS,
      MANAGE_GUILD,
      ADD_REACTIONS,
      VIEW_AUDIT_LOG,
      PRIORITY_SPEAKER,
      VIEW_CHANNEL,
      READ_MESSAGES,
      SEND_MESSAGES,
      SEND_TTS_MESSAGES,
      MANAGE_MESSAGES,
      EMBED_LINKS,
      ATTACH_FILES,
      READ_MESSAGE_HISTORY,
      MENTION_EVERYONE,
      EXTERNAL_EMOJIS,
      USE_EXTERNAL_EMOJIS,
      CONNECT,
      SPEAK,
      MUTE_MEMBERS,
      DEAFEN_MEMBERS,
      MOVE_MEMBERS,
      USE_VAD,
      CHANGE_NICKNAME,
      MANAGE_NICKNAMES,
      MANAGE_ROLES,
      MANAGE_ROLES_OR_PERMISSIONS,
      MANAGE_WEBHOOKS,
      MANAGE_EMOJIS;

  Permissions._fromMap(Map permissions) {
    _permissions = permissions;
    CREATE_INSTANT_INVITE = permissions['CREATE_INSTANT_INVITE'];
    KICK_MEMBERS = permissions['KICK_MEMBERS'];
    BAN_MEMBERS = permissions['BAN_MEMBERS'];
    ADMINISTRATOR = permissions['ADMINISTRATOR'];
    MANAGE_CHANNELS = permissions['MANAGE_CHANNELS'];
    MANAGE_GUILD = permissions['MANAGE_GUILD'];
    ADD_REACTIONS = permissions['ADD_REACTIONS'];
    VIEW_AUDIT_LOG = permissions['VIEW_AUDIT_LOG'];
    PRIORITY_SPEAKER = permissions['PRIORITY_SPEAKER'];
    VIEW_CHANNEL = permissions['VIEW_CHANNEL'];
    READ_MESSAGES = permissions['READ_MESSAGES'];
    SEND_MESSAGES = permissions['SEND_MESSAGES'];
    SEND_TTS_MESSAGES = permissions['SEND_TTS_MESSAGES'];
    MANAGE_MESSAGES = permissions['MANAGE_MESSAGES'];
    EMBED_LINKS = permissions['EMBED_LINKS'];
    ATTACH_FILES = permissions['ATTACH_FILES'];
    READ_MESSAGE_HISTORY = permissions['READ_MESSAGE_HISTORY'];
    MENTION_EVERYONE = permissions['MENTION_EVERYONE'];
    EXTERNAL_EMOJIS = permissions['EXTERNAL_EMOJIS'];
    USE_EXTERNAL_EMOJIS = permissions['USE_EXTERNAL_EMOJIS'];
    CONNECT = permissions['CONNECT'];
    SPEAK = permissions['SPEAK'];
    MUTE_MEMBERS = permissions['MUTE_MEMBERS'];
    DEAFEN_MEMBERS = permissions['DEAFEN_MEMBERS'];
    MOVE_MEMBERS = permissions['MOVE_MEMBERS'];
    USE_VAD = permissions['USE_VAD'];
    CHANGE_NICKNAME = permissions['CHANGE_NICKNAME'];
    MANAGE_NICKNAMES = permissions['MANAGE_NICKNAMES'];
    MANAGE_ROLES = permissions['MANAGE_ROLES'];
    MANAGE_ROLES_OR_PERMISSIONS = permissions['MANAGE_ROLES_OR_PERMISSIONS'];
    MANAGE_WEBHOOKS = permissions['MANAGE_WEBHOOKS'];
    MANAGE_EMOJIS = permissions['MANAGE_EMOJIS'];
  }

  @override
  String toString() {
    return map.toString();
  }

}
