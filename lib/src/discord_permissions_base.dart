/// Different permissions
const permissions = {
  /// Allows creation of instant invites
  'CREATE_INSTANT_INVITE': 1,

  /// Allows kicking members
  'KICK_MEMBERS': 2,

  /// Allows banning members
  'BAN_MEMBERS': 4,

  /// Allows all permissions and bypasses channel permission overwrites
  'ADMINISTRATOR': 8,

  /// Allows management and editing of channels
  'MANAGE_CHANNELS': 16,

  /// Allows management and editing of the guild
  'MANAGE_GUILD': 32,

  /// Allows for the addition of reactions to messages
  'ADD_REACTIONS': 64,

  /// Allows for viewing of audit logs
  'VIEW_AUDIT_LOG': 128,

  /// Allows for using priority speaker in a voice channel
  'PRIORITY_SPEAKER': 256,

  /// Allows the user to go live
  'VIEW_CHANNEL': 1024,

  /// Allows guild members to view a channel, which includes reading messages in text channels
  'READ_MESSAGES': 1024,

  /// Allows for sending messages in a channel
  'SEND_MESSAGES': 2048,

  /// Allows for sending of /tts messages
  'SEND_TTS_MESSAGES': 4096,

  /// Allows for deletion of other users messages
  'MANAGE_MESSAGES': 8192,

  /// Links sent by users with this permission will be auto-embedded
  'EMBED_LINKS': 16384,

  /// Allows for uploading images and files
  'ATTACH_FILES': 32768,

  /// Allows for reading of message history
  'READ_MESSAGE_HISTORY': 65536,

  /// Allows for using the @everyone tag to notify all users in a channel, and the @here tag to notify all online users in a channel
  'MENTION_EVERYONE': 131072,

  /// Allows the usage of custom emojis from other servers
  'EXTERNAL_EMOJIS': 262144,

  /// Allows for viewing guild insights
  'USE_EXTERNAL_EMOJIS': 262144,

  /// Allows for joining of a voice channel
  'CONNECT': 1048576,

  /// Allows for speaking in a voice channel
  'SPEAK': 2097152,

  /// Allows for muting members in a voice channel
  'MUTE_MEMBERS': 4194304,

  /// Allows for deafening of members in a voice channel
  'DEAFEN_MEMBERS': 8388608,

  /// Allows for moving of members between voice channels
  'MOVE_MEMBERS': 16777216,

  /// Allows for using voice-activity-detection in a voice channel
  'USE_VAD': 33554432,

  /// Allows for modification of own nickname
  'CHANGE_NICKNAME': 67108864,

  /// Allows for modification of other users nicknames
  'MANAGE_NICKNAMES': 134217728,

  /// Allows management and editing of roles
  'MANAGE_ROLES': 268435456,

  /// Allows management and editing of roles or permissions
  'MANAGE_ROLES_OR_PERMISSIONS': 268435456,

  /// Allows management and editing of webhooks
  'MANAGE_WEBHOOKS': 536870912,

  /// Allows management and editing of emojis
  'MANAGE_EMOJIS': 1073741824
};

/// Calculates all the permissions and returns a mapped object.
Permissions convertPermissions(int permNumber) {
  var result = {};
  for (var entry in permissions.entries) {
    result[entry.key] = permNumber & entry.value != 0;
  }
  return Permissions._fromMap(result);
}

/// All the permissions as mapped object.
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

  /// Needs a pre calculated map.
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

  /// Uses the map for better console output
  @override
  String toString() {
    return map.toString();
  }
}
