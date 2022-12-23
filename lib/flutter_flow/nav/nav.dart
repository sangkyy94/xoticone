import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/firebase_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  XOTICONEv2FirebaseUser? initialUser;
  XOTICONEv2FirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(XOTICONEv2FirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? NavBarPage() : SignupWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : SignupWidget(),
          routes: [
            FFRoute(
              name: 'Login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'signup',
              path: 'signup',
              builder: (context, params) => SignupWidget(),
            ),
            FFRoute(
              name: 'Loggedin',
              path: 'loggedin',
              builder: (context, params) => LoggedinWidget(),
            ),
            FFRoute(
              name: 'home',
              path: 'home',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'home')
                  : HomeWidget(),
            ),
            FFRoute(
              name: 'SearchStrain',
              path: 'searchStrain',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'SearchStrain')
                  : SearchStrainWidget(),
            ),
            FFRoute(
              name: 'NearMe',
              path: 'nearMe',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'NearMe')
                  : NearMeWidget(),
            ),
            FFRoute(
              name: 'Mingle',
              path: 'mingle',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'Mingle')
                  : MingleWidget(),
            ),
            FFRoute(
              name: 'Setting',
              path: 'setting',
              builder: (context, params) => SettingWidget(),
            ),
            FFRoute(
              name: 'strainUpload',
              path: 'strainUpload',
              builder: (context, params) => StrainUploadWidget(),
            ),
            FFRoute(
              name: 'SearchStore',
              path: 'searchStore',
              builder: (context, params) => SearchStoreWidget(
                user: params.getParam(
                    'user', ParamType.DocumentReference, false, 'users'),
                searchKeyword:
                    params.getParam('searchKeyword', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'StoreListView',
              path: 'storeListView',
              builder: (context, params) => StoreListViewWidget(
                suburbRef: params.getParam(
                    'suburbRef', ParamType.DocumentReference, false, 'Suburbs'),
              ),
            ),
            FFRoute(
              name: 'storebystrain',
              path: 'storebystrain',
              builder: (context, params) => StorebystrainWidget(
                storebystrainRef: params.getParam('storebystrainRef',
                    ParamType.DocumentReference, false, 'Stores'),
                strainRef: params.getParam(
                    'strainRef', ParamType.DocumentReference, false, 'strains'),
              ),
            ),
            FFRoute(
              name: 'StoreDetailView',
              path: 'storeDetailView',
              builder: (context, params) => StoreDetailViewWidget(
                storeRef: params.getParam(
                    'storeRef', ParamType.DocumentReference, false, 'Stores'),
              ),
            ),
            FFRoute(
              name: 'NotificationList',
              path: 'notificationList',
              builder: (context, params) => NotificationListWidget(
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'SuburbList',
              path: 'suburbList',
              builder: (context, params) => SuburbListWidget(
                cityRef: params.getParam(
                    'cityRef', ParamType.DocumentReference, false, 'Cities'),
              ),
            ),
            FFRoute(
              name: 'Noti_Details',
              path: 'notiDetails',
              builder: (context, params) => NotiDetailsWidget(),
            ),
            FFRoute(
              name: 'Admin_Main',
              path: 'adminMain',
              builder: (context, params) => AdminMainWidget(),
            ),
            FFRoute(
              name: 'MyProfile',
              path: 'myProfile',
              builder: (context, params) => MyProfileWidget(
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'Product_Upload',
              path: 'productUpload',
              asyncParams: {
                'strainRef': getDoc('strains', StrainsRecord.serializer),
                'storeRef': getDoc('Stores', StoresRecord.serializer),
              },
              builder: (context, params) => ProductUploadWidget(
                strainRef: params.getParam('strainRef', ParamType.Document),
                storeRef: params.getParam('storeRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Upload_SelectStrain',
              path: 'uploadSelectStrain',
              asyncParams: {
                'storeRef': getDoc('Stores', StoresRecord.serializer),
              },
              builder: (context, params) => UploadSelectStrainWidget(
                storeRef: params.getParam('storeRef', ParamType.Document),
                productsRef: params.getParam('productsRef',
                    ParamType.DocumentReference, false, 'Products'),
              ),
            ),
            FFRoute(
              name: 'Store_MGT_Main',
              path: 'storeMGTMain',
              builder: (context, params) => StoreMGTMainWidget(),
            ),
            FFRoute(
              name: 'Store_Productlist',
              path: 'storeProductlist',
              asyncParams: {
                'storeRef': getDoc('Stores', StoresRecord.serializer),
              },
              builder: (context, params) => StoreProductlistWidget(
                storeRef: params.getParam('storeRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'StoreReviewPost',
              path: 'storeReviewPost',
              builder: (context, params) => StoreReviewPostWidget(
                storeRef: params.getParam(
                    'storeRef', ParamType.DocumentReference, false, 'Stores'),
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'RewardCenter',
              path: 'rewardCenter',
              builder: (context, params) => RewardCenterWidget(
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'StampCoupon',
              path: 'stampCoupon',
              asyncParams: {
                'couponRef':
                    getDoc('Stamp_Coupons', StampCouponsRecord.serializer),
              },
              builder: (context, params) => StampCouponWidget(
                storeRef: params.getParam(
                    'storeRef', ParamType.DocumentReference, false, 'Stores'),
                couponRef: params.getParam('couponRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'ProductDetailsView',
              path: 'productDetailsView',
              asyncParams: {
                'productRef': getDoc('Products', ProductsRecord.serializer),
                'storeRef': getDoc('Stores', StoresRecord.serializer),
              },
              builder: (context, params) => ProductDetailsViewWidget(
                productRef: params.getParam('productRef', ParamType.Document),
                storeRef: params.getParam('storeRef', ParamType.Document),
                strainRef: params.getParam(
                    'strainRef', ParamType.DocumentReference, false, 'strains'),
              ),
            ),
            FFRoute(
              name: 'Store_StoreList_Product',
              path: 'storeStoreListProduct',
              builder: (context, params) => StoreStoreListProductWidget(
                ownerRef: params.getParam(
                    'ownerRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'ProductReviewPost',
              path: 'productReviewPost',
              builder: (context, params) => ProductReviewPostWidget(
                productref: params.getParam('productref',
                    ParamType.DocumentReference, false, 'Products'),
              ),
            ),
            FFRoute(
              name: 'MyPuffStoryPost',
              path: 'myPuffStoryPost',
              builder: (context, params) => MyPuffStoryPostWidget(
                storeRef: params.getParam(
                    'storeRef', ParamType.DocumentReference, false, 'Stores'),
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'StrainDetails',
              path: 'strainDetails',
              builder: (context, params) => StrainDetailsWidget(
                storebystrainRef: params.getParam('storebystrainRef',
                    ParamType.DocumentReference, false, 'Stores'),
                strainRef: params.getParam(
                    'strainRef', ParamType.DocumentReference, false, 'strains'),
              ),
            ),
            FFRoute(
              name: 'MyCoupon',
              path: 'myCoupon',
              builder: (context, params) => MyCouponWidget(
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'NotificationCenter',
              path: 'notificationCenter',
              builder: (context, params) => NotificationCenterWidget(
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'My_Referee_List',
              path: 'myRefereeList',
              builder: (context, params) => MyRefereeListWidget(
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'My_Peers',
              path: 'myPeers',
              builder: (context, params) => MyPeersWidget(
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'My_Favorites',
              path: 'myFavorites',
              builder: (context, params) => MyFavoritesWidget(),
            ),
            FFRoute(
              name: 'Notice',
              path: 'notice',
              builder: (context, params) => NoticeWidget(),
            ),
            FFRoute(
              name: 'MemberView',
              path: 'memberView',
              asyncParams: {
                'userRef': getDoc('users', UsersRecord.serializer),
              },
              builder: (context, params) => MemberViewWidget(
                userRef: params.getParam('userRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Notice_Details',
              path: 'noticeDetails',
              builder: (context, params) => NoticeDetailsWidget(
                noticeRef: params.getParam(
                    'noticeRef', ParamType.DocumentReference, false, 'Notice'),
              ),
            ),
            FFRoute(
              name: 'Store_Couponl_Dl_User_ist',
              path: 'storeCouponlDlUserIst',
              builder: (context, params) => StoreCouponlDlUserIstWidget(
                storeRef: params.getParam(
                    'storeRef', ParamType.DocumentReference, false, 'Stores'),
              ),
            ),
            FFRoute(
              name: 'Edit_Profile',
              path: 'editProfile',
              asyncParams: {
                'userRef': getDoc('users', UsersRecord.serializer),
              },
              builder: (context, params) => EditProfileWidget(
                userRef: params.getParam('userRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'QRscanforShop',
              path: 'qRscanforShop',
              builder: (context, params) => QRscanforShopWidget(
                storeRef: params.getParam(
                    'storeRef', ParamType.DocumentReference, false, 'Stores'),
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'Smokers_Around_Me',
              path: 'smokersAroundMe',
              builder: (context, params) => SmokersAroundMeWidget(),
            ),
            FFRoute(
              name: 'MyPuffStorEdit',
              path: 'myPuffStorEdit',
              asyncParams: {
                'puffSttoryRef':
                    getDoc('MyPuffStory', MyPuffStoryRecord.serializer),
              },
              builder: (context, params) => MyPuffStorEditWidget(
                storeRef: params.getParam(
                    'storeRef', ParamType.DocumentReference, false, 'Stores'),
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
                puffSttoryRef:
                    params.getParam('puffSttoryRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'NearMeCopy',
              path: 'nearMeCopy',
              builder: (context, params) => NearMeCopyWidget(),
            ),
            FFRoute(
              name: 'CS_Post',
              path: 'cSPost',
              builder: (context, params) => CSPostWidget(
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'CS_Center_ForCustomer',
              path: 'cSCenterForCustomer',
              builder: (context, params) => CSCenterForCustomerWidget(
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'CS_Details_ForCustomer',
              path: 'cSDetailsForCustomer',
              builder: (context, params) => CSDetailsForCustomerWidget(
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
                csRef: params.getParam(
                    'csRef', ParamType.DocumentReference, false, 'CS_DB'),
              ),
            ),
            FFRoute(
              name: 'Store_StoreList_Coupon',
              path: 'storeStoreListCoupon',
              builder: (context, params) => StoreStoreListCouponWidget(
                ownerRef: params.getParam(
                    'ownerRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'Product_Edit',
              path: 'productEdit',
              asyncParams: {
                'strainRef': getDoc('strains', StrainsRecord.serializer),
                'storeRef': getDoc('Stores', StoresRecord.serializer),
                'productRef': getDoc('Products', ProductsRecord.serializer),
              },
              builder: (context, params) => ProductEditWidget(
                strainRef: params.getParam('strainRef', ParamType.Document),
                storeRef: params.getParam('storeRef', ParamType.Document),
                productRef: params.getParam('productRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Puff_Story_Details',
              path: 'puffStoryDetails',
              asyncParams: {
                'puffstoryRef':
                    getDoc('MyPuffStory', MyPuffStoryRecord.serializer),
              },
              builder: (context, params) => PuffStoryDetailsWidget(
                puffstoryRef:
                    params.getParam('puffstoryRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'PuffStoryReviewPost',
              path: 'puffStoryReviewPost',
              asyncParams: {
                'puffstoryRef':
                    getDoc('MyPuffStory', MyPuffStoryRecord.serializer),
              },
              builder: (context, params) => PuffStoryReviewPostWidget(
                puffstoryRef:
                    params.getParam('puffstoryRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'CS_Center_ForAdmin',
              path: 'cSCenterForAdmin',
              builder: (context, params) => CSCenterForAdminWidget(
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
              ),
            ),
            FFRoute(
              name: 'CS_Details_ForAdmin',
              path: 'cSDetailsForAdmin',
              builder: (context, params) => CSDetailsForAdminWidget(
                userRef: params.getParam(
                    'userRef', ParamType.DocumentReference, false, 'users'),
                csRef: params.getParam(
                    'csRef', ParamType.DocumentReference, false, 'CS_DB'),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    String? collectionName,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionName);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/signup';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Loading_Page.png',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
