import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';
import 'package:logger/logger.dart' as log;

const streamKey = 'czn8sjtx88jb';
var logger = log.Logger();

extension StreamChatContext on BuildContext {
  String? get currentUserImage => StreamChatCore.of(this).currentUser!.image;

  User? get currentUser => StreamChatCore.of(this).currentUser;
}
