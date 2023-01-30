import 'package:flutter/material.dart';

class MKeys {
  MKeys._();

  static const authUser = 'auth_user_';
  static const authCredentials = 'auth_credentials_';
  static const authToken = 'auth_token_';
  static const profile = 'auth_profile_';
  static const onboardingInit = 'meno_initScreen_';
  static const avatarKey = 'avatar_key_';
  static const bottomNavIndex = '_bottom_nav_index_';
  static const liveBroadcasts = '_live_broadcasts_';
  static const allBibleBooks = '_all_bible_books_';
  static const allBibleTranslations = '_all_bible_translations_';

  static final homeScaffoldKey = GlobalKey<ScaffoldState>();
  static final streamScaffoldKey = GlobalKey<ScaffoldState>();
  static final layoutScaffoldKey = GlobalKey<ScaffoldState>();
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  // Socket keys
  static const String connect = "connect";
  static const String disconnect = "disconnect";
  static const String eventConnectTimeout = "connect_timeout";
  static const String onSocketError = "onSocketError";

  // Audio Stream events
  static const String startedBroadcast = 'startedBroadcast';
  static const String endBroadcast = 'endBroadcast';
  static const String joinBroadcast = 'joinBroadcast';
  static const String leaveBroadcast = 'leaveBroadcast';
  static const String getLiveBroadcast = 'getLiveBroadcast';
  static const String getLiveBroadcasts = 'getLiveBroadcasts';
  static const String getLiveBroadcastListeners = 'getLiveBroadcastListeners';
  static const String getNumberOfLiveBroadcasts = 'getNumberOfLiveBroadcasts';
  static const String getNumberOfBroadcastListeners =
      'getNumberOfBroadcastListeners';

  static const String numberOfLiveBroadcasts = 'numberOfLiveBroadcasts';
  static const String newBroadcastListener = 'newBroadcastListener';
  static const String numberOfLiveListeners = 'numberOfLiveListeners';
  static const String newBroadcast = 'newBroadcast';
  static const String endedBroadcast = 'endedBroadcast';

  static const String stopBroadcast = 'stopBroadcast';
}
