import 'package:flutter/material.dart';
import 'package:logger/logger.dart' as log;
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

const streamKey = 'xkt8ce5yrf7n'; // TODO: input your Stream app key here.

var logger = log.Logger();

extension StreamChatContext on BuildContext {
  ///  the current user image.
  String? get currentUserImage => currentUser!.image;

  /// the current user.
  User? get currentUser => StreamChatCore.of(this).currentUser;
}